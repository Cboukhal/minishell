/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   command_redir_open.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbocktor <jbocktor@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/14 10:38:15 by agadea            #+#    #+#             */
/*   Updated: 2024/04/18 16:36:26 by jbocktor         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

int	open_command_infile(t_cmd *cmd)
{
	int			in_fd;
	t_infile	*index;

	in_fd = -1;
	index = cmd->redir->infile;
	while (index)
	{
		if (index->next == NULL)
			break ;
		index = index->next;
	}
	if (index->type == heredoc)
		in_fd = open("/tmp/heredoc", O_RDONLY);
	else
		in_fd = open(index->name, O_RDONLY);
	return (in_fd);
}

int	open_command_outfile(t_cmd *cmd)
{
	int			out_fd;
	t_outfile	*index;

	out_fd = -1;
	index = cmd->redir->outfile;
	while (index)
	{
		if (index->type == outfile)
			out_fd = open(index->name, O_CREAT | O_WRONLY | O_TRUNC,
					S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
		else if (index->type == append)
			out_fd = open(index->name, O_CREAT | O_WRONLY | O_APPEND,
					S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
		if (index->next == NULL)
			break ;
		else
			close(index->fd);
		index = index->next;
	}
	return (out_fd);
}

void	backup_in_out(t_backup *std_in_out)
{
	std_in_out->stdin_backup = dup(STDIN_FILENO);
	std_in_out->stdout_backup = dup(STDOUT_FILENO);
}

void	open_command_redirection(t_cmd *cmd)
{
	if (cmd->redir->infile)
	{
		cmd->redir->in_fd = open_command_infile(cmd);
		dup2(cmd->redir->in_fd, STDIN_FILENO);
	}
	if (cmd->redir->outfile)
	{
		cmd->redir->out_fd = open_command_outfile(cmd);
		dup2(cmd->redir->out_fd, STDOUT_FILENO);
	}
}

void	close_redirection(t_backup *std_in_out, t_cmd *cmd)
{
	if (cmd->redir->infile)
		dup2(std_in_out->stdin_backup, STDIN_FILENO);
	if (cmd->redir->outfile)
		dup2(std_in_out->stdout_backup, STDOUT_FILENO);
}
