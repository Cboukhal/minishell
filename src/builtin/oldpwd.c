/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   oldpwd.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/26 11:47:42 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/26 11:47:50 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	get_oldpwd_attr(t_env **oldpwd, t_env **pwd)
{
	if (!(*oldpwd)->name)
	{
		(*oldpwd)->name = malloc(7);
		if (!(*oldpwd)->name)
		{
			perror("malloc");
			return ;
		}
		ft_strlcpy((*oldpwd)->name, "OLDPWD", 7);
	}
	if ((*oldpwd)->value)
		free((*oldpwd)->value);
	(*oldpwd)->value = (*pwd)->value;
}

t_env	*get_oldpwd(t_env **env, t_env *pwd)
{
	t_env	*oldpwd;
	t_env	*index;

	oldpwd = NULL;
	index = (*env);
	while (index)
	{
		if (ft_strncmp(index->name, "OLDPWD", 6) == 0)
			oldpwd = index;
		index = index->next;
	}
	if (!oldpwd)
	{
		oldpwd = malloc(sizeof(t_env));
		if (!oldpwd)
			return (perror("malloc"), NULL);
		init_env_var_attr(&oldpwd);
	}
	get_oldpwd_attr(&oldpwd, &pwd);
	return (oldpwd);
}
