/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   builtin_utils.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/28 18:39:33 by agadea            #+#    #+#             */
/*   Updated: 2024/04/02 21:40:14 by agadea           ###   ########.fr       */
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

bool	is_valid_variable(char *arg)
{
	int	i;

	if (!ft_isalpha(arg[0]) && arg[0] != '_')
		return (false);
	i = 0;
	while (arg[i] && (ft_isalnum(arg[i]) || arg[i] == '_'))
	{
		i++;
		if ((arg[i] == '+' && arg[i + 1] == '=') || arg[i] == '=')
			return (true);
	}
	return (false);
}
