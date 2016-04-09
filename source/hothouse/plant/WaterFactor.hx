package hothouse.plant;

class WaterFactor extends GrowthFactor {
	

	private var consumptionFactor:Float;

	public function add(amount:Float) {
		current += amount;
	}

}