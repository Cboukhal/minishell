/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   pwd.c                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/08 16:20:26 by agadea            #+#    #+#             */
/*   Updated: 2024/03/28 17:59:51 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

/*
	pwd [-LP]
        	Print the absolute pathname of the current working
        	directory.  The pathname printed contains no symbolic
        	links if the -P option is supplied or the -o physical
        	option to the set builtin command is enabled.  If the -L
        	option is used, the pathname printed may contain symbolic
        	links.  The return status is 0 unless an error occurs
        	while reading the name of the current directory or an
        	invalid option is supplied.
*/

t_env	*get_env_pwd(t_env **env)
{
	t_env	*index;

	index = (*env);
	while (index && errno == 0)
	{
		if (ft_strncmp(index->name, "PWD", 3) == 0)
			return (index);
		index = index->next;
	}
	return (NULL);
}

void	write_current_directory(int fd, const char *cwd)
{
	size_t	len;

	len = ft_strlen(cwd);
	write(fd, cwd, len);
	write(fd, "\n", 1);
}

void	update_environment_state(t_minishell *minishell, t_cmd *cmd, int i)
{
	int		fd;
	char	*cwd;
	t_env	*pwd;
	t_env	*oldpwd;

	(void)cmd;
	fd = 1;
	cwd = getcwd(NULL, PATH_MAX);
	pwd = get_env_pwd(&minishell->env);
	if (pwd)
	{
		oldpwd = get_oldpwd(&minishell->env, pwd);
		if (ft_strncmp(pwd->name, oldpwd->name, ft_strlen(pwd->name)) == 0)
			free(cwd);
		else
			pwd->value = cwd;
	}
	if (cmd->pipe && cmd->pipe->write)
		fd = cmd->pipe->write[1];
	if (i == 0)
		write_current_directory(fd, cwd);
}

void	pwd(t_minishell *minishell, t_cmd *cmd)
{
	update_environment_state(minishell, cmd, 0);
}
