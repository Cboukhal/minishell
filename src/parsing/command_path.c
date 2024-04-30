/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   command_path.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:17:15 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:17:16 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

char	*search_command_path(char **path, char *cmd_name)
{
	int		i;
	char	*tmp;
	char	*cmd_path;

	i = 0;
	if (!path)
		return (NULL);
	while (path[i])
	{
		tmp = ft_strjoin(path[i], cmd_name);
		if (access(tmp, F_OK) == 0)
		{
			cmd_path = ft_strdup(tmp);
			errno = 0;
			free(tmp);
			return (cmd_path);
		}
		free(tmp);
		i++;
	}
	return (NULL);
}

char	*get_command_path(char **path, char *cmd_name)
{
	int		i;
	char	*cmd_path;

	i = 0;
	if (!path || !cmd_name || is_builtin(cmd_name))
		return (NULL);
	if (access(cmd_name, F_OK) == 0)
	{
		cmd_path = ft_strdup(cmd_name);
		return (cmd_path);
	}
	cmd_path = search_command_path(path, cmd_name);
	errno = 0;
	return (cmd_path);
}
