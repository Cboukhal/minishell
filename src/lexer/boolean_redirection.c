/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   boolean_redirection.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbocktor <jbocktor@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/14 13:09:29 by agadea            #+#    #+#             */
/*   Updated: 2024/04/27 16:48:39 by jbocktor         ###   ########.fr       */
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
