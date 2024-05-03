/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   split_expenssion.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbocktor <jbocktor@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/03 15:59:22 by jbocktor          #+#    #+#             */
/*   Updated: 2024/05/03 16:10:23 by jbocktor         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

int	filler(char *put, char **split, int j)
{
	int	i;

	i = 0;
	while (put[i])
	{
		if (put[0] == '\"' || put[0] == '\'' || put[0] == ' ')
		{
			split[j][i] = put[i];
			i++;
			break ;
		}
		if (put[i] == '\"' || put[i] == '\'' || put[i] == ' ')
			break ;
		split[j][i] = put[i];
		i++;
	}
	return (i);
}

int	lotery(char *put)
{
	int	i;

	i = 0;
	while (put[i])
	{
		if (put[i] == '\"' || put[i] == '\'' || put[i] == ' ')
			break ;
		i++;
	}
	return (i);
}

int	jeton(int i, char *put)
{
	if (put[0] == '\"' || put[0] == '\'' || put[0] == ' ' || put[0] == '\0')
		i++;
	return (i);
}

int	how_many(char *input)
{
	int		i;
	int		j;
	char	*put;

	i = 0;
	j = 0;
	put = input;
	while (put[i])
	{
		put = &put[i];
		i = 0;
		while (put[i])
		{
			if (put[i] == '\"' || put[i] == '\'' || put[i] == ' ')
				break ;
			i++;
		}
		if (put[i] == '\"' || put[i] == '\'' || put[i] == ' ' || put[i] == '\0')
			j++;
		if (put[0] == '\"' || put[0] == '\'' || put[0] == ' ' || put[0] == '\0')
			i++;
	}
	return (j);
}

char	**split_expenssion(char *input)
{
	char	**split;
	char	*put;
	int		i;
	int		j;

	j = 0;
	i = 0;
	split = malloc(sizeof(split) * (how_many(input) + 1));
	put = input;
	while (put[i])
	{
		put = &put[i];
		i = lotery(put);
		if (put[i] == '\"' || put[i] == '\'' || put[i] == ' ' || put[i] == '\0')
		{
			i = jeton(i, put);
			split[j] = malloc(sizeof(split[j]) * (i + 1));
			i = filler(put, split, j);
			split[j][i] = '\0';
			j++;
		}
	}
	split[j] = 0;
	return (split);
}