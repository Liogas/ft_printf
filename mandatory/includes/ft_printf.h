/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: glions <glions@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/31 22:14:36 by glions            #+#    #+#             */
/*   Updated: 2024/02/05 11:21:22 by glions           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdlib.h>
# include <stdarg.h>
# include <unistd.h>
# include "../../libft/libft.h"

int	ft_printf(const char *path, ...);

int	printf_int(int value);
int	printf_str(char *value);
int	printf_hex(unsigned int value, int upper);
int	printf_p(long long vlaue);
int	printf_u(unsigned int value);

#endif