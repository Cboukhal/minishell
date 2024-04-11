/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   token_wildcard.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/28 07:28:00 by agadea            #+#    #+#             */
/*   Updated: 2024/03/28 08:20:02 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

void	manage_wildcard(t_token *token)
{
	DIR				*dir;
	struct dirent	*dirent;

	dir = opendir(".");
	if (!dir)
		printf("%d\n", errno);
	dirent = readdir(dir);
	closedir(dir);
}
