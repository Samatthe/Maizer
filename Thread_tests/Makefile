compile: testfps.hpp testfps.cpp testcvblob.hpp testcvblob.cpp main.cpp
	g++ `pkg-config opencv cvblob --cflags --libs` testfps.cpp testcvblob.cpp main.cpp -o FpsTest

run: FpsTest
	./FpsTest

compile2: testfps2.hpp testfps2.cpp testcvblob2.hpp testcvblob2.cpp main2.cpp
	g++ `pkg-config opencv cvblob --cflags --libs` testfps2.cpp testcvblob2.cpp main2.cpp -o FpsTest2

run2: FpsTest2
	./FpsTest2

blob: testfps.hpp testfps.cpp main.cpp
	g++ `pkg-config opencv cvblob --cflags --libs` -pthread -std=c++11 testfps.cpp rfm69.cpp -lwiringPi main.cpp -O3 -o FpsTest3 -DRASPBERRY
