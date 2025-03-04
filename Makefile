# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zmetreve <zmetreve@student.42barcelon      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/02/16 14:21:47 by zmetreve          #+#    #+#              #
#    Updated: 2025/02/16 15:13:07 by zmetreve         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.SILENT:

UNAME_S := $(shell uname -s)

NAME		:= fdf
SRC_DIR		:= src/
OBJ_DIR		:= obj/
CC		:= cc
CFLAGS		:= -Wall -Werror -Wextra
RM		:= rm -f

# Librerías
LIBFT_DIR 	:= libft/
LIB 		:= $(LIBFT_DIR)libft.a

INC		:= inc/
HEADERS		:= $(INC)/*.h

ifeq ($(UNAME_S),Linux)
    MINILIBX_DIR := lib/minilibx/minilibx_linux/
    MINILIBX_LIB := $(MINILIBX_DIR)libmlx.a
    LIBS	 := -lm -lXext -lX11
endif

HEADER 		 := -I$(INC) -I$(LIBFT_DIR) -I$(MINILIBX_DIR)

# Sources
SRC_FILES	=	main control_keys control_mouse control_utils utils matrix geometry \
				map_load map_draw get_next_line menu map_utils map_utils2 draw_utils \
				draw_utils2 geometry2 utils2

SRC 		= 	$(addprefix $(SRC_DIR), $(addsuffix .c, $(SRC_FILES)))
OBJ 		= 	$(addprefix $(OBJ_DIR), $(addsuffix .o, $(SRC_FILES)))
DEPS 		= 	$(addprefix $(OBJ_DIR), $(addsuffix .d, $(SRC_FILES)))
OBJF		=	.cache_exists

all: makelibs $(NAME)

# Si cambia el Makefile o algún .h, recompila todo
$(NAME): $(OBJ) $(LIB) $(MINILIBX_LIB) $(HEADERS) Makefile
	@$(CC) $(CFLAGS) $(OBJ) $(LIB) $(MINILIBX_LIB) $(LIBS) -o $(NAME)
	@echo "🚀 $(GREEN)FDF compiled successfully!$(DEF_COLOR)"

makelibs: $(LIB) $(MINILIBX_LIB)

# Si libft.a no existe o cambió, recompilar libft
$(LIB): $(LIBFT_DIR)/*.c $(LIBFT_DIR)/*.h $(LIBFT_DIR)/Makefile
	@$(MAKE) -C $(LIBFT_DIR)

# Si MinilibX no existe, compilarlo
$(MINILIBX_LIB):
	@if [ ! -f "$(MINILIBX_LIB)" ]; then \
		echo "🔧 Compiling MinilibX..."; \
		$(MAKE) -C $(MINILIBX_DIR); \
	fi

-include ${DEPS}

$(OBJ_DIR)%.o: $(SRC_DIR)%.c $(HEADERS) | $(OBJF)
	@echo "🍩 $(YELLOW)Compiling: $< $(DEF_COLOR)"
	$(CC) $(CFLAGS) $(HEADER) -MMD -c $< -o $@

$(OBJF):
	@mkdir -p $(OBJ_DIR)

clean:
	@$(MAKE) clean -C $(LIBFT_DIR)
	@$(MAKE) clean -C $(MINILIBX_DIR)
	$(RM) -rf $(OBJ_DIR)

fclean: clean
	$(RM) -f $(NAME)
	$(RM) -f $(LIBFT_DIR)libft.a
	$(RM) -f $(MINILIBX_LIB)

re: fclean all

.PHONY: all clean fclean re
