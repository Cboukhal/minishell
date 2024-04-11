/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   boolean_redirection.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/14 13:09:29 by agadea            #+#    #+#             */
/*   Updated: 2024/04/01 21:55:27 by agadea           ###   ########.fr       */
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
	return (false);
}

bool	is_redirection(int type)
{
	if (type == infile || type == outfile
		|| type == append || type == heredoc)
		return (true);
	return (false);
}
