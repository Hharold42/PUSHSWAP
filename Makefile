NAME1	= push_swap

NAME2	= checker

CFLAGS 	= -Wall -Wextra -Werror

SRC1 	= p_s.c validate.c rotate.c swap_n_push.c a_utils.c \
			quick_sort.c separation.c init.c sort_3_5.c \
				big_sort.c find.c

SRC2 	= check.c validate.c rotate.c swap_n_push.c a_utils.c \
			quick_sort.c separation.c init.c

OBJSFD 	= temporary

OBJS1 	= $(addprefix $(OBJSFD)/,$(SRC1:.c=.o))

OBJS2 	= $(addprefix $(OBJSFD)/,$(SRC2:.c=.o))

HDR 		= -I./includes

LIBFT_HDR 	= -I./includes/libft

LIB_BINARY	= -L./includes/libft -lft

LIBFT		= ./includes/libft/libft.a

all: $(LIBFT) ./includes/libft/libft.a $(NAME1) $(NAME2)

FORCE:		;

LIBFT		= ./includes/libft/libft.a

$(LIBFT):	FORCE
			make -C ./includes/libft

$(OBJSFD):
	mkdir $@

$(OBJSFD)/%.o: %.c | $(OBJSFD)
	gcc -g $(CFLAGS) $(HDR) $(LIBFT_HDR) -c $< -o $@

$(NAME1): $(OBJS1) $(LIBFT) ./includes/p_s.h
	gcc -g $(OBJS1) $(LIB_BINARY) -o $@

$(NAME2): $(OBJS2) $(LIBFT) ./includes/p_s.h
	gcc -g $(OBJS2) $(LIB_BINARY) -o $@

clean:
	/bin/rm -f $(OBJS)
	rm -rf $(OBJSFD)
	make -C ./includes/libft clean

fclean: clean
	/bin/rm -f $(NAME1)
	/bin/rm -f $(NAME2)
	make -C ./includes/libft fclean

re: fclean all