/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   exec_pipe.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/23 17:40:41 by agadea            #+#    #+#             */
/*   Updated: 2024/03/28 19:48:02 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	init_cmd_pipe(t_pipe **pipe)
{
	(*pipe) = malloc(sizeof(t_pipe));
	if (!(*pipe))
	{
		perror("malloc");
		return ;
	}
	(*pipe)->read = NULL;
	(*pipe)->write = NULL;
	(*pipe)->to_close = NULL;
}

void	manage_parent_pipe(t_ast **ast)
{
	if ((*ast)->node)
	{
		if ((*ast)->node->pipe_fd
			&& (((*ast)->node->left && (*ast)->node->left->type != builtin)
				|| ((*ast)->node->right
					&& (*ast)->node->right->type != builtin)))
		{
			close((*ast)->node->pipe_fd[0]);
			close((*ast)->node->pipe_fd[1]);
		}
	}
}

void	setup_ast_next(t_ast **ast)
{
	if ((*ast)->next && is_next_node_pipeline((*ast)->next))
	{
		(*ast)->next->node->pipe_fd = malloc(sizeof(int) * 2);
		if (pipe((*ast)->next->node->pipe_fd) != 0)
			perror("pipe");
		(*ast)->node->right->pipe->write = (*ast)->next->node->pipe_fd;
		(*ast)->node->left->pipe->to_close = (*ast)->next->node->pipe_fd;
	}
}

void	setup_pipe(t_ast **ast)
{
	if (!(*ast)->node->pipe_fd && (*ast)->node->type != simple_command)
	{
		(*ast)->node->pipe_fd = malloc(sizeof(int) * 2);
		if (!(*ast)->node->pipe_fd)
		{
			perror("malloc");
			return ;
		}
		if (pipe((*ast)->node->pipe_fd) != 0)
			perror("pipe");
	}
	if ((*ast)->node->left && !(*ast)->node->left->pipe)
	{
		init_cmd_pipe(&(*ast)->node->left->pipe);
		(*ast)->node->left->pipe->write = (*ast)->node->pipe_fd;
	}
	if ((*ast)->node->right && !(*ast)->node->right->pipe)
	{
		init_cmd_pipe(&(*ast)->node->right->pipe);
		(*ast)->node->right->pipe->read = (*ast)->node->pipe_fd;
	}
	(*ast)->node->right->pipe->read = (*ast)->node->pipe_fd;
	setup_ast_next(ast);
}

void	exec_pipe(t_minishell **minishell, t_ast **ast, int i)
{
	setup_pipe(ast);
	if (i == 0)
	{
		exec_command(minishell, &(*ast)->node->left);
		exec_command(minishell, &(*ast)->node->right);
	}
	else
		exec_command(minishell, &(*ast)->node->right);
	manage_parent_pipe(ast);
}
