/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   command_expansion.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/24 16:15:11 by agadea            #+#    #+#             */
/*   Updated: 2024/03/28 18:45:42 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

char	*get_expansion_value(t_env *env, char *name)
{
	char	*value;

	value = NULL;
	while (env)
	{
		//if (ft_strncmp(name, env->name, ft_strlen(name)) == 0)
		if (strcmp(name, env->name) == 0)
			value = ft_strdup(env->value);
		env = env->next;
	}
	return (value);
}

size_t	expand_variable_in_lexeme(char *lexeme, char **lexeme_expanded,
	const char *name, const char *value)
{
	size_t	i;

	i = 0;
	while (*lexeme)
	{
		if (*lexeme == '$' && ft_strncmp(name,
				&(*lexeme) + 1, ft_strlen(name)) == 0)
		{
			while (*value)
			{
				(*lexeme_expanded)[i] = *value;
				value++;
				i++;
			}
			return (i);
		}
		(*lexeme_expanded)[i] = *lexeme;
		lexeme++;
		i++;
	}
	return (i);
}

void	replace_expansion_name_by_value(char *lexeme,
		char **lexeme_expanded, char *value, char *name)
{
	size_t	i;

	// i = 0;
	// while (*lexeme)
	// {
	// 	if (*lexeme == '$' && ft_strncmp(name,
	// 			&(*lexeme) + 1, ft_strlen(name)) == 0)
	// 	{
	// 		while (*value)
	// 		{
	// 			(*lexeme_expanded)[i] = *value;
	// 			value++;
	// 			i++;
	// 		}
	// 		break ;
	// 	}
	// 	(*lexeme_expanded)[i] = *lexeme;
	// 	lexeme++;
	// 	i++;
	// }
	i = expand_variable_in_lexeme(lexeme, lexeme_expanded, name, value);
	// while (*lexeme && i < ft_strlen(lexeme) && !is_exit_status(name))
	// {
	// 	(*lexeme_expanded)[i] = *lexeme;
	// 	lexeme++;
	// 	i++;
	// }
	(*lexeme_expanded)[i] = '\0';
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

void	remove_expansion_name(char *lexeme, char **lexeme_expanded, char *name)
{
	// int	len;
	// int	j;
	// int	i;
	// i = 0;
	// j = 0;
	// while (lexeme[j])
	// {
	// 	if (lexeme[j] == '$' && ft_strncmp(name, &(*lexeme) + 1,
	// 			ft_strlen(name)) == 0)
	// 	{
	// 		len = ft_strlen(name) + j + 1;
	// 		while (j < len)
	// 			j++;
	// 		break ;
	// 	}
	// 	(*lexeme_expanded)[i] = lexeme[j];
	// 	j++;
	// 	i++;
	// }
	// while (lexeme[j])
	// {
	// 	(*lexeme_expanded)[i] = lexeme[j];
	// 	j++;
	// 	i++;
	// }
	// (*lexeme_expanded)[i] = '\0';
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
			(*token)->lexeme = expand_lexeme_variable((*token)->lexeme,
					expansion->name, value);
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
	/////
	free (value);
}
