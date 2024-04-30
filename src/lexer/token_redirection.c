/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   token_redirection.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:11:40 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:11:42 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

int	get_redirection_length(char *input, int type)
{
	int	i;

	if (type == heredoc || type == append)
		i = 2;
	else
		i = 1;
	while (input[i] && is_blank(input[i]) == true)
		i++;
	while (input[i] && errno == 0
		&& is_metacharacter(input[i]) == false)
	{
		if (is_quote(input[i]))
			i += add_quote(&input[i]);
		i++;
	}
	return (i);
}

char	*get_redirection_lexeme(char *input, int length, int quote_nbr)
{
	int		i;
	int		j;
	char	quote;
	char	*lexeme;
	int		second_quote;

	lexeme = malloc(length - quote_nbr + 1);
	if (!lexeme)
		return (NULL);
	i = 0;
	j = 0;
	quote = '\0';
	second_quote = 0;
	while (j < length - quote_nbr)
	{
		if (is_quote(input[i]))
			i += remove_quote(input[i], &quote, &second_quote);
		lexeme[j] = input[i];
		i++;
		j++;
	}
	lexeme[j] = '\0';
	return (lexeme);
}

void	get_redirection_token(char *input, t_token *new)
{
	new->quote_nbr = get_token_quote_nbr(input);
	if (errno == 0 && new->quote_nbr != NO_CLOSING_QUOTE)
	{
		new->length = get_redirection_length(input, new->type);
		new->lexeme = get_redirection_lexeme(input, new->length,
				new->quote_nbr);
		new->expansion = get_token_expansion(input, new->length);
	}
}
