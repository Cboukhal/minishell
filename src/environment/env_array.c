/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   env_array.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/21 18:51:13 by agadea            #+#    #+#             */
/*   Updated: 2024/03/27 13:40:59 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

int	get_env_length(t_env *env)
{
	t_env	*index;
	int		length;

	length = 0;
	index = env;
	while (index)
	{
		index = index->next;
		length++;
	}
	return (length);
}

char	*extract_env_variable(t_env *env_var)
{
	char	*tmp;
	char	*var;

	tmp = ft_strjoin(env_var->name, "=");
	var = ft_strjoin(tmp, env_var->value);
	free(tmp);
	return (var);
}

char	**get_env_array(t_env *env)
{
	int		i;
	int		length;
	char	**env_array;
	t_env	*index;

	length = get_env_length(env);
	env_array = malloc(sizeof(char *) * (length + 1));
	index = env;
	i = 0;
	while (index)
	{
		env_array[i] = extract_env_variable(index);
		index = index->next;
		i++;
	}
	env_array[i] = 0;
	return (env_array);
}
