/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   syntax_tree.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/20 17:16:37 by agadea            #+#    #+#             */
/*   Updated: 2024/03/29 10:14:11 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	init_ast_attr(t_ast **new)
{
	(*new)->next = NULL;
	(*new)->prev = NULL;
	(*new)->node = NULL;
}

t_ast	*get_simple_command(t_minishell *minishell)
{
	t_token	*token;
	t_ast	*root;

	token = minishell->token_stream;
	root = malloc(sizeof(t_ast));
	if (!root)
		return (perror("malloc"), NULL);
	init_ast_attr(&root);
	root->node = malloc(sizeof(t_ast_node));
	if (!root->node)
		return (perror("malloc"), root);
	init_ast_node_attr(&root->node);
	root->node->left = get_command(minishell, &token, 0);
	root->node->type = simple_command;
	return (root);
}

void	add_to_ast_list(t_ast **new, t_ast **tmp)
{
	(*new)->prev = (*tmp);
	(*new)->node->left = (*tmp)->node->left;
	(*tmp)->next = (*new);
}

t_ast	*get_syntax_tree(t_minishell *minishell)
{
	int		i;
	t_ast	*tmp;
	t_ast	*new;
	t_ast	*root;
	t_token	*token;

	i = 0;
	tmp = NULL;
	root = NULL;
	token = minishell->token_stream;
	while (i < minishell->operator_nbr && errno == 0)
	{
		new = malloc(sizeof(t_ast));
		if (!new)
			return (perror("malloc"), root);
		init_ast_attr(&new);
		new->node = get_syntax_tree_node(minishell, &token, i);
		if (!root)
			root = new;
		else
			add_to_ast_list(&new, &tmp);
		tmp = new;
		i++;
	}
	return (root);
}

void	parsing(t_minishell *minishell)
{
	minishell->path = get_path(minishell->env);
	if (minishell->token_stream && minishell->operator_nbr == 0)
		minishell->syntax_tree = get_simple_command(minishell);
	else
		minishell->syntax_tree = get_syntax_tree(minishell);
	if (minishell->path)
	{
		free_char_array(minishell->path);
		minishell->path = NULL;
	}
}
