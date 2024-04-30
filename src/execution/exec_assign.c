/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   exec_assign.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:07:20 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:07:22 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	add_local_var(t_var **local_table, t_var **new)
{
	t_var	*index;

	index = (*local_table);
	while (index)
	{
		if (index->next == NULL)
		{
			index->next = (*new);
			return ;
		}
		index = index->next;
	}
}

int	search_and_update_var(t_var **local_search, t_var **var)
{
	while ((*local_search))
	{
		if (ft_strncmp((*var)->name, (*local_search)->name,
				ft_strlen((*var)->name) == 0))
		{
			free((*local_search)->value);
			(*local_search)->value = (*var)->value;
			return (success);
		}
		(*local_search) = (*local_search)->next;
	}
	return (failure);
}

void	assign_variable(t_minishell **minishell, t_cmd *cmd)
{
	t_var	*cmd_var;
	t_var	*local_search;

	if ((*minishell)->local)
	{
		cmd_var = cmd->assign;
		while (cmd_var)
		{
			local_search = (*minishell)->local;
			if (search_and_update_var(&local_search, &cmd_var) == failure)
				add_local_var(&(*minishell)->local, &cmd_var);
			cmd_var = cmd_var->next;
		}
	}
	else
		(*minishell)->local = cmd->assign;
	print_local_var((*minishell)->local);
}
