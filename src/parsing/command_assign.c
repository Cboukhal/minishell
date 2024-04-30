/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   command_assign.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:16:24 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:16:25 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	add_command_local_var(t_var **table, t_var **var)
{
	t_var	*index;

	if ((*table))
	{
		index = (*table);
		while (index)
		{
			if (index->next == NULL)
			{
				index->next = (*var);
				return ;
			}
			index = index->next;
		}
	}
	else
		(*table) = (*var);
}

void	get_command_assign(t_token *token, t_var **cmd_table)
{
	t_var	*new;

	new = malloc(sizeof(t_var));
	if (!new)
	{
		perror("malloc");
		return ;
	}
	new->next = NULL;
	new->name = get_variable_name(token->lexeme);
	new->value = get_variable_value(token->lexeme);
	add_command_local_var(cmd_table, &new);
}
