# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zmetreve <zmetreve@student.42barcelon      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/09/23 10:49:25 by zmetreve          #+#    #+#              #
#    Updated: 2024/12/26 11:01:45 by zmetreve         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc $(CFLAGS)

CFLAGS = -Wall -Wextra -Werror -I.

NAME = libft.a

SRCS = get_next_line.c get_next_line_utils.c \
       ft_basics.c ft_hexadecimals.c ft_pointers.c ft_printf.c ft_isalpha.c ft_isdigit.c ft_isalnum.c \
       ft_isascii.c ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c\
       ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c\
       ft_memcmp.c ft_strnstr.c ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c\
       ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_strcmp.c ft_is_nbr.c

OBJS = $(SRCS:.c=.o)

%.o: %.c Makefile libft.h
	$(CC) $(CFLAGS) -I. -c $< -o $(<:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all, clean, fclean, re

#so:
#   $(CC) -nostartfiles -fPIC $(CFLAGS) $(SRCS)
#   gcc -nostartfiles -shared -o libft.so $(OBJS)
