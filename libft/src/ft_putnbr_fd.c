/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_fd.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbocktor <jbocktor@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 09:12:27 by jbocktor          #+#    #+#             */
/*   Updated: 2024/04/30 09:12:28 by jbocktor         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

void	ft_putnbr(int n, int fd)
{
	if (n == -2147483648)
		write(fd, "-2147483648", 11);
	else if (n < 0)
	{
		n *= -1;
		ft_putchar_fd('-', fd);
		ft_putnbr(n, fd);
	}
	else if (n >= 0 && n <= 9)
	{
		ft_putchar_fd(n + '0', fd);
	}
	else
	{
		ft_putnbr(n / 10, fd);
		ft_putnbr(n % 10, fd);
	}
}
