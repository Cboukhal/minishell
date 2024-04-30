/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   free_functions.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:34:10 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:34:11 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	free_syntax_tree_node(t_ast_node *node)
{
	if (node->left)
		free_cmd(node->left);
	if (node->right)
		free_cmd(node->right);
	if (node->pipe_fd)
		free(node->pipe_fd);
	free(node);
}

void	free_syntax_tree(t_ast **syntax_tree)
{
	t_ast	*index;

	index = (*syntax_tree);
	while (index)
	{
		(*syntax_tree) = (*syntax_tree)->next;
		free_syntax_tree_node(index->node);
		if (index->next)
			index->next->node->left = NULL;
		free(index);
		index = (*syntax_tree);
	}
	free((*syntax_tree));
}

void	clean_input(t_minishell *minishell)
{
	if (minishell->input)
		free(minishell->input);
	if (minishell->syntax_tree)
	{
		free_syntax_tree(&minishell->syntax_tree);
		minishell->syntax_tree = NULL;
	}
	if (minishell->env_array)
	{
		free_char_array(minishell->env_array);
		minishell->env_array = NULL;
	}
	if (minishell->token_stream)
	{
		free_token_stream(minishell->token_stream);
		minishell->token_stream = NULL;
	}
	if (access("/tmp/heredoc", F_OK) == 0)
		unlink("/tmp/heredoc");
	errno = 0;
	minishell->operator_nbr = 0;
	if (g_signal == SIGINT)
		g_signal = 0;
}

void	clean_program(t_minishell *minishell)
{
	if (minishell->prompt)
		free(minishell->prompt);
	if (minishell->path)
		free_char_array(minishell->path);
	if (minishell->env_array)
		free_char_array(minishell->env_array);
	if (minishell->env)
		free_environment(minishell->env);
	if (minishell->syntax_tree)
		free_syntax_tree(&minishell->syntax_tree);
	if (minishell->token_stream)
		free_token_stream(minishell->token_stream);
	rl_clear_history();
}
