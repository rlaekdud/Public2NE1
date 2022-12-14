CC=g++
CFLAGS=-g -Wall -std=c++17
TARGET=alba_java
OBJS=real_src/View.o real_src/QueryDB.o real_src/Service.o real_src/main.o
 
$(TARGET) : $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

real_src/View.o : real_src/View.cpp
	$(CC) $(CFLAGS) -c -o real_src/View.o real_src/View.cpp

real_src/QueryDB.o : real_src/QueryDB.cpp
	$(CC) $(CFLAGS) -c -o real_src/QueryDB.o real_src/QueryDB.cpp

real_src/Service.o : real_src/Service.cpp
	$(CC) $(CFLAGS) -c -o real_src/Service.o real_src/Service.cpp

real_src/main.o : real_src/main.cpp
	$(CC) $(CFLAGS) -c -o real_src/main.o real_src/main.cpp

clean:
	rm -rf $(OBJS) $(TARGET)
