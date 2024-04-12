/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   lexer.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/12 15:59:04 by agadea            #+#    #+#             */
/*   Updated: 2024/03/28 18:32:04 by agadea           ###   ########.fr       */
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

t_token	*create_token(char *input, int *operator_nbr)
{
	t_token	*new;

	if (!input || !*input)
		return (NULL);
	new = malloc(sizeof(t_token));
	if (!new)
		return (perror("malloc"), NULL);
	init_token_attr(&new);
	new->type = get_token_type(input);
	if (type_is_operator(new->type))
		get_operator_token(input, &new);
	else
		get_word_token(input, &new);
	if (is_operator_token(new))
		*operator_nbr += 1;
	return (new);
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
		{
			new->prev = index;
			index->next = new;
		}
		index = new;
		i += new->length;
		check_lexical_error(minishell, &index, input[i]);
	}
	if (new)
		get_eof_token(&new);
}