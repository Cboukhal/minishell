/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   boolean_parsing.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:15:13 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:15:14 by cboukhal         ###   ########.fr       */
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
