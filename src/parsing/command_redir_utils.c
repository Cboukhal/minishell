/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   command_redir_utils.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:17:53 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:17:55 by cboukhal         ###   ########.fr       */
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
