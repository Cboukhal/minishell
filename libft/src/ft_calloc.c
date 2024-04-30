/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_calloc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:38:20 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:38:21 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

void	*ft_calloc(size_t nmemb, size_t size)
{
	size_t	i;
	void	*calloc;

	i = 0;
	if (size == 0 || nmemb == 0)
		return (malloc (0));
	if (size * nmemb / size != nmemb)
		return (NULL);
	calloc = malloc(nmemb * size);
	if (!calloc)
		return (NULL);
	while (i < nmemb * size)
	{
		((unsigned char *)calloc)[i] = '\0';
		i++;
	}
	return (calloc);
}
