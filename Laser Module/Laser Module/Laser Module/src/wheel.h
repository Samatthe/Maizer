#include <inttypes.h>

#define	HIGH	1
#define	LOW		0

#define MAX_POS_SCROLL 100
#define MAX_NEG_SCROLL -100

/********************************************************************/
//Buttons (left, right, up, down)
#define LEFT 0
#define RIGHT 1
#define UP 2
#define DOWN 3

/********************************************************************/

//Struct to store the important button values and states
struct Wheel_vals{
	uint8_t up_val;			//current states
	uint8_t down_val;
	uint8_t left_val;
	uint8_t right_val;

	uint8_t left_state;		//previous states
	uint8_t right_state;
	uint8_t up_state;
	uint8_t down_state;

	int16_t LR_count;		//counts moved
	int16_t UD_count;
};

/********************************************************************/

//Declare a struct to be used throughout the .h and .c files, simplifies arguments
struct Wheel_vals wheel;

/********************************************************************/

//Init all values to 0
void init_wheel();

/********************************************************************/

//Reads the values of the wheel and updates the struct
void update_values();

/********************************************************************/

//Updates the values in the scroll wheel and increments the counter
void saveValues(uint8_t *current, uint8_t *previous, int16_t *count, uint8_t up_down);

/********************************************************************/

//If up_down is 1, moves counter up, else moves counter down for the wheel
void increment_count(int *counter, int up_down);

/********************************************************************/

//Returns the state of the the individual buttons
uint8_t getState(uint8_t button_num);

/********************************************************************/

//Updates the pointers to the scroll values, which are used to determine
//the number of times to scroll on the computer screen
void getScroll(int8_t *LR_scroll, int8_t *UD_scroll);

/********************************************************************/
