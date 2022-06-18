OUTPUT=main
INCLUDE_DIRECTORY=/usr/include

build:
	g++ glad.c main.cpp -lGL -lglfw -o $(OUTPUT)

clean:
	-rm $(OUTPUT)

test: clean build
	./$(OUTPUT)

setup:
	$(eval TEMP=$(shell mktemp -d))
	unzip -d $(TEMP) glad.zip
	mv -f $(TEMP)/src/glad.c .
	mv -f $(TEMP)/include/KHR/* $(INCLUDE_DIRECTORY)/KHR
	mv -f $(TEMP)/include/glad/* $(INCLUDE_DIRECTORY)/glad
	rm -r $(TEMP)