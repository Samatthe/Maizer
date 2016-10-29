compile: testfps.hpp testfps.cpp testcvblob.hpp testcvblob.cpp main.cpp
	g++ `pkg-config opencv cvblob --cflags --libs` testfps.cpp testcvblob.cpp main.cpp -o FpsTest

run: FpsTest
	./FpsTest

compile2: testfps2.hpp testfps2.cpp testcvblob2.hpp testcvblob2.cpp main2.cpp
	g++ `pkg-config opencv cvblob --cflags --libs` testfps2.cpp testcvblob2.cpp main2.cpp -o FpsTest2

run2: FpsTest2
	./FpsTest2

compile3: testfps3* testcvblob3* main3.cpp
	g++ `pkg-config opencv cvblob --cflags --libs` testfps3.cpp testcvblob3.cpp main3.cpp -lpthread -std=c++11 -O3 -o FpsTest3

run3: FpsTest3
	./FpsTest3