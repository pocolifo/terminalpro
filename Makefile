OUTPUT=main
INCLUDE_DIRECTORY=/usr/include

build:
	g++ src/*.c* -lGL -lglfw -o $(OUTPUT)

clean:
	-rm glad.zip
	-rm -f src/glad.c
	-rm $(OUTPUT)

test: build
	./$(OUTPUT)

setup:
	$(eval TEMP=$(shell mktemp -d))
	unzip -d $(TEMP) glad.zip
	mv -f $(TEMP)/src/glad.c src
	mv -f $(TEMP)/include/KHR/* $(INCLUDE_DIRECTORY)/KHR
	mv -f $(TEMP)/include/glad/* $(INCLUDE_DIRECTORY)/glad
	rm -r $(TEMP)