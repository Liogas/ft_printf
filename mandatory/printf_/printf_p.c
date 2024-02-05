/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   printf_p.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: glions <glions@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/31 23:06:19 by glions            #+#    #+#             */
/*   Updated: 2024/01/31 23:50:35 by glions           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/ft_printf.h"

int	printf_p(long long value)
{
	int		cput;
	char	*value_printable;

	if (!value)
		return (ft_putstr_fd("(nil)", 1), (5));
	cput = 0;
	value_printable = ft_ptoa(value);
	if (!value_printable)
		return (-1);
	ft_putstr_fd(value_printable, 1);
	cput = ft_strlen(value_printable);
	free(value_printable);
	return (cput);
}
