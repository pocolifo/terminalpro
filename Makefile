OUTPUT=main

build:
	g++ glad.c main.cpp -lGL -lglfw -o $(OUTPUT)

clean:
	rm $(OUTPUT)

test: clean build
	./$(OUTPUT)
