/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   command_redir_open.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/14 10:38:15 by agadea            #+#    #+#             */
/*   Updated: 2024/03/15 14:33:36 by agadea           ###   ########.fr       */
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
