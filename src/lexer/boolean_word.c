/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   boolean_word.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:10:20 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:10:24 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

bool	is_quote(char c)
{
	if (c == '"' || c == '\'')
		return (true);
	return (false);
}

bool	is_builtin(char *input)
{
	int	length;

	length = ft_strlen(input);
	if ((length == 2 && ft_strncmp(input, "cd", 2) == 0)
		|| (length == 4 && ft_strncmp(input, "echo", 4) == 0)
		|| (length == 3 && ft_strncmp(input, "env", 3) == 0)
		|| (length == 4 && ft_strncmp(input, "exit", 4) == 0)
		|| (length == 6 && ft_strncmp(input, "export", 6) == 0)
		|| (length == 3 && ft_strncmp(input, "pwd", 3) == 0)
		|| (length == 5 && ft_strncmp(input, "unset", 5) == 0))
		return (true);
	return (false);
}
