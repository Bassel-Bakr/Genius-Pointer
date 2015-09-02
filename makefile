TOOL=g++
FLAGS=-Ofast -s -std=c++14 -w -fpermissive -fno-exceptions -fno-rtti
LDFLAGS=-ffunction-sections -fdata-sections

default: main.o
	$(TOOL) $(FLAGS) main.o -o main $(LDFLAGS)

main.o: main.cpp debug.h sptr.h
	$(TOOL) $(FLAGS) -c main.cpp -o main.o $(LDFLAGS)

#sptr.o: sptr.cpp sptr.h debug.h
#		$(TOOL) $(FLAGS) -c sptr.cpp -o sptr.o $(LDFLAGS)

format: *.h *.cpp
	indent -kr -br -brf -brs -ce -cdw -l80 -cli2 -ci2 -i2 -ppi2 -nut *.c* *.h*

clean: *.o
	rm *.o
