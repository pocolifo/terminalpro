OUTPUT=main

build:
	g++ src/*.c* -lGL -lglfw -o $(OUTPUT)

clean:
	-rm $(OUTPUT)

test: build
	./$(OUTPUT)
