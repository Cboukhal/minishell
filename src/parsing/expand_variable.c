/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   expand_variable.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/26 11:59:02 by cboukhal          #+#    #+#             */
/*   Updated: 2024/05/03 10:38:54 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

size_t	expand_variable_in_lexeme(char *lexeme, char **lexeme_expanded,
	const char *name, const char *value)
{
	size_t	i;
	int		j;

	i = 0;
	j = 0;
	while (*lexeme)
	{
		if (*lexeme == '$' && ft_strncmp(name,
				&(*lexeme) + 1, ft_strlen(name)) == 0 && j == 0)
		{
			while (*value)
			{
				(*lexeme_expanded)[i] = *value;
				value++;
				i++;
			}
			lexeme = lexeme + ft_strlen(name) + 1;
			j = 1;
			if (*lexeme == '\0')
				return (i);
		}
		(*lexeme_expanded)[i] = *lexeme;
		lexeme++;
		i++;
	}
	return (i);
}

void	replace_variable_in_lexeme(char *lexeme, char **lexeme_expanded,
	const char *name)
{
	int	i;
	int	j;
	int	len;

	i = 0;
	j = 0;
	len = 0;
	while (lexeme[j])
	{
		if (lexeme[j] == '$' && ft_strncmp(name, &lexeme[j + 1],
				ft_strlen(name)) == 0)
		{
			len = ft_strlen(name) + j + 1;
			while (j < len)
				j++;
			break ;
		}
		(*lexeme_expanded)[i++] = lexeme[j++];
	}
	while (lexeme[j])
		(*lexeme_expanded)[i++] = lexeme[j++];
	(*lexeme_expanded)[i] = '\0';
}

void	replace_expansion_name_by_value(char *lexeme,
		char **lexeme_expanded, char *value, char *name)
{
	size_t	i;

	i = expand_variable_in_lexeme(lexeme, lexeme_expanded, name, value);
	(*lexeme_expanded)[i] = '\0';
}

void	remove_expansion_name(char *lexeme, char **lexeme_expanded, char *name)
{
	replace_variable_in_lexeme(lexeme, lexeme_expanded, name);
	if (ft_strlen((*lexeme_expanded)) == 0 && ft_strlen(lexeme) > 0)
	{
		free((*lexeme_expanded));
		(*lexeme_expanded) = NULL;
	}
}

char	*expand_lexeme_variable(char *lexeme, char *name, char *value)
{
	int		length;
	char	*lexeme_expanded;

	length = ft_strlen(lexeme) - ft_strlen(name);
	if (value)
		length += ft_strlen(value);
	lexeme_expanded = malloc(length + 1);
	if (!lexeme_expanded)
		return (perror("malloc"), NULL);
	if (value)
		replace_expansion_name_by_value(lexeme, &lexeme_expanded, value, name);
	else
		remove_expansion_name(lexeme, &lexeme_expanded, name);
	free(lexeme);
	return (lexeme_expanded);
}
