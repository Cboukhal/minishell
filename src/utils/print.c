/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   print.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/20 20:25:59 by agadea            #+#    #+#             */
/*   Updated: 2024/03/27 22:00:24 by agadea           ###   ########.fr       */
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
