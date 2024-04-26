/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_token.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/26 11:51:47 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/26 11:51:50 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	init_token_attr(t_token **token)
{
	(*token)->quote_nbr = 0;
	(*token)->length = 0;
	(*token)->prev = NULL;
	(*token)->next = NULL;
	(*token)->lexeme = NULL;
	(*token)->expansion = NULL;
}
