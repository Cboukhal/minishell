/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   command_redir_extract.c                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbocktor <jbocktor@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/04 21:54:41 by agadea            #+#    #+#             */
/*   Updated: 2024/04/24 14:10:44 by jbocktor         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	handle_infile_token(t_minishell *minishell,
	t_infile *new, t_infile **infile)
{
	if (new->type == heredoc && ft_strlen(new->name) > 0)
	{
		get_redir_heredoc(new->name);
		add_infile_to_list(infile, &new);
	}
	else if (new->name && is_file_accessible(minishell, new->name))
	{
		add_infile_to_list(infile, &new);
		return ;
	}
	else
	{
		free(new->name);
		free(new);
	}
}

void	extract_command_infile(t_minishell *minishell,
			t_token *token, t_infile **infile)
{
	t_infile	*new;

	new = malloc(sizeof(t_infile));
	if (!new)
	{
		perror("malloc");
		return ;
	}
	new->next = NULL;
	new->type = token->type;
	new->name = get_redir_filename(token->lexeme, new->type);
	handle_infile_token (minishell, new, infile);
}

void	manage_outfile_list(t_outfile **outfile, t_outfile *new)
{
	t_outfile	*index;

	index = *outfile;
	if (index)
	{
		while (index->next)
			index = index->next;
		index->next = new;
	}
	else
		*outfile = new;
}

void	extract_command_outfile(t_token *token, t_outfile **outfile)
{
	t_outfile	*new;

	new = malloc(sizeof(t_outfile));
	if (!new)
	{
		perror("malloc");
		return ;
	}
	new->next = NULL;
	new->type = token->type;
	new->name = get_redir_filename(token->lexeme, new->type);
	manage_outfile_list(outfile, new);
}

void	get_command_redir(t_minishell *minishell,
			t_token *token, t_redir **redir)
{
	if ((*redir) == NULL)
	{
		(*redir) = malloc(sizeof(t_redir));
		if (!(*redir))
			perror("malloc:");
		(*redir)->infile = NULL;
		(*redir)->outfile = NULL;
	}
	if (token->type == infile || token->type == heredoc)
		extract_command_infile(minishell, token, &(*redir)->infile);
	else if (token->type == outfile || token->type == append)
		extract_command_outfile(token, &(*redir)->outfile);
}
