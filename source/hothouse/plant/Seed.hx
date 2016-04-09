package hothouse.plant;

import de.polygonal.core.math.random.ParkMiller31;

class Seed extends ParkMiller31 {

	private var sequence:Int = 0;


	override public function random():Float {
		sequence++;
		return super.random();
	}

	public function getSequence():Int {
		return sequence;
	}

}