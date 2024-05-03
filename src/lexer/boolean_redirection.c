/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   boolean_redirection.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:34:52 by cboukhal          #+#    #+#             */
/*   Updated: 2024/05/02 12:49:16 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

bool	got_filename(char *lexeme, int type)
{
	int	i;

	if (type == append || type == heredoc)
		i = 2;
	else
		i = 1;
	while (lexeme[i])
	{
		if (is_blank(lexeme[i]) == false)
			return (true);
		i++;
	}
	errno = error_file;
	return (false);
}

bool	is_redirection(int type)
{
	if (type == infile || type == outfile
		|| type == append || type == heredoc)
		return (true);
	return (false);
}
