/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   env_utils.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/01 19:20:47 by agadea            #+#    #+#             */
/*   Updated: 2024/04/01 22:37:10 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	add_new_var_to_env(t_env **new_var, t_env **env)
{
	t_env	*index;

	index = (*env);
	while (index)
	{
		if (index->next == NULL)
		{
			index->next = (*new_var);
			return ;
		}
		index = index->next;
	}
}
