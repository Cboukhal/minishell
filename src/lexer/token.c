/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   token.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/30 14:51:13 by agadea            #+#    #+#             */
/*   Updated: 2024/03/30 14:51:48 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

int	get_token_type(char *input)
{
	if (is_operator(*input))
		return (get_operator_type(input));
	else
		return (word);
}

void	init_token_attr(t_token **token)
{
	(*token)->quote_nbr = 0;
	(*token)->length = 0;
	(*token)->prev = NULL;
	(*token)->next = NULL;
	(*token)->lexeme = NULL;
	(*token)->expansion = NULL;
}

void	get_eof_token(t_token **token)
{
	t_token	*eof;

	eof = malloc(sizeof(t_token));
	if (!eof)
		perror("malloc");
	init_token_attr(&eof);
	eof->type = eof_token;
	if ((*token))
	{
		(*token)->next = eof;
		eof->prev = (*token);
	}
	else
		(*token) = eof;
}

// t_token	*create_token(char *input, int *operator_nbr)
// {
// 	t_token	*new;

// 	if (!input || !*input)
// 		return (NULL);
// 	new = malloc(sizeof(t_token));
// 	if (!new)
// 		return (perror("malloc"), NULL);
// 	init_token_attr(&new);
// 	new->type = get_token_type(input);
// 	if (type_is_operator(new->type))
// 		get_operator_token(input, &new);
// 	else
// 		get_word_token(input, &new);
// 	if (is_operator_token(new))
// 		*operator_nbr += 1;
// 	return (new);
// }
