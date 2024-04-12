/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   echo.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/08 16:20:16 by agadea            #+#    #+#             */
/*   Updated: 2024/03/28 18:50:33 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

/*
	echo [-neE] [arg ...]
        Output the args, separated by spaces, followed by a
        newline.  The return status is 0 unless a write error
        occurs.  If -n is specified, the trailing newline is
        suppressed.  If the -e option is given, interpretation of
        the following backslash-escaped characters is enabled.
        The -E option disables the interpretation of these escape
        characters, even on systems where they are interpreted by
        default.  The xpg_echo shell option may be used to
        dynamically determine whether or not echo expands these
        escape characters by default.  echo does not interpret --
        to mean the end of options.  echo interprets the following
        escape sequences:
        \a     alert (bell)
        \b     backspace
        \c     suppress further output
        \e
        \E     an escape character
        \f     form feed
        \n     new line
        \r     carriage return
        \t     horizontal tab
        \v     vertical tab
        \\     backslash
        \0nnn  the eight-bit character whose value is the octal
                value nnn (zero to three octal digits)
        \xHH   the eight-bit character whose value is the
                hexadecimal value HH (one or two hex digits)
        \uHHHH the Unicode (ISO/IEC 10646) character whose value
                is the hexadecimal value HHHH (one to four hex
                digits)
        \UHHHHHHHH
                the Unicode (ISO/IEC 10646) character whose value
                is the hexadecimal value HHHHHHHH (one to eight hex
                digits)
*/

bool	start_n(const char *arg)
{
	size_t	i;

	i = 2;
	if (ft_strncmp(arg, "-n", ft_strlen("-n")) != 0)
		return (false);
	while (i < strlen(arg))
	{
		if (arg[i] != 'n')
			return (false);
		i++;
	}
	return (true);
}

void	handle_option_n(t_cmd *cmd, int *i, int *new_line)
{
	while (cmd->arg_array[*i] != NULL && start_n(cmd->arg_array[*i]))
	{
		*new_line = 0;
		(*i)++;
	}
}

void	echo_home(char *arg, int fd)
{
	char	*home_dir;

	home_dir = getenv("HOME");
	if (home_dir != NULL)
	{
		write(fd, home_dir, ft_strlen(home_dir));
		write(fd, arg + 1, ft_strlen(arg + 1));
	}
}

void	handle_special_arguments(t_minishell *minishell, char *arg, int fd)
{
	char	*exit_status;
	char	*env_value;

	env_value = NULL;
	if (ft_strcmp(arg, "$?") == 0)
	{
		exit_status = ft_itoa(minishell->exit_status);
		write(fd, exit_status, ft_strlen(exit_status));
		free(exit_status);
	}
	if ((ft_strcmp(arg, "$") == 0) && strlen(arg) != 1)
	{
		env_value = getenv(arg + 1);
		if (env_value != NULL)
			write(fd, env_value, ft_strlen(env_value));
	}
	else if (arg[0] == '~' && arg[1] == '\0')
		echo_home(arg, fd);
	else
		write(fd, arg, ft_strlen(arg));
}

void	echo(t_minishell *minishell, t_cmd *cmd)
{
	int		i;
	int		fd;
	int		new_line;
	char	*env_value;
	char	*home_dir;

	if (cmd->pipe && cmd->pipe->write)
		fd = cmd->pipe->write[1];
	else
		fd = 1;
	i = 1;
	new_line = 1;
	env_value = NULL;
	home_dir = NULL;
	handle_option_n(cmd, &i, &new_line);
	while (cmd->arg_array[i] != NULL)
	{
		handle_special_arguments(minishell, cmd->arg_array[i], fd);
		i++;
		if (cmd->arg_array[i] != NULL)
			write(fd, " ", 1);
	}
	if (new_line)
		write(fd, "\n", 1);
}
