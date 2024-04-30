/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   boolean_exec.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:06:12 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:06:23 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

bool	is_next_node_pipeline(t_ast *ast)
{
	if (ast && (ast->node
			&& ast->node->type == pipe_op))
		return (true);
	return (false);
}
