/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   cd.c                                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/08 16:20:13 by agadea            #+#    #+#             */
/*   Updated: 2024/03/28 18:24:36 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

/*
	cd [-L|[-P [-e]] [-@]] [dir]
        Change the current directory to dir.  if dir is not
        supplied, the value of the HOME shell variable is the
        default.  The variable CDPATH defines the search path for
        the directory containing dir: each directory name in
        CDPATH is searched for dir.  Alternative directory names
        in CDPATH are separated by a colon (:).  A null directory
        name in CDPATH is the same as the current directory, i.e.,
        ``.''.  If dir begins with a slash (/), then CDPATH is not
        used.  The -P option causes cd to use the physical
        directory structure by resolving symbolic links while
        traversing dir and before processing instances of .. in
        dir (see also the -P option to the set builtin command);
        the -L option forces symbolic links to be followed by
        resolving the link after processing instances of .. in
        dir.  If .. appears in dir, it is processed by removing
        the immediately previous pathname component from dir, back
        to a slash or the beginning of dir.  If the -e option is
        supplied with -P, and the current working directory cannot
        be successfully determined after a successful directory
        change, cd will return an unsuccessful status.  On systems
        that support it, the -@ option presents the extended
        attributes associated with a file as a directory.  An
        argument of - is converted to $OLDPWD before the directory
        change is attempted.  If a non-empty directory name from
        CDPATH is used, or if - is the first argument, and the
        directory change is successful, the absolute pathname of
        the new working directory is written to the standard
        output.  If the directory change is successful, cd sets
        the value of the PWD environment variable to the new
        directory name, and sets the OLDPWD environment variable
        to the value of the current working directory before the
        change.  The return value is true if the directory was
        successfully changed; false otherwise.
*/

bool	got_too_much_arg(char **arg_array)
{
	int	i;

	i = 0;
	while (arg_array[i])
	{
		if (i > 2)
			break ;
		i++;
	}
	if (i <= 2)
		return (false);
	return (true);
}

char	*get_home_path(t_env *env)
{
	while (env)
	{
		if (ft_strncmp(env->name, "HOME", 4) == 0)
			return (env->value);
		env = env->next;
	}
	return (NULL);
}

void	cd_home(t_minishell *minishell)
{
	char	*home;

	home = get_home_path(minishell->env);
	if (!home)
	{
		ft_printf("bash: cd: HOME not set\n");
		minishell->exit_status = 1;
		return ;
	}
	if (chdir(home) != 0)
		perror(NULL);
}

void	cd(t_minishell *minishell, t_cmd *cmd)
{
	update_environment_state(minishell, cmd, 1);
	if (got_too_much_arg(cmd->arg_array))
	{
		ft_printf("bash: cd: too many arguments\n");
		minishell->exit_status = 1;
	}
	else if (cmd_arg_nbr(cmd->arg_array) == 1
		|| (cmd_arg_nbr(cmd->arg_array) == 2
			&& ft_strncmp("~", cmd->arg_array[1], 1) == 0))
		cd_home(minishell);
	// else if (chdir(cmd->arg_array[1]) != 0)
	else if (chdir(cmd->arg_array[1]) == -1)
	{
		ft_printf("bash: cd: %s: ", cmd->arg_array[1]);
		minishell->exit_status = 1;
		perror(NULL);
	}
}
