/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   exec_builtin.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbocktor <jbocktor@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/23 01:19:51 by agadea            #+#    #+#             */
/*   Updated: 2024/04/18 16:35:51 by jbocktor         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	exec_builtin(t_minishell *minishell, t_cmd *cmd)
{
	t_backup	std_in_out;

	backup_in_out(&std_in_out);
	if (cmd->redir)
		open_command_redirection(cmd);
	if (ft_strncmp(cmd->name, "cd", 2) == 0)
		cd(minishell, cmd);
	else if (ft_strncmp(cmd->name, "echo", 4) == 0)
		echo(minishell, cmd);
	else if (ft_strncmp(cmd->name, "env", 3) == 0)
		env(minishell, minishell->env, cmd);
	else if (ft_strncmp(cmd->name, "exit", 4) == 0)
		ft_exit(minishell, cmd);
	else if (ft_strncmp(cmd->name, "export", 6) == 0)
		export(minishell, &minishell->env, cmd);
	else if (ft_strncmp(cmd->name, "pwd", 3) == 0)
		pwd(minishell, cmd);
	else if (ft_strncmp(cmd->name, "unset", 5) == 0)
		unset(minishell, minishell->env, cmd);
	if (cmd->redir)
		close_redirection(&std_in_out, cmd);
	cmd->type = builtin;
}
