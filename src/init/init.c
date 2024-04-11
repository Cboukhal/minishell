/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/08 16:28:47 by agadea            #+#    #+#             */
/*   Updated: 2024/03/28 16:30:07 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	init_minishell_struct(t_minishell *minishell)
{
	minishell->env = NULL;
	minishell->path = NULL;
	minishell->state = run;
	minishell->local = NULL;
	minishell->input = NULL;
	minishell->prompt = NULL;
	minishell->exit_status = 0;
	minishell->operator_nbr = 0;
	minishell->env_array = NULL;
	minishell->syntax_tree = NULL;
	minishell->token_stream = NULL;
}

void	init_minishell(t_minishell *minishell, char **envp)
{
	init_minishell_struct(minishell);
	init_signal_handler();
	init_environment(&minishell->env, envp);
	errno = 0;
}
