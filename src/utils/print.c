/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   print.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:28:06 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:28:08 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	print_local_var(t_var *local)
{
	while (local)
	{
		ft_printf("%s=%s\n", local->name, local->value);
		local = local->next;
	}
}

// void	print_expansion(t_expan *expansion)
// {
// 	while (expansion)
// 	{
// 		printf("Expansion=%s\n", expansion->name);
// 		expansion = expansion->next;
// 	}
// }

// void	print_token_with_expansion(t_token *token)
// {
// 	int	i;

// 	i = 0;
// 	while (token)
// 	{
// 		ft_printf("Token[%d]=%s Expansion= ", i, token->lexeme);
// 		while (token->expansion)
// 		{
// 			ft_printf("%s ", token->expansion->name);
// 			token->expansion = token->expansion->next;
// 		}
// 		ft_printf("token type=%d\n", token->type);
// 		token = token->next;
// 		i++;
// 	}
// }
