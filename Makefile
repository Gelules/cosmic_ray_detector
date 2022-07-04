CFLAGS = -std=c99 -pedantic -Wall -Wextra -Werror -O0
OBJ = src/detector.o
BIN = $(OBJ:.o=)
TARGET = cosmic_ray_detector

all: $(BIN)
	@mv $< $(TARGET)

$(BIN): $(OBJ)

check: all
	./tests/test.sh

clean:
	$(RM) $(OBJ) $(BIN) $(TARGET) date.log
