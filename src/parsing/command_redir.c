/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   command_redir.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/04 21:54:41 by agadea            #+#    #+#             */
/*   Updated: 2024/03/30 12:09:40 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

int	get_redir_filename_length(char *lexeme, int type, int *start)
{
	int	length;
	int	i;

	if (type == heredoc || type == append)
		i = 2;
	else
		i = 1;
	while (lexeme[i] && is_blank(lexeme[i]) == true)
		i++;
	*start = i;
	length = 0;
	while (lexeme[i])
	{
		i++;
		length++;
	}
	return (length);
}

char	*get_redir_filename(char *lexeme, int type)
{
	int		i;
	int		j;
	int		length;
	char	*filename;

	i = 0;
	j = 0;
	length = get_redir_filename_length(lexeme, type, &i);
	filename = malloc(length + 1);
	while (j < length)
	{
		filename[j] = lexeme[i];
		i++;
		j++;
	}
	filename[j] = '\0';
	return (filename);
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
