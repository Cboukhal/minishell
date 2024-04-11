/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   env_setup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/12 10:24:39 by agadea            #+#    #+#             */
/*   Updated: 2024/03/22 16:08:31 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

int	get_environment_size(char **envp)
{
	int	i;

	i = 0;
	while (envp[i])
		i++;
	return (i);
}

void	init_env_var_attr(t_env **new)
{
	(*new)->name = NULL;
	(*new)->value = NULL;
	(*new)->next = NULL;
}

t_env	*get_env_variable(char *variable)
{
	t_env	*new;

	new = malloc(sizeof(t_env));
	if (!new)
		return (perror("malloc"), NULL);
	init_env_var_attr(&new);
	new->name = get_variable_name(variable);
	new->value = get_variable_value(variable);
	return (new);
}

t_env	*extract_environment(char **envp)
{
	int		i;
	t_env	*new;
	t_env	*env;
	t_env	*current;

	env = get_env_variable(envp[0]);
	current = env;
	i = 1;
	while (envp[i])
	{
		new = get_env_variable(envp[i]);
		current->next = new;
		current = new;
		i++;
	}
	return (env);
}

void	init_environment(t_env **env, char **envp)
{
	if (get_environment_size(envp) == 0)
		*env = create_default_env();
	else
		*env = extract_environment(envp);
}
