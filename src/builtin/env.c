/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   env.c                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:02:16 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:02:18 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

/*
NAME

    env - set the environment for command invocation

SYNOPSIS

    env [-i] [name=value]... [utility [argument...]]

DESCRIPTION

    The env utility shall obtain the current environment,
	modify it according to its arguments, then invoke the
	utility named by the utility operand with the modified environment.

    Optional arguments shall be passed to utility.

    If no utility operand is specified, the resulting
	environment shall be written to the standard output,
	with one name= value pair per line.

    If the first argument is '-', the results are unspecified.

OPTIONS

    The env utility shall conform to XBD Utility Syntax Guidelines ,
	except for the unspecified usage of '-'.

    The following options shall be supported:

    -i
        Invoke utility with exactly the environment specified by the arguments;
		the inherited environment shall be ignored completely.

OPERANDS

    The following operands shall be supported:

    name=value
        Arguments of the form name= value shall modify the execution environment,
		and shall be placed into the inherited environment before
		the utility is invoked.
    utility
        The name of the utility to be invoked. If the utility operand names
		any of the special built-in utilities in Special Built-In Utilities,
		the results are undefined.
    argument
        A string to pass as an argument for the invoked utility.

STDIN

    Not used.

INPUT FILES

    None.

ENVIRONMENT VARIABLES

    The following environment variables shall affect the execution of env:

    LANG
        Provide a default value for the internationalization variables
		that are unset or null. (See XBD Internationalization Variables
		for the precedence of internationalization variables used to determine
		the values of locale categories.)
    LC_ALL
        If set to a non-empty string value, override the values of all
		the other internationalization variables.
    LC_CTYPE
        Determine the locale for the interpretation of sequences of bytes of
		text data as characters (for example, single-byte as opposed to
		multi-byte characters in arguments).
    LC_MESSAGES
        Determine the locale that should be used to affect the format and
		contents of diagnostic messages written to standard error.
    NLSPATH
        [XSI] [Option Start] Determine the location of message catalogs
		for the processing of LC_MESSAGES. [Option End]
    PATH
        Determine the location of the utility, as described in XBD
		Environment Variables. If PATH is specified as a name= value
		operand to env, the value given shall be used in the search for utility.

ASYNCHRONOUS EVENTS

    Default.

STDOUT

    If no utility operand is specified, each name= value pair in the resulting
	environment shall be written in the form:

    "%s=%s\n", <name>, <value>

    If the utility operand is specified, the env utility shall
	not write to standard output.

STDERR

    The standard error shall be used only for diagnostic messages.

OUTPUT FILES

    None.

EXTENDED DESCRIPTION

    None.

EXIT STATUS

    If utility is invoked, the exit status of env shall be the exit
	status of utility;
	otherwise, the env utility shall exit with one of the following values:

        0
        The env utility completed successfully.
    1-125
        An error occurred in the env utility.
      126
        The utility specified by utility was found but could not be invoked.
      127
        The utility specified by utility could not be found.

CONSEQUENCES OF ERRORS

    Default.
*/

void	print_env(t_env *env, t_cmd *cmd)
{
	int		fd;
	t_env	*index;

	if (cmd->pipe && cmd->pipe->write)
		fd = cmd->pipe->write[1];
	else
		fd = 1;
	index = env;
	while (index)
	{
		write(fd, index->name, ft_strlen(index->name));
		write(fd, "=", 1);
		write(fd, index->value, ft_strlen(index->value));
		write(fd, "\n", 1);
		index = index->next;
	}
}

void	env(t_minishell *minishell, t_env *env, t_cmd *cmd)
{
	if (cmd_arg_nbr(cmd->arg_array) > 1)
	{
		ft_printf("env: ‘%s’: No such file or directory\n", cmd->arg_array[1]);
		minishell->exit_status = 127;
	}
	else
		print_env(env, cmd);
}
