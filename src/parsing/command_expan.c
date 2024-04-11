/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   command_expan.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/24 16:15:11 by agadea            #+#    #+#             */
/*   Updated: 2024/04/02 19:29:28 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

bool	is_expansion_name(char *lexeme, char *name, int j)
{
	if (lexeme[j] == '$' && ft_strncmp(name, &(*lexeme) + 1,
			ft_strlen(name)) == 0)
		return (true);
	return (false);
}

void	manage_empty_expansion(char **lexeme_expanded, char *lexeme)
{
	if (ft_strlen((*lexeme_expanded)) == 0 && ft_strlen(lexeme) > 0)
	{
		free((*lexeme_expanded));
		(*lexeme_expanded) = NULL;
	}
}

void	remove_expansion_name(char *lexeme, char **lexeme_expanded, char *name)
{
	int	j;
	int	i;

	i = 0;
	j = 0;
	while (lexeme[j])
	{
		if (is_expansion_name(lexeme, name, j))
		{
			j = ft_strlen(name) + j + 1;
			break ;
		}
		(*lexeme_expanded)[i] = lexeme[j];
		j++;
		i++;
	}
	while (lexeme[j])
	{
		(*lexeme_expanded)[i] = lexeme[j];
		j++;
		i++;
	}
	(*lexeme_expanded)[i] = '\0';
	manage_empty_expansion(&(*lexeme_expanded), lexeme);
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

void	manage_expansion(t_minishell *minishell, t_token **token, t_env *env)
{
	char	*value;
	char	*last_exit_status;
	t_expan	*expansion;

	value = NULL;
	expansion = (*token)->expansion;
	while (expansion)
	{
		value = get_expansion_value(env, expansion->name);
		if (is_expansion_stored_in_env(value))
		{
			(*token)->lexeme = expand_lexeme_variable((*token)->lexeme,
					expansion->name, value);
			free(value);
		}
		else if (is_exit_status(expansion->name))
		{
			last_exit_status = ft_itoa(minishell->exit_status);
			(*token)->lexeme = expand_lexeme_variable((*token)->lexeme,
					expansion->name, last_exit_status);
			free(last_exit_status);
		}
		else
			(*token)->lexeme = expand_lexeme_variable((*token)->lexeme,
					expansion->name, NULL);
		expansion = expansion->next;
	}
}
