/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   modif_lexer_for_expenssion.c                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbocktor <jbocktor@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/03 15:56:57 by jbocktor          #+#    #+#             */
/*   Updated: 2024/05/03 16:10:10 by jbocktor         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	expenssed(char **split, char *pls, t_minishell *minishell)
{
	int	i;
	int	j;

	i = 0;
	j = 2;
	while (split[i])
	{
		if (split[i][0] == 39)
			j++;
		if (split[i][0] == '$' && j % 2 == 0)
		{
			pls = split[i];
			if (ft_strcmp("$?", split[i]) == 0)
				split[i] = ft_itoa(minishell->exit_status);
			else
			{
				split[i] = get_expansion_value(minishell->env, &split[i][1]);
				if (!split[i])
					split[i] = ft_strdup(pls);
			}
			free(pls);
		}
		i++;
	}
}

char	*join_all(char **split, char *pls)
{
	int	i;
	int	j;

	i = 0;
	j = 0;
	while (split[j])
		j++;
	if (j != 0)
	{
		j--;
		pls = ft_strdup(split[i]);
		i++;
		while (j > 0)
		{
			pls = ft_strjoin_n_free(pls, split[i]);
			i++;
			j--;
		}
	}
	return (pls);
}

char	*parse_input(char *input, t_minishell *minishell)
{
	char	**split;
	char	*pls;

	pls = NULL;
	split = split_expenssion(input);
	expenssed(split, pls, minishell);
	pls = join_all(split, pls);
	free_char_array(split);
	free(input);
	return (pls);
}