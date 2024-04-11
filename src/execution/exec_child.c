/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   exec_child.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/23 01:18:43 by agadea            #+#    #+#             */
/*   Updated: 2024/04/01 22:38:13 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	manage_write_pipe(t_cmd *cmd)
{
	if (cmd->pipe->write)
	{
		if (!cmd->redir || !cmd->redir->outfile)
			dup2(cmd->pipe->write[1], STDOUT_FILENO);
		else
			close(cmd->pipe->write[1]);
		close(cmd->pipe->write[0]);
	}
}

void	manage_read_pipe(t_cmd *cmd)
{
	if (cmd->pipe->read)
	{
		if (!cmd->redir || !cmd->redir->infile)
			dup2(cmd->pipe->read[0], STDIN_FILENO);
		else
			close(cmd->pipe->read[0]);
		close(cmd->pipe->read[1]);
	}
}

void	manage_child_pipe(t_cmd *cmd)
{
	manage_write_pipe(cmd);
	manage_read_pipe(cmd);
	if (cmd->pipe->to_close)
	{
		close(cmd->pipe->to_close[0]);
		close(cmd->pipe->to_close[1]);
	}
	return ;
}

void	child_job(t_minishell **minishell, t_cmd *cmd, char **envp)
{
	if (cmd->redir)
	{
		open_command_redirection(cmd);
	}
	if (cmd->pipe)
	{
		manage_child_pipe(cmd);
	}
	if (execve(cmd->path, cmd->arg_array, envp) != 0)
		perror("execve");
	(*minishell)->exit_status = errno;
	(*minishell)->state = stop;
}
