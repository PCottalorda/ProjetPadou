## MAKEFILE ##
# Version minimale faite par Anthony Bucquet

CC=g++
CFLAGS=-std=c++11 -pedantic -W -Wall -Werror
LDFLAGS=

BINDIR=../bin
OBJDIR=../obj
DOCDIR=../doc

SRC= $(wildcard *.cpp)
INC= $(wildcard *.h) $(wildcard *.hpp)
IOBJ=$(SRC:.cpp=.o)
OBJ=$(addprefix $(OBJDIR)/,$(IOBJ))
EXEC=$(BINDIR)/run.x

## Binary targets ##

all: $(OBJ)
	@mkdir -p $(BINDIR)
	$(CC) -o $(EXEC) $(OBJ) $(INC) $(LDFLAGS)

# Objects

$(OBJDIR):
	@mkdir -p $(OBJDIR)

$(OBJDIR)/%.o: %.cpp $(OBJDIR)
	$(CC) -o $@ -c $< $(CFLAGS) 

## Documentation targets ##

doc:
	@mkdir -p $(DOCDIR)


## Cleaning targets ##

clean:
	rm -rf $(OBJDIR)/*

mrproper: clean
	rm -rf $(BINDIR)/
	rm -rf $(DOCDIR)/


