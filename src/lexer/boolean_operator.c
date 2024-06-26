/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   boolean_operator.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:09:59 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:10:00 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

bool	is_metacharacter(char c)
{
	if (is_blank(c) || is_operator(c))
		return (true);
	return (false);
}

bool	type_is_operator(int type)
{
	if (type == l_parentheses || type == r_parentheses
		|| type == pipe_op || type == heredoc
		|| type == infile || type == append
		|| type == outfile || type == and_if
		|| type == or_if)
		return (true);
	return (false);
}

bool	is_blank(char c)
{
	if (c == horizontal_tab || c == vertical_tab
		|| c == formfeed || c == carriage_ret || c == space)
		return (true);
	return (false);
}

bool	is_operator(char c)
{
	if (c == '(' || c == ')'
		|| c == '|' || c == '&'
		|| c == '<' || c == '>')
		return (true);
	return (false);
}

bool	is_operator_token(t_token *token)
{
	if (token && (token->type == and_if || token->type == or_if
			|| token->type == pipe_op))
		return (true);
	return (false);
}
