/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   boolean_parsing.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/25 16:46:52 by agadea            #+#    #+#             */
/*   Updated: 2024/03/28 18:43:54 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

bool	is_expansion_stored_in_env(char *value)
{
	if (value)
		return (true);
	return (false);
}

bool	is_exit_status(char *expan_name)
{
	char	*tmp;

	tmp = ft_strjoin("$", expan_name);
	if (!tmp)
		return (false);
	if (ft_strlen(tmp) == 2 && ft_strncmp(tmp, "$?", 2) == 0)
		return (free(tmp), true);
	return (free(tmp), false);
}
