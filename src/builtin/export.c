/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   export.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/08 16:20:24 by agadea            #+#    #+#             */
/*   Updated: 2024/03/28 18:46:50 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

/*
  export [-fn] [name[=word]] ...
       export -p
              The supplied names are marked for automatic export to the
              environment of subsequently executed commands.  If the -f
              option is given, the names refer to functions.  If no
              names are given, or if the -p option is supplied, a list
              of names of all exported variables is printed.  The -n
              option causes the export property to be removed from each
              name.  If a variable name is followed by =word, the value
              of the variable is set to word.  export returns an exit
              status of 0 unless an invalid option is encountered, one
              of the names is not a valid shell variable name, or -f is
              supplied with a name that is not a function.
*/

t_env	*get_last_env_variable(t_env *env)
{
	t_env	*index;

	index = env;
	while (index)
	{
		if (index->next == NULL)
			break ;
		index = index->next;
	}
	return (index);
}

void	print_export(t_env *env, int fd)
{
	while (env)
	{
		write(fd, "declare -x ", 11);
		write(fd, env->name, ft_strlen(env->name));
		write(fd, env->value, ft_strlen(env->value));
		printf("\n");
		env = env->next;
	}
}

bool	is_valid_variable(t_minishell *minishell, char *arg)
{
	int	i;

	if (!ft_isalpha(arg[0]) && arg[0] != '_')
	{
		ft_printf("bash: export: `%s': not a valid identifier\n", arg);
		minishell->exit_status = 1;
		return (false);
	}
	i = 0;
	while (arg[i] && (ft_isalnum(arg[i]) || arg[i] == '_'))
	{
		i++;
		if ((arg[i] == '+' && arg[i + 1] == '=') || arg[i] == '=')
			return (true);
	}
	if (arg[i] != '\0' && arg[i] != '=')
	{
		ft_printf("bash: export: `%s': not a valid identifier\n", arg);
		minishell->exit_status = 1;
	}
	return (false);
}

t_env	*parse_export_arg(t_minishell *minishell, char **arg_array)
{
	int		i;
	t_env	*export_arg;
	t_env	*index;
	t_env	*new;

	i = 0;
	export_arg = NULL;
	while (arg_array[i] && errno == 0)
	{
		if (!is_valid_variable(minishell, arg_array[i]))
			break ;
		new = get_env_variable(arg_array[i]);
		if (!export_arg)
			export_arg = new;
		else
			index->next = new;
		index = new;
		i++;
	}
	return (export_arg);
}

void	export(t_minishell *minishell, t_env **env, t_cmd *cmd)
{
	int		i;
	int		fd;
	int		arg_nbr;
	t_env	*new_var;

	i = 0;
	(void)minishell;
	if (!cmd->arg_array)
		return ;
	if (cmd->pipe && cmd->pipe->write)
		fd = cmd->pipe->write[1];
	else
		fd = 1;
	arg_nbr = cmd_arg_nbr(cmd->arg_array);
	if (arg_nbr == 1)
		print_export((*env), fd);
	else if (arg_nbr > 1)
	{
		new_var = parse_export_arg(minishell, &cmd->arg_array[1]);
		add_new_var_to_env(&new_var, &(*env));
	}
}
