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

/********************************************************************/

//Init all values to 0
void init_buttons(){
	wheel.up_val = 0;
	wheel.down_val = 0;
	wheel.left_val = 0;
	wheel.right_val = 0;

	wheel.left_state = 0;
	wheel.right_state = 0;
	wheel.up_state = 0;
	wheel.down_state = 0;

	wheel.LR_count = 0;
	wheel.UD_count = 0;

	wheel.prev_LR = 0;
	wheel.prev_UD = 0;

}

/********************************************************************/

//Reads the values of the wheel and updates the struct
void update_values(){
	
	//Read in the new values
	wheel.left_val = getScroll(LEFT);
	wheel.right_val = getScroll(RIGHT);
	wheel.up_val = getScroll(UP);
	wheel.down_val = getScroll(DOWN);

	saveValues(&wheel.left_val, &wheel.left_state, &wheel.LR_count, 0);
	saveValues(&wheel.right_val, &wheel.right_state, &wheel.LR_count, 1);
	saveValues(&wheel.up_val, &wheel.up_state, &wheel.UD_count, 1);
	saveValues(&wheel.down_val, &wheel.down_state, &wheel.UD_count, 0);
}

/********************************************************************/

//Updates the values and increments the counter
void saveValues(int *current, int *previous, int *count int up_down){

	//If the current value is not equal to the previous value
	if(*current != *previous){
		increment_count(count, up_down);
		*previous = *current;
	}

	else{} //Stop compiler errors
}

/********************************************************************/

//If up_down is 1, moves counter up, else moves counter down
void increment_count(int *counter, int up_down){
	if(up_down){
		*counter++;
	}

	else{
		*counter--;
	}
}

/********************************************************************/

int getScroll(Button button_num){
	switch(button_num){
		case LEFT:
			port_pin_get_input_level(PIN_PA10);
		break;

		case RIGHT:
			port_pin_get_input_level(PIN_PA11);
		break;

		case UP:
			port_pin_get_input_level(PIN_PA06);
		break;

		case DOWN:
			port_pin_get_input_level(PIN_PA09);
		break;
	}
}

/********************************************************************/

void send_values(int8_t &LR_scroll, int8_t &UD_scroll){
	int8_t send_LR_val = (int8_t)(LR_count - prev_LR);
	int8_t send_UD_val = (int8_t)(UD_count - prev_UD);

	if(send_LR_val > MAX_POS_SCROLL){
		send_LR_val = MAX_POS_SCROLL;
	}

	if(send_LR_val < MAX_NEG_SCROLL){
		send_LR_val = MAX_NEG_SCROLL;
	}

	if(send_UD_val > MAX_POS_SCROLL){
		send_UD_val = MAX_POS_SCROLL;
	}

	if(send_UD_val < MAX_NEG_SCROLL){
		send_UD_val = MAX_NEG_SCROLL;
	}

	wheel.prev_LR = LR_count;
	wheel.prev_UD = UD_count;

	LR_scroll = send_LR_val;
	UD_scroll = send_UD_val;
}