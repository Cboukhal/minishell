/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   token_operator.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/12 15:01:32 by agadea            #+#    #+#             */
/*   Updated: 2024/03/20 21:48:53 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

int	get_operator_length(int type)
{
	if (type == and_if || type == or_if)
		return (2);
	return (1);
}

char	*get_operator_lexeme(int type, int length)
{
	char	*lexeme;

	lexeme = malloc(length + 1);
	if (!lexeme)
		return (NULL);
	if (type == l_parentheses)
		ft_strlcpy(lexeme, "(", 2);
	else if (type == r_parentheses)
		ft_strlcpy(lexeme, ")", 2);
	else if (type == pipe_op)
		ft_strlcpy(lexeme, "|", 2);
	else if (type == and_if)
		ft_strlcpy(lexeme, "&&", 3);
	else if (type == or_if)
		ft_strlcpy(lexeme, "||", 3);
	return (lexeme);
}

void	get_operator_token(char *input, t_token **new)
{
	if ((*new)->type == heredoc || (*new)->type == append
		|| (*new)->type == infile || (*new)->type == outfile)
		get_redirection_token(input, *new);
	else
	{
		(*new)->length = get_operator_length((*new)->type);
		(*new)->lexeme = get_operator_lexeme((*new)->type, (*new)->length);
	}
}
