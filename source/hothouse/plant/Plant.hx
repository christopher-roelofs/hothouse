package hothouse.plant;

class Plant {


	private var name:String;

	private var ageDays:Int;

	private var seed:Seed;

	private var temperature:TemparatureFactor;

	private var ph:SoilPhFactor;

	private var sunlight:SunlightFactor;

	private var water:WaterFactor;


	public function new(seed:Seed) 
	{
		this.seed = seed;
	}

	public function addFertilizer(ph:Float) {

	}

	public function addWater(amount:Float) {
		this.water.add(amount);
	}

	public function setTemperature(temperature:Float) {
		this.temperature.setCurrent(temperature);
	}

	public function setSunlight(sunlight:Float) {
		this.sunlight.setCurrent(sunlight);
	}

	public function update() {

	}

}
