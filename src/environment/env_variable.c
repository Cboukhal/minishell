/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   env_variable.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:05:17 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:05:19 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

int	get_name_length(char *envp)
{
	int	i;

	i = 0;
	while (envp[i] && envp[i] != '=')
		i++;
	return (i);
}

char	*get_variable_name(char *envp)
{
	int		i;
	int		len;
	char	*name;

	len = get_name_length(envp);
	name = malloc(len + 1);
	i = 0;
	while (i < len)
	{
		name[i] = envp[i];
		i++;
	}
	name[i] = '\0';
	return (name);
}

char	*get_variable_value(char *envp)
{
	int		i;
	int		j;
	char	*value;

	i = 0;
	while (envp[i] && envp[i] != '=')
		i++;
	i++;
	value = malloc(ft_strlen(&envp[i]) + 1);
	j = 0;
	while (envp[i])
	{
		value[j] = envp[i];
		j++;
		i++;
	}
	value[j] = '\0';
	return (value);
}
