# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: glions <glions@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/01 16:19:29 by glions            #+#    #+#              #
#    Updated: 2024/02/05 13:45:36 by glions           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC				=	cc
CFLAGS			=	-Wall -Werror -Wextra
LIBFT			=	libft/

SRCS_BONUS		=	bonus/ft_printf_bonus.c \
					bonus/convprintf/ft_conv_char.c \
					bonus/convprintf/ft_conv_int.c \
					bonus/convprintf/ft_conv_inthex.c \
					bonus/convprintf/ft_conv_ptr.c \
					bonus/convprintf/ft_conv_str.c \
					bonus/convprintf/ft_conv_ui.c \
					bonus/convprintf/convprintf_utils.c \
\
					bonus/charprintf/ft_veriflimit.c \
\
					bonus/paramsprintf/ft_params_free.c \
					bonus/paramsprintf/ft_params_new.c \
\
					bonus/lstprintf/ft_lstprintf_new.c \
					bonus/lstprintf/ft_lstprintf_free.c \
					bonus/lstprintf/ft_lstprintfadd_back.c \
					bonus/lstprintf/ft_lstprintf_last.c \
					bonus/lstprintf/ft_lstprintf_show.c \
					bonus/lstprintf/ft_lstprintf_setup.c \
					bonus/lstprintf/ft_lstprintf_setup_value.c \
					bonus/lstprintf/ft_lstprintf_init_bonus.c


SRCS_LIBFT		=	libft/ft_char/ft_isalpha.c \
					libft/ft_char/ft_isdigit.c \
					libft/ft_char/ft_isalnum.c \
					libft/ft_char/ft_isascii.c \
					libft/ft_char/ft_isprint.c \
					libft/ft_char/ft_toupper.c \
					libft/ft_char/ft_tolower.c \
\
					libft/ft_mem/ft_memset.c \
					libft/ft_mem/ft_bzero.c \
					libft/ft_mem/ft_memcpy.c \
					libft/ft_mem/ft_memmove.c \
					libft/ft_mem/ft_memchr.c \
					libft/ft_mem/ft_memcmp.c \
\
					libft/ft_str/ft_strlcpy.c \
					libft/ft_str/ft_strlcat.c \
					libft/ft_str/ft_strlen.c \
					libft/ft_str/ft_strchr.c \
					libft/ft_str/ft_strrchr.c \
					libft/ft_str/ft_strncmp.c \
					libft/ft_str/ft_strnstr.c \
					libft/ft_str/ft_strupper.c \
					libft/ft_str/ft_strdup.c \
					libft/ft_str/ft_strndup.c \
					libft/ft_str/ft_substr.c \
					libft/ft_str/ft_strjoin.c \
					libft/ft_str/ft_strtrim.c \
					libft/ft_str/ft_split.c \
					libft/ft_str/ft_strmapi.c \
					libft/ft_str/ft_striteri.c \
\
					libft/ft_conv/ft_atoi.c \
					libft/ft_conv/ft_itoa.c \
					libft/ft_conv/ft_utoa.c \
					libft/ft_conv/ft_ptoa.c \
					libft/ft_conv/ft_itoa_hex.c \
\
					libft/ft_put/ft_putchar_fd.c \
					libft/ft_put/ft_putstr_fd.c \
					libft/ft_put/ft_putendl_fd.c \
					libft/ft_put/ft_putnbr_fd.c \
					libft/ft_put/ft_putnbr_u_fd.c \
					libft/ft_put/ft_putnbr_hex_fd.c \
					libft/ft_put/ft_putptr_hex_fd.c \
\
					libft/ft_lst/ft_lstnew.c \
					libft/ft_lst/ft_lstadd_front.c \
					libft/ft_lst/ft_lstsize.c \
					libft/ft_lst/ft_lstlast.c \
					libft/ft_lst/ft_lstadd_back.c \
					libft/ft_lst/ft_lstdelone.c \
					libft/ft_lst/ft_lstclear.c \
					libft/ft_lst/ft_lstiter.c \
					libft/ft_lst/ft_lstmap.c \
\
					libft/ft_alloc/ft_calloc.c 

SRCS			=	mandatory/ft_printf.c \
					mandatory/printf_/printf_int.c \
					mandatory/printf_/printf_u.c \
					mandatory/printf_/printf_hex.c \
					mandatory/printf_/printf_p.c \
					mandatory/printf_/printf_str.c

SRC_TEST		=	test.c

OBJS_BONUS		=	$(SRCS_BONUS:.c=.o)
OBJS			=	$(SRCS:.c=.o)
OBJS_LIBFT		=	$(SRCS_LIBFT:.c=.o)

NAME			=	libftprintf.a
AR				=	ar -rcs

%.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<

all: $(NAME)

$(NAME): $(OBJS_LIBFT) $(OBJS)
	$(AR) $@ $^ 

bonus: fclean  $(OBJS_LIBFT) $(OBJS_BONUS)
	$(AR) $(NAME) $(OBJS_BONUS) $(OBJS_LIBFT)

test: $(NAME)
	$(CC) $(SRC_TEST) $(NAME)
	./a.out

test_bonus:
	make bonus
	$(CC) $(CFLAGS) $(SRC_TEST) $(NAME)
	./a.out

clean: 
	rm -rf */*.o */*.out *.o *.out */*/*.o
	make -C libft clean

fclean: clean
	rm -f $(NAME)

re:	fclean all

.PHONY:	all clean fclean libft.a re
