/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   command_arguments.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/04 18:06:24 by agadea            #+#    #+#             */
/*   Updated: 2024/03/28 13:09:55 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

int	get_argument_nbr(t_arg *args)
{
	int		i;
	t_arg	*arg;

	i = 0;
	arg = args;
	while (arg)
	{
		arg = arg->next;
		i++;
	}
	return (i);
}

char	*extract_argument(char *value)
{
	int		i;
	int		length;
	char	*arg;

	if (!value)
		return (NULL);
	length = ft_strlen(value);
	arg = malloc(length + 1);
	if (!arg)
		return (perror("malloc"), NULL);
	i = 0;
	while (i < length)
	{
		arg[i] = value[i];
		i++;
	}
	arg[i] = '\0';
	return (arg);
}

char	**get_command_arg_array(t_arg *arg)
{
	int		i;
	int		length;
	char	**arg_array;

	i = 0;
	length = get_argument_nbr(arg);
	arg_array = malloc(sizeof(char *) * (length + 1));
	if (!arg_array)
		return (perror("arg_array"), NULL);
	while (i < length)
	{
		arg_array[i] = extract_argument(arg->value);
		arg = arg->next;
		i++;
	}
	arg_array[i] = 0;
	return (arg_array);
}

void	get_command_arg(t_minishell *minishell, t_token *token,
					t_arg **arg_table, t_env *env)
{
	t_arg	*index;
	t_arg	*arg;

	manage_expansion(minishell, &token, env);
	if (!token->lexeme)
		return ;
	arg = malloc(sizeof(t_arg));
	if (!arg)
		return (perror("malloc"));
	arg->value = extract_argument(token->lexeme);
	arg->next = NULL;
	if ((*arg_table) == NULL)
	{
		(*arg_table) = arg;
		return ;
	}
	index = (*arg_table);
	while (index)
	{
		if (index->next == NULL)
			break ;
		index = index->next;
	}
	index->next = arg;
}
