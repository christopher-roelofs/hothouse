package hothouse.plant;

class Plant {


	private var name:String;

	private var ageDays:Int;

	private var seed:Seed;

	private var idealTemperature:Int;

	private var idealSoilMoisture:Int;

	
	private var idealSoilPh:Float;


	public function new(seed:Seed) 
	{
		this.seed = seed;

	}

}
