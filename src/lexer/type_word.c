/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   type_word.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/22 13:12:43 by agadea            #+#    #+#             */
/*   Updated: 2024/03/12 22:44:11 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

int	get_word_type(char *input)
{
	if (*input == '$')
	{
		input++;
		if (*input == '?')
			return (exit_status);
		else if (is_metacharacter(*input) == false)
			return (expansion);
	}
	return (word);
}

int	get_quote_type(char *input)
{
	if (*input == '\'')
		return (simple_quote);
	return (double_quote);
}
