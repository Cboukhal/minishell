/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   lexer.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/12 15:59:04 by agadea            #+#    #+#             */
/*   Updated: 2024/04/01 21:57:05 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	add_token_to_list(t_token **index, t_token **new)
{
	(*new)->prev = (*index);
	(*index)->next = (*new);
}

void	lexical_analysis(t_minishell *minishell, char *input)
{
	int		i;
	t_token	*index;
	t_token	*new;

	i = 0;
	new = NULL;
	index = NULL;
	while (input[i] && errno == 0)
	{
		while (input[i] && (is_blank(input[i]) == true))
			i++;
		new = create_token(&input[i], &minishell->operator_nbr);
		if (!new)
			break ;
		if (!minishell->token_stream)
			minishell->token_stream = new;
		else
			add_token_to_list(&index, &new);
		index = new;
		i += new->length;
		check_lexical_error(minishell, &index, input[i]);
	}
	if (new)
		get_eof_token(&new);
}
