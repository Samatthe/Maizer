#include <thread>
#include <mutex>
#include <condition_variable>
#include "rfm69.h"

using namespace std;

struct Coordinates{
	int x;
	int y;
	bool update;
};

mutex coords_lock;
Coordinates coords;
RFM69 radio;
condition_variable coords_cv;
int fd;
