/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbocktor <jbocktor@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 09:13:38 by jbocktor          #+#    #+#             */
/*   Updated: 2024/04/30 09:13:39 by jbocktor         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

char	*ft_strnstr(const char *big, const char *little, size_t len)
{
	size_t	i;
	size_t	j;
	size_t	n;

	i = 0;
	if (ft_strlen(little) == 0)
		return ((char *)big);
	if (!len)
		return (NULL);
	while (big[i] && i < len)
	{
		j = 0;
		n = i;
		while (little[j] && big[n] == little[j] && n < len)
		{
			n++;
			j++;
		}
		if (little[j] == '\0')
			return ((char *)&big[i]);
		i++;
	}
	return (NULL);
}
