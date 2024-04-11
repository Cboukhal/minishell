/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   error_builtin.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/01 11:15:49 by agadea            #+#    #+#             */
/*   Updated: 2024/04/02 21:37:57 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	error_unset(int errnum, char *arg, unsigned char *exit_status)
{
	if (errnum == 1)
	{
		write(2, "bash: unset: `", 15);
		write(2, arg, ft_strlen(arg));
		write(2, "': not a valid identifier\n", 26);
		*exit_status = 1;
	}
}

void	error_export(int errnum, char *arg, unsigned char *exit_status)
{
	if (errnum == 1)
	{
		write(2, "bash: export: `", 15);
		write(2, arg, ft_strlen(arg));
		write(2, "': not a valid identifier\n", 26);
		*exit_status = 1;
	}
}

void	error_cd(int errnum, char *arg, unsigned char *exit_status)
{
	(void)arg;
	if (errnum == 1)
	{
		write(2, "bash: cd: HOME not set\n", 23);
		*exit_status = 1;
	}
	else if (errnum == 2)
	{
		write(2, "bash: cd: too many arguments\n", 29);
		*exit_status = 1;
	}
}

void	error_exit(int errnum, char *arg, unsigned char *exit_status)
{
	if (errnum == 1)
	{
		// write(2, "bash: exit: ", 12);
		// write(2, arg, ft_strlen(arg));
		// write(2, ": numeric argument required\n", 28);
		printf("bash: exit: %s: numeric argument required\n", arg);
		*exit_status = 2;
	}
	else if (errnum == 2)
	{
		write(2, "bash: exit: too many arguments\n", 33);
		*exit_status = 2;
	}
}
