/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   exit.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:02:36 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:02:38 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

/*
exit [n]
  Cause the shell to exit with a status of n.  If n is
  omitted, the exit status is that of the last command
  executed.  A trap on EXIT is executed before the shell
  terminates.
*/

bool	is_numeric_string(const char *str)
{
	if (str == NULL || *str == '\0')
		return (false);
	if (*str == '-' || *str == '+')
		str++ ;
	while (*str != '\0')
	{
		if (!ft_isdigit(*str))
			return (false);
		str++ ;
	}
	return (true);
}

void	ft_exit(t_minishell *minishell, t_cmd *cmd)
{
	if (cmd_arg_nbr(cmd->arg_array) >= 2)
	{
		if (!is_numeric_string(cmd->arg_array[1])
			|| ft_strlen(cmd->arg_array[1]) == 0)
		{
			printf("exit\n");
			ft_printf("bash: exit: %s: numeric argument required\n",
				cmd->arg_array[1]);
			minishell->exit_status = 2;
		}
		else if (cmd_arg_nbr(cmd->arg_array) > 2)
		{
			printf("exit\n");
			ft_printf("bash: exit: too many arguments\n");
			minishell->exit_status = 1;
			return ;
		}
		else
			minishell->exit_status = ft_atoi(cmd->arg_array[1]);
	}
	minishell->state = stop;
}
