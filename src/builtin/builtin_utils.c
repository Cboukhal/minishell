/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   builtin_utils.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:01:11 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:01:21 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

int	ft_strcmp(const char *str1, const char *str2)
{
	while (*str1 && *str2 && *str1 == *str2)
	{
		str1++;
		str2++;
	}
	return (*str1 - *str2);
}

int	cmd_arg_nbr(char **arg_array)
{
	int	i;

	i = 0;
	while (arg_array[i])
		i++;
	return (i);
}

void	add_new_var_to_env(t_env **new_var, t_env **env)
{
	t_env	*index;

	index = (*env);
	while (index)
	{
		if (index->next == NULL)
		{
			index->next = (*new_var);
			return ;
		}
		index = index->next;
	}
}
