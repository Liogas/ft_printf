/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   printf_u.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: glions <glions@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/31 23:03:56 by glions            #+#    #+#             */
/*   Updated: 2024/01/31 23:50:38 by glions           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/ft_printf.h"

int	printf_u(unsigned int value)
{
	int		cput;
	char	*value_printable;

	cput = 0;
	value_printable = ft_utoa(value);
	if (!value_printable)
		return (-1);
	ft_putstr_fd(value_printable, 1);
	cput = ft_strlen(value_printable);
	free(value_printable);
	return (cput);
}
