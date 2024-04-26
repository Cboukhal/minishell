/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   print2.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/27 22:00:02 by agadea            #+#    #+#             */
/*   Updated: 2024/03/28 16:25:18 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	print_token(t_token *stream)
{
	int		i;
	t_token	*index;

	i = 0;
	index = stream;
	while (index)
	{
		ft_printf("Token[%d]=%s\n", i, index->lexeme);
		index = index->next;
		i++;
	}
}

void	print_cmd_arg(char **arg)
{
	int	i;

	i = 0;
	while (arg[i])
	{
		printf("%s\n", arg[i]);
		i++;
	}
}

void	print_cmd_table(t_cmd *cmd_table)
{
	t_cmd	*cmd;
	t_arg	*arg;

	cmd = cmd_table;
	while (cmd)
	{
		arg = cmd->arg;
		ft_printf("COMMAND TYPE = %d\n", cmd->type);
		while (arg)
		{
			ft_printf("%s\n", arg->value);
			arg = arg->next;
		}
		cmd = cmd->next;
	}
}

void	print_cmd_redir(t_redir *redir)
{
	if (redir->infile)
	{
		while (redir->infile)
		{
			printf("%s\n", redir->infile->name);
			redir->infile = redir->infile->next;
		}
	}
	if (redir->outfile)
	{
		while (redir->outfile)
		{
			printf("%s\n", redir->outfile->name);
			redir->outfile = redir->outfile->next;
		}
	}
}

void	print_syntax_tree(t_ast *root)
{
	ft_printf("Program\n|");
	while (root)
	{
		ft_printf("_");
		ft_printf("%d\n", root->node->type);
		if (root->node)
		{
			if (root->node->left)
				print_cmd_arg(root->node->left->arg_array);
			if (root->node->right)
				print_cmd_arg(root->node->right->arg_array);
		}
		ft_printf("\n");
		root = root->next;
	}
}
