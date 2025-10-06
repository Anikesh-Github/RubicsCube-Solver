

NAME = rubics
FILE = main
SRCS = $(patsubst %, %.cpp, $(FILE))
BINS = $(patsubst %, %.o, $(FILE))
FLAGS = -std=c++14

.PHONY: all compile clean fclean

all: $(NAME)

compile:
	clang++ $(FLAGS) -c $(SRCS)

$(NAME): compile
	clang++ -o $(NAME) $(FLAGS) $(BINS)


clean:
	/bin/rm -f $(BINS)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
