/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   exec.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbocktor <jbocktor@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/06/26 10:20:24 by agadea            #+#    #+#             */
/*   Updated: 2024/04/26 14:12:06 by jbocktor         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

// bool	is_first_command(t_cmd *cmd)
// {
// 	if (cmd->id == 0)
// 		return (true);
// 	return (false);
// }

void	exec_command(t_minishell **minishell, t_cmd **cmd)
{
	if (!(*cmd)->name)
		return ;
	if ((*cmd)->type == assignment)
		assign_variable(minishell, (*cmd));
	else if ((*cmd)->name && is_builtin((*cmd)->name))
	{
		(*minishell)->exit_status = 0;
		exec_builtin(*minishell, (*cmd));
	}
	else if ((*cmd)->path && ft_strlen((*cmd)->name) > 0)
	{
		(*cmd)->pid = fork();
		if ((*cmd)->pid == -1)
			perror("fork");
		if ((*cmd)->pid == 0)
			child_job(minishell, (*cmd), (*minishell)->env_array);
	}
	else if (((*cmd)->name)[0] == '$')
		return ;
	else
	{
		ft_printf("%s: command not found\n", (*cmd)->name);
		(*minishell)->exit_status = 127;
	}
}

// void	wait_command_ending(t_minishell **minishell, t_ast_node **node,
// 		t_ast *ast, int i)
// {
// 	g_signal = 0;
// 	(void)ast;
// 	if ((*node)->left && i == 0 && (*node)->left->pid && (*node)->left->path
// 		&& (*node)->left->type != builtin)
// 	{
// 		waitpid((*node)->left->pid, &(*node)->exit_status, 0);
// 		(*minishell)->exit_status = WEXITSTATUS((*node)->exit_status);
// 	}
// 	if ((*node)->right && (*node)->right->path
// 		&& (*node)->right->type != builtin)
// 	{
// 		waitpid((*node)->right->pid, &(*node)->exit_status, 0);
// 		(*minishell)->exit_status = WEXITSTATUS((*node)->exit_status);
// 	}
// }

void	wait_command_ending(t_minishell **minishell, t_ast_node **node,
		t_ast *ast)
{
	g_signal = 0;
	if ((*node)->left && (*node)->left->pid && (*node)->left->path && (*node)->left->type != builtin)
	{
		waitpid((*node)->left->pid, &(*node)->exit_status, 0);
		(*minishell)->exit_status = WEXITSTATUS((*node)->exit_status);
	}
	while(ast)
	{
		if ((*node)->right && (*node)->right->path && (*node)->right->type != builtin)
		{
			waitpid((*node)->right->pid, &(*node)->exit_status, 0);
			(*minishell)->exit_status = WEXITSTATUS((*node)->exit_status);
		}
		ast = ast->next;
	}
}

void	execution(t_minishell *minishell)
{
	int		i;
	t_ast	*ast;

	i = 0;
	ast = minishell->syntax_tree;
	minishell->env_array = get_env_array(minishell->env);
	g_signal = run;
	while (ast && errno == 0 && g_signal == 0)
	{
		if (ast->node->type == simple_command)
			exec_command(&minishell, &ast->node->left);
		else if (ast->node->type == pipe_op)
			exec_pipe(&minishell, &ast, i);
		else if (ast->node->type == and_if || ast->node->type == or_if)
			exec_list(&minishell, &ast);
		ast = ast->next;
		i++;
	}
	ast = minishell->syntax_tree;
	if (ast && errno == 0 && g_signal == 0)
		wait_command_ending(&minishell, &ast->node, ast);
	g_signal = 0;
}

