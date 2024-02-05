/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: glions <glions@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/31 22:13:23 by glions            #+#    #+#             */
/*   Updated: 2024/02/05 14:26:12 by glions           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./includes/ft_printf.h"
#include <stdio.h>

static int	printf_var(char type, va_list vlist)
{
	if (type == 'i' || type == 'd')
		return (printf_int(va_arg(vlist, int)));
	else if (type == 'c')
		return (ft_putchar_fd(va_arg(vlist, int), 1), (1));
	else if (type == 'x')
		return (printf_hex(va_arg(vlist, unsigned int), 0));
	else if (type == 'X')
		return (printf_hex(va_arg(vlist, unsigned int), 1));
	else if (type == 'u')
		return (printf_u(va_arg(vlist, unsigned int)));
	else if (type == 'p')
		return (printf_p(va_arg(vlist, long long)));
	else if (type == '%')
		return (ft_putchar_fd('%', 1), (1));
	else if (type == 's')
		return (printf_str(va_arg(vlist, char *)));
	else if (type == '\0')
		return (-1);
	else
	{
		ft_putchar_fd('%', 1);
		ft_putchar_fd(type, 1);
		return (2);
	}
}

static int	printf_step(const char *path, int *start, va_list vlist)
{
	int	cput;
	int	tmp;

	cput = 0;
	if (path[*start] == '%')
	{
		tmp = printf_var(path[*start + 1], vlist);
		*start += 2;
		return (tmp);
	}
	while (path[*start] != '\0' && path[*start] != '%')
	{
		ft_putchar_fd(path[*start], 1);
		*start += 1;
		cput++;
	}
	return (cput);
}

int	ft_printf(const char *path, ...)
{
	int		cput;
	int		i;
	int		tmp;
	va_list	vlist;

	cput = 0;
	i = 0;
	va_start(vlist, path);
	while (path[i] != '\0')
	{
		tmp = printf_step(path, &i, vlist);
		if (tmp == -1)
			return (tmp);
		cput += tmp;
	}
	va_end(vlist);
	return (cput);
}
