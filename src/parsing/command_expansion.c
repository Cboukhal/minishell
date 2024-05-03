/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   command_expansion.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:16:43 by cboukhal          #+#    #+#             */
/*   Updated: 2024/05/02 17:52:24 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

char	*get_expansion_value(t_env *env, char *name)
{
	char	*value;

	value = NULL;
	while (env)
	{
		if (ft_strcmp(name, env->name) == 0)
			value = ft_strdup(env->value);
		env = env->next;
	}
	return (value);
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
	free (value);
}
