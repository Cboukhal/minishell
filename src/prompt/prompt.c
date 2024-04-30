/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   prompt.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:27:04 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:27:06 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	get_prompt(char **prompt)
{
	char	*tmp;
	char	*dir_path;
	char	*log_info;

	dir_path = get_dir_path();
	log_info = get_log_info();
	if (dir_path == NULL)
	{
		free(log_info);
		return ;
	}
	if (*prompt)
		free(*prompt);
	if (dir_path == NULL && log_info == NULL)
		return ;
	else if (log_info == NULL)
		tmp = ft_strdup(dir_path);
	else
		tmp = ft_strjoin(log_info, dir_path);
	*prompt = ft_strjoin(tmp, "$ ");
	free(tmp);
	free(log_info);
	if (dir_path != NULL)
		free(dir_path);
}
