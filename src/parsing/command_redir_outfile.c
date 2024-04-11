/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   command_redir_outfile.c                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/30 11:57:37 by agadea            #+#    #+#             */
/*   Updated: 2024/03/30 12:16:14 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	add_outfile_to_list(t_outfile **outfile, t_outfile **new)
{
	t_outfile	*index;

	if ((*outfile))
	{
		index = (*outfile);
		while (index)
		{
			if (index->next == NULL)
				break ;
			index = index->next;
		}
		index->next = (*new);
		return ;
	}
	else
		(*outfile) = (*new);
}

void	extract_command_outfile(t_token *token, t_outfile **outfile)
{
	t_outfile	*new;

	new = malloc(sizeof(t_infile));
	if (!new)
	{
		perror("malloc");
		return ;
	}
	new->next = NULL;
	new->type = token->type;
	new->name = get_redir_filename(token->lexeme, new->type);
	add_outfile_to_list(&(*outfile), &new);
}
