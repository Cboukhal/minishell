/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   lexer_error.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/27 16:40:52 by agadea            #+#    #+#             */
/*   Updated: 2024/03/28 18:44:34 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	when_only_one_token(t_minishell *minishell, t_token **token)
{
	if (is_redirection((*token)->type))
	{
		if (got_filename((*token)->lexeme, (*token)->type))
			return ;
		ft_printf("bash: syntax error near ");
		ft_printf("unexpected token `newline'\n");
	}
	else
		ft_printf("bash: syntax error near unexpected token `%s'\n",
			(*token)->lexeme);
	errno = error_syntax;
	minishell->exit_status = 2;
}

void	check_lexical_error(t_minishell *minishell, t_token **token, char input)
{
	if (!(*token))
		return ;
	(void)input;
	if (type_is_operator((*token)->type))
	{
		if (!input && (*token)->prev == NULL)
		{
			when_only_one_token(minishell, token);
			return ;
		}
		else if ((*token)->prev && type_is_operator((*token)->prev->type))
		{
			if (got_filename((*token)->lexeme, (*token)->type)
				|| got_filename((*token)->prev->lexeme, (*token)->prev->type))
				return ;
			ft_printf("bash: syntax error near unexpected token `%s'\n",
				(*token)->lexeme);
			errno = error_syntax;
			minishell->exit_status = 2;
			return ;
		}
	}
}
