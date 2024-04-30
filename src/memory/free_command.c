/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   free_command.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:13:59 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:14:01 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	free_cmd_arg(t_arg *args)
{
	t_arg	*arg;

	arg = args;
	while (args)
	{
		args = args->next;
		free(arg->value);
		free(arg);
		arg = args;
	}
}

void	free_cmd_infile(t_infile *infile)
{
	t_infile	*index;

	index = infile;
	while (index)
	{
		free(index->name);
		infile = infile->next;
		free(index);
		index = infile;
	}
}

void	free_cmd_outfile(t_outfile *outfile)
{
	t_outfile	*index;

	index = outfile;
	while (index)
	{
		free(index->name);
		outfile = outfile->next;
		free(index);
		index = outfile;
	}
}

void	free_cmd_redir(t_redir *redir)
{
	if (redir->infile)
		free_cmd_infile(redir->infile);
	if (redir->outfile)
		free_cmd_outfile(redir->outfile);
	free(redir);
}

void	free_cmd(t_cmd *cmd)
{
	if (cmd->name)
		free(cmd->name);
	if (cmd->path)
		free(cmd->path);
	if (cmd->pipe)
		free(cmd->pipe);
	if (cmd->arg)
		free_cmd_arg(cmd->arg);
	if (cmd->redir)
		free_cmd_redir(cmd->redir);
	if (cmd->arg_array)
		free_char_array(cmd->arg_array);
	free(cmd);
}
