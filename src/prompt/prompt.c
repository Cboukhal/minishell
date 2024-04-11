/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   prompt.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/10 14:16:37 by agadea            #+#    #+#             */
/*   Updated: 2024/02/28 14:03:07 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	get_prompt(char **prompt)
{
	char	*tmp;
	char	*dir_path;
	char	*log_info;

	if (*prompt)
		free(*prompt);
	dir_path = get_dir_path();
	log_info = get_log_info();
	if (dir_path == NULL && log_info == NULL)
		return ;
	else if (log_info == NULL)
		tmp = ft_strdup(dir_path);
	else
		tmp = ft_strjoin(log_info, dir_path);
	*prompt = ft_strjoin(tmp, "$ ");
	free(tmp);
	free(log_info);
	free(dir_path);
}
