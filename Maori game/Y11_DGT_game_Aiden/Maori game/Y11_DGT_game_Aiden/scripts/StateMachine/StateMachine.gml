function StateMachine() constructor{
	static nullState = new state();
	state = nullState
	time = 0;
	//swap to a new state
	swap = function(_state = nullState){
		state.destroy()
		state = _state
		time = 0;
		state.create()
	}
	run = function() {
        state.update();
        time++;
    }

		
	}	