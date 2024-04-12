/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ast_node.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/25 18:34:47 by agadea            #+#    #+#             */
/*   Updated: 2024/03/28 17:04:54 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	init_ast_node_attr(t_ast_node **node)
{
	(*node)->type = 0;
	(*node)->left = NULL;
	(*node)->right = NULL;
	(*node)->pipe_fd = NULL;
	(*node)->exit_status = 0;
}

t_ast_node	*get_syntax_tree_node(t_minishell *minishell,
		t_token **token, int i)
{
	t_ast_node	*node;
	t_token		*index;

	node = malloc(sizeof(t_ast_node));
	if (!node)
		return (perror("malloc"), NULL);
	init_ast_node_attr(&node);
	index = (*token);
	while ((*token) && errno == 0)
	{
		if (is_operator_token((*token)))
		{
			node->type = (*token)->type;
			(*token) = (*token)->next;
			if (i == 0)
				node->left = get_command(minishell, &index, i);
			node->right = get_command(minishell, token, i + 1);
			return (node);
		}
		(*token) = (*token)->next;
	}
	printf("here\n");
	return (node);
}
