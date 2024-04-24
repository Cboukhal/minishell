/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   token_expansion.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/26 19:58:26 by agadea            #+#    #+#             */
/*   Updated: 2024/03/28 18:46:06 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

bool	is_next_char_valid(char c)
{
	if (c == '\0' || c == '$' || is_blank(c)
		|| is_quote(c) || c == '=')
		return (false);
	return (true);
}

int	get_expansion_name_length(char *lexeme)
{
	int	i;

	i = 0;
	while (lexeme[i])
	{
		if (is_quote(lexeme[i]) || is_metacharacter(lexeme[i])
			|| lexeme[i] == '=' || lexeme[i] == '$')
			return (i);
		i++;
	}
	return (i);
}

char	*extract_expansion_name(char *lexeme)
{
	int		i;
	int		length;
	char	*name;

	i = 0;
	length = get_expansion_name_length(lexeme);
	if (length == 0)
		return (NULL);
	name = malloc(length + 1);
	while (i < length)
	{
		name[i] = lexeme[i];
		i++;
	}
	name[i] = '\0';
	return (name);
}

t_expan	*extract_expansion(char *lexeme)
{
	t_expan	*expan_new;

	expan_new = malloc(sizeof(t_expan));
	if (!expan_new)
		return (perror("malloc"), NULL);
	expan_new->next = NULL;
	expan_new->name = extract_expansion_name(lexeme);
	return (expan_new);
}

t_expan	*get_token_expansion(char *lexeme, int length)
{
	int		i;
	t_expan	*expan_new;
	t_expan	*expan_list;
	t_expan	*expan_index;

	i = 0;
	expan_new = NULL;
	expan_list = NULL;
	while (i < length && errno == 0)
	{
		if (lexeme[i] == '\'')
			i += skip_quote(&lexeme[i], '\'');
		if (lexeme[i] == '$' && is_next_char_valid(lexeme[i + 1]))
		{
			i++;
			expan_new = extract_expansion(&lexeme[i]);
			if (!expan_list)
				expan_list = expan_new;
			else
				expan_index->next = expan_new;
			expan_index = expan_new;
		}
		i++;
	}
	return (expan_list);
}
