/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   exec_child.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:07:42 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:07:44 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	manage_child_pipe(t_pipe *pipe)
{
	if (pipe)
	{
		if (pipe->read)
		{
			dup2(pipe->read[0], STDIN_FILENO);
			close(pipe->read[1]);
		}
		if (pipe->write)
		{
			dup2(pipe->write[1], STDOUT_FILENO);
			close(pipe->write[0]);
		}
		if (pipe->to_close)
		{
			close(pipe->to_close[0]);
			close(pipe->to_close[1]);
		}
		return ;
	}
}

void	child_job(t_minishell **minishell, t_cmd *cmd, char **envp)
{
	if (cmd->redir)
		open_command_redirection(cmd);
	manage_child_pipe(cmd->pipe);
	if (execve(cmd->path, cmd->arg_array, envp) != 0)
		perror("execve");
	(*minishell)->exit_status = errno;
	(*minishell)->state = stop;
}
