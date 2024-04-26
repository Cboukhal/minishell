/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   token_quote.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbocktor <jbocktor@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/24 11:11:03 by agadea            #+#    #+#             */
/*   Updated: 2024/04/26 18:30:39 by jbocktor         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

int	add_quote(char *input)
{
	int		i;
	char	quote;

	i = 0;
	quote = input[i];
	i++;
	while (input[i])
	{
		if (input[i] == quote)
			return (i);
		i++;
	}
	ft_printf("bash: syntax error near unexpected token `%c'\n", quote);
	errno = error_syntax;
	return (NO_CLOSING_QUOTE);
}

int	skip_quote(char *lexeme, char quote)
{
	int	i;

	i = 1;
	while (lexeme[i] != quote)
	{
		if (!lexeme[i])
			return (i);
		i++;
	}
	return (i);
}

int	get_token_quote_nbr(char *input)
{
	int	i;
	int	quote;

	i = 0;
	quote = 0;
	while (input[i] && errno == 0
		&& is_metacharacter(input[i]) == false)
	{
		if (is_quote(input[i]))
		{
			i += add_quote(&input[i]);
			quote++;
		}
		if (i == NO_CLOSING_QUOTE)
			return (NO_CLOSING_QUOTE);
		i++;
	}
	return (quote);
}

int	remove_quote(char lexeme, char *quote, int *second_quote)
{
	if (!(*quote))
		*quote = lexeme;
	if (lexeme == *quote)
	{
		*second_quote += 1;
		if (*second_quote == FOUND)
		{
			*quote = '\0';
			*second_quote = 0;
		}
		return (1);
	}
	return (0);
}
