/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   log_info.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:26:48 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:26:49 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/minishell.h"

char	*set_log_info_colors(char *log_info)
{
	char	*tmp;
	char	*log_info_colorized;

	tmp = ft_strjoin(BOLD GREEN, log_info);
	log_info_colorized = ft_strjoin(tmp, DEFAULT);
	free(log_info);
	free(tmp);
	return (log_info_colorized);
}

int	get_hostname_length(char *hostname)
{
	int	i;

	i = 0;
	while (hostname[i] && hostname[i] != ':' && hostname[i] != '.')
		i++;
	return (i);
}

char	*get_hostname(void)
{
	int		i;
	char	*hostname;
	char	*tmp;

	hostname = NULL;
	tmp = getenv("SESSION_MANAGER");
	if (tmp == NULL)
		return (NULL);
	i = 0;
	while (tmp[i] && tmp[i] != '/' && tmp[i] != '.')
		i++;
	hostname = malloc(get_hostname_length(&tmp[i]) + 1);
	ft_strlcpy(hostname, &tmp[i], get_hostname_length(&tmp[i]) + 1);
	hostname[0] = '@';
	return (hostname);
}

char	*get_log_info(void)
{
	char	*tmp;
	char	*hostname;
	char	*username;
	char	*log_info;

	username = getenv("USER");
	hostname = get_hostname();
	tmp = ft_strjoin(username, hostname);
	tmp = set_log_info_colors(tmp);
	log_info = ft_strjoin(tmp, ":");
	free(tmp);
	free(hostname);
	return (log_info);
}
