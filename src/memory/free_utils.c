/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   free_utils.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:14:20 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:14:23 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	free_environment(t_env *minishell_env)
{
	t_env	*tmp;

	while (minishell_env)
	{
		tmp = minishell_env->next;
		free(minishell_env->name);
		free(minishell_env->value);
		free(minishell_env);
		minishell_env = tmp;
	}
	free(tmp);
	free(minishell_env);
}

void	free_char_array(char **array)
{
	int	i;

	i = 0;
	while (array[i])
	{
		free(array[i]);
		i++;
	}
	free(array);
	array = NULL;
}

void	free_expansion(t_expan *expansion)
{
	t_expan	*index;

	index = expansion;
	while (index)
	{
		index = index->next;
		free(expansion->name);
		free(expansion);
		expansion = index;
	}
}

void	free_token_stream(t_token *stream)
{
	t_token	*token;

	token = stream;
	while (stream)
	{
		stream = stream->next;
		free_expansion(token->expansion);
		free(token->lexeme);
		free(token);
		token = stream;
	}
	free(stream);
	stream = NULL;
}
