/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   token_word.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/12 15:02:26 by agadea            #+#    #+#             */
/*   Updated: 2024/03/28 16:27:50 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

int	get_word_length(char *input)
{
	int	i;

	i = 0;
	while (input[i] && errno == 0
		&& is_metacharacter(input[i]) == false)
	{
		if (is_quote(input[i]))
			i += add_quote(&input[i]);
		if (i == NO_CLOSING_QUOTE)
			return (NO_CLOSING_QUOTE);
		i++;
	}
	return (i);
}

void	extract_lexeme_from_input(const char *input, char *lexeme,
	int length, int quote_nbr)
{
	int		i;
	int		j;
	char	quote;
	int		second_quote;

	i = 0;
	j = 0;
	quote = '\0';
	second_quote = 0;
	while (i < length - quote_nbr)
	{
		if (is_quote(input[i]))
			i += remove_quote(input[i], &quote, &second_quote);
		if (second_quote == 0 && is_quote(input[i]))
		{
			i++;
			continue ;
		}
		else
			lexeme[j++] = input[i++];
	}
	lexeme[j] = '\0';
}

char	*get_word_lexeme(char *input, int length, int quote_nbr)
{
	char	*lexeme;

	lexeme = malloc(length - quote_nbr + 1);
	if (!lexeme)
		return (perror("malloc"), NULL);
	extract_lexeme_from_input(input, lexeme, length, quote_nbr);
	return (lexeme);
}

bool	is_empty_within_two_quote(int length, int quote_nbr)
{
	if (length - quote_nbr * 2 == 0)
		return (true);
	return (false);
}

void	get_word_token(char *input, t_token **new)
{
	(*new)->quote_nbr = get_token_quote_nbr(input);
	if (errno == 0 && (*new)->quote_nbr != NO_CLOSING_QUOTE)
	{
		(*new)->length = get_word_length(input);
		if (is_empty_within_two_quote((*new)->length, (*new)->quote_nbr))
			(*new)->lexeme = NULL;
		else
		{
			(*new)->lexeme = get_word_lexeme(input,
					(*new)->length, (*new)->quote_nbr);
			(*new)->expansion = get_token_expansion(input, (*new)->length);
		}
	}
}
