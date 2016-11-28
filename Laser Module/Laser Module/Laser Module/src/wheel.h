//Check button
	//If button was previously pressed and is still pressed, do nothing
	//If button was not pressed and is now, send button click
	//If button was and now is not, change the prev value


//Check left
	//If button was previously pressed and is still pressed, do nothing
	//If button was not pressed and is now, send button click
	//If button was and now is not, change the prev value


//Check right
	//If button was previously pressed and is still pressed, do nothing
	//If button was not pressed and is now, send button click
	//If button was and now is not, change the prev value


//Check down
	//If button was previously pressed and is still pressed, do nothing
	//If button was not pressed and is now, send button click
	//If button was and now is not, change the prev value


//Check up
	//If button was previously pressed and is still pressed, do nothing
	//If button was not pressed and is now, send button click
	//If button was and now is not, change the prev value


#define	HIGH	1
#define	LOW		0

#define MAX_POS_SCROLL 100
#define MAX_NEG_SCROLL -100

Wheel_vals wheel;

/********************************************************************/

//Buttons (left, right, up, down)
enum Wheel_dir{
	LEFT, RIGHT, UP, DOWN
};

/********************************************************************/

//Struct to store the important button values and states
struct Wheel_vals{
	uint8_t up_val;
	uint8_t down_val;
	uint8_t left_val;
	uint8_t right_val;

	uint8_t left_state;
	uint8_t right_state;
	uint8_t up_state;
	uint8_t down_state;

	int8_t LR_count;
	int8_t UD_count;

	int8_t prev_LR;
	int8_t prev_UD;
};

/********************************************************************/

//Init all values to 0
void init_buttons(){};

/********************************************************************/

//Reads the values of the wheel and updates the struct
void update_values(){};

/********************************************************************/

//Updates the values and increments the counter
void saveValues(int *current, int *previous, int *count int up_down){};

/********************************************************************/

//If up_down is 1, moves counter up, else moves counter down
void increment_count(int *counter, int up_down){};

/********************************************************************/

int getScroll(Button button_num){};

/********************************************************************/