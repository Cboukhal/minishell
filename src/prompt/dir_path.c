/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   dir_path.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/10 17:22:23 by agadea            #+#    #+#             */
/*   Updated: 2024/03/25 03:14:49 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

bool	is_in_home_dir(char *cwd, int *home_length)
{
	if (ft_strncmp(cwd, "/home/", 6) == 0)
	{
		*home_length = 6;
		return (true);
	}
	else if (ft_strncmp(cwd, "/homes/", 7) == 0)
	{
		*home_length = 7;
		return (true);
	}
	return (false);
}

char	*set_dir_path_color(char *dir_path)
{
	char	*tmp;
	char	*dir_path_colorized;

	tmp = ft_strjoin(BOLD WHITE, dir_path);
	dir_path_colorized = ft_strjoin(tmp, DEFAULT);
	free(tmp);
	free(dir_path);
	return (dir_path_colorized);
}

char	*get_dir_path_from_home(char *tmp)
{
	int		i;
	int		j;
	char	*dir_path;

	i = 0;
	while (tmp[i] && tmp[i] != '/')
		i++;
	i--;
	dir_path = malloc(ft_strlen(&tmp[i]) + 1);
	j = 0;
	while (tmp[i])
	{
		dir_path[j] = tmp[i];
		j++;
		i++;
	}
	dir_path[0] = '~';
	dir_path[j] = '\0';
	return (dir_path);
}

char	*get_dir_path(void)
{
	int		i;
	char	*cwd;
	int		home_length;
	char	*dir_path;

	i = 0;
	home_length = 0;
	dir_path = NULL;
	cwd = getcwd(NULL, PATH_MAX);
	if (cwd == NULL)
		return (NULL);
	while (cwd[i])
	{
		if (is_in_home_dir(&cwd[i], &home_length))
		{
			i += home_length;
			dir_path = get_dir_path_from_home(&cwd[i]);
			dir_path = set_dir_path_color(dir_path);
			return (free(cwd), dir_path);
		}
		i++;
	}
	cwd = set_dir_path_color(cwd);
	return (cwd);
}
