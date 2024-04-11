/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   boolean_exec.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/28 18:54:30 by agadea            #+#    #+#             */
/*   Updated: 2024/03/28 19:01:59 by agadea           ###   ########.fr       */
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
