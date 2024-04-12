/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   exec_builtin.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/23 01:19:51 by agadea            #+#    #+#             */
/*   Updated: 2024/03/28 16:49:38 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	exec_builtin(t_minishell *minishell, t_cmd *cmd)
{
	// if (cmd->redir)
	// 	open_command_redirection(cmd);
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
	cmd->type = builtin;
}
