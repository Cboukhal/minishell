/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   type_operator.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:12:09 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:12:10 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

int	get_redirection_type(char *input, char token)
{
	input++;
	if (token == '>')
	{
		if (*input == '>')
			return (append);
		return (outfile);
	}
	else if (token == '<')
	{
		if (*input == '<')
			return (heredoc);
		return (infile);
	}
	return (error_token);
}

int	get_logical_operator_type(char *input, char token)
{
	input++;
	if (token == '&')
	{
		if (*input == '&')
			return (and_if);
		return (error_and);
	}
	else if (token == '|')
	{
		if (*input == '|')
			return (or_if);
		return (pipe_op);
	}
	return (error_token);
}

int	get_operator_type(char *input)
{
	if (*input == '(')
		return (l_parentheses);
	else if (*input == ')')
		return (r_parentheses);
	else if (*input == '>')
		return (get_redirection_type(input, '>'));
	else if (*input == '<')
		return (get_redirection_type(input, '<'));
	else if (*input == '&')
		return (get_logical_operator_type(input, '&'));
	else if (*input == '|')
		return (get_logical_operator_type(input, '|'));
	return (error_token);
}
