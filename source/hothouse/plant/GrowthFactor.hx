package hothouse.plant;

class GrowthFactor {
	
	//current value of growth factor
	private var current:Float;


	//minimum value for this factor
	private var min:Float;

	//maximum value for this factor
	private var max:Float;


	//how much variation affects health 
	private var hardiness:Float;

	public function new() {
		min=0.0;
		max=100.0;
	}

	public function getHealthValue() {


	}

	public function setHardiness(hardiness:Float) {
		this.hardiness = hardiness;
	}

	public function setCurrent(currentFactorValue:Float) {
		this.current = currentFactorValue;
	}


}