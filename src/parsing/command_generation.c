/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   command_generation.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:34:03 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:34:04 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	init_command_attributes(t_cmd **cmd, int id)
{
	(*cmd)->id = id;
	(*cmd)->type = 0;
	(*cmd)->pid = -1;
	(*cmd)->arg = NULL;
	(*cmd)->name = NULL;
	(*cmd)->next = NULL;
	(*cmd)->prev = NULL;
	(*cmd)->path = NULL;
	(*cmd)->pipe = NULL;
	(*cmd)->redir = NULL;
	(*cmd)->assign = NULL;
	(*cmd)->infile = NULL;
	(*cmd)->outfile = NULL;
	(*cmd)->arg_array = NULL;
}

void	extract_command_name(char **cmd_name, t_arg *arg)
{
	int		length;

	if (!arg || !arg->value || (*cmd_name))
		return ;
	length = ft_strlen(arg->value);
	(*cmd_name) = malloc(length + 1);
	if (!(*cmd_name))
	{
		perror("malloc");
		errno = error_malloc;
		return ;
	}
	ft_strlcpy((*cmd_name), arg->value, length + 1);
}

void	extract_command(t_minishell *minishell, t_cmd **cmd, t_token **token)
{
	while (*token && (*token)->type != eof_token
		&& errno == 0 && is_operator_token((*token)) == false)
	{
		if (is_redirection((*token)->type) == true)
			get_command_redir(minishell, *token, &(*cmd)->redir);
		else if ((*token)->type == assignment_word)
			get_command_assign(*token, &(*cmd)->assign);
		else
		{
			get_command_arg(minishell, *token, &(*cmd)->arg, minishell->env);
			extract_command_name(&(*cmd)->name, (*cmd)->arg);
		}
		*token = (*token)->next;
	}
	if ((*cmd)->arg && errno == 0)
	{
		(*cmd)->path = get_command_path(minishell->path, (*cmd)->name);
		(*cmd)->arg_array = get_command_arg_array((*cmd)->arg);
	}
}

void	get_command_type(t_cmd **cmd)
{
	if ((*cmd)->assign && !(*cmd)->arg)
		(*cmd)->type = assignment;
	else if (is_builtin((*cmd)->name))
		(*cmd)->type = builtin;
	else
		(*cmd)->type = command;
}

t_cmd	*get_command(t_minishell *minishell, t_token **token, int id)
{
	t_cmd	*cmd;

	cmd = malloc(sizeof(t_cmd));
	if (!cmd)
		return (perror("malloc"), NULL);
	init_command_attributes(&cmd, id);
	extract_command(minishell, &cmd, token);
	get_command_type(&cmd);
	return (cmd);
}
