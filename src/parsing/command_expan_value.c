/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   command_expan_value.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/30 13:40:25 by agadea            #+#    #+#             */
/*   Updated: 2024/04/02 19:38:21 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

char	*get_expansion_value(t_env *env, char *name)
{
	char	*value;

	value = NULL;
	while (env)
	{
		if (ft_strncmp(name, env->name, ft_strlen(name)) == 0)
			value = ft_strdup(env->value);
		env = env->next;
	}
	return (value);
}

int	put_expansion_value(char **lexeme_expanded, char *value, int i)
{
	int	j;

	j = 0;
	while (value[j])
	{
		(*lexeme_expanded)[i] = value[j];
		j++;
		i++;
	}
	return (i);
}

void	replace_expansion_name_by_value(char *lexeme,
			char **lexeme_expanded, char *value, char *name)
{
	int		j;
	size_t	i;

	i = 0;
	j = 0;
	printf("%s\n", lexeme);
	while (lexeme[j])
	{
		if (is_expansion_name(lexeme, name, j))
		{
			i = put_expansion_value(&(*lexeme_expanded), value, i);
			printf("%s\n", (*lexeme_expanded));
			break ;
		}
		(*lexeme_expanded)[i] = lexeme[j];
		j++;
		i++;
	}
	// while (lexeme[j] && i < ft_strlen(lexeme) && !is_exit_status(name))
	while (lexeme[j] && !is_exit_status(name))
	{
		(*lexeme_expanded)[i] = lexeme[j];
		j++;
		i++;
	}
	(*lexeme_expanded)[i] = '\0';
	printf("%s\n", (*lexeme_expanded));
}
