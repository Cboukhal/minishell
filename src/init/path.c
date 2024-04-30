/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   path.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:09:21 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:09:23 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

int	size(char **arg)
{
	int	i;

	i = 0;
	while (arg[i])
		i++;
	return (i);
}

static char	**add_slash(char **path)
{
	size_t	i;
	char	**path_with_slash;

	i = 0;
	path_with_slash = malloc(sizeof(char *) * (size(path) + 1));
	if (!path_with_slash)
		return (perror("malloc"), NULL);
	while (path[i])
	{
		path_with_slash[i] = ft_strjoin(path[i], "/");
		i++;
	}
	path_with_slash[i] = NULL;
	free_char_array(path);
	return (path_with_slash);
}

char	**extract_path(char *path)
{
	size_t	i;
	size_t	j;
	char	*path_copy;
	char	**path_splitted;

	i = 5;
	j = 0;
	path_splitted = NULL;
	if (!path)
		return (NULL);
	path_copy = malloc(ft_strlen(&path[i]) + 1);
	if (!path_copy)
		return (perror("malloc"), NULL);
	while (path[i])
	{
		path_copy[j] = path[i];
		i++;
		j++;
	}
	path_copy[j] = '\0';
	path_splitted = ft_split(path_copy, ':');
	path_splitted = add_slash(path_splitted);
	free(path_copy);
	return (path_splitted);
}

bool	is_path(t_env *env)
{
	if (!env)
		return (false);
	if (ft_strlen(env->name) == 4
		&& ft_strncmp(env->name, "PATH", 4) == 0)
		return (true);
	return (false);
}

char	**get_path(t_env *env)
{
	t_env	*index;
	char	**path;

	path = NULL;
	index = env;
	while (index && is_path(index) == false)
		index = index->next;
	if (is_path(index) == true)
	{
		path = extract_path(index->value);
		return (path);
	}
	return (NULL);
}
