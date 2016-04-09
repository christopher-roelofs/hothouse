package hothouse;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.math.FlxPoint;
import flixel.system.FlxSound;

class Player extends FlxSprite
{
	public var speed:Float = 100;
	private var _sndStep:FlxSound;
	
	public function new(X:Float = 0, Y:Float = 0) 
	{
		super(X, Y);
		makeGraphic(8, 8, 0xffaa1111);
		drag.x = drag.y = 1600;
	}
	
	private function movement():Void
	{
		var _up:Bool = false;
		var _down:Bool = false;
		var _left:Bool = false;
		var _right:Bool = false;
		
		#if !FLX_NO_KEYBOARD
		_up = FlxG.keys.anyPressed([UP, W]);
		_down = FlxG.keys.anyPressed([DOWN, S]);
		_left = FlxG.keys.anyPressed([LEFT, A]);
		_right = FlxG.keys.anyPressed([RIGHT, D]);
		#end
		#if mobile
		var virtualPad = PlayState.virtualPad;
		_up = _up || virtualPad.buttonUp.pressed;
		_down = _down || virtualPad.buttonDown.pressed;
		_left  = _left || virtualPad.buttonLeft.pressed;
		_right = _right || virtualPad.buttonRight.pressed;
		#end
		
		if (_up && _down)
			_up = _down = false;
		if (_left && _right)
			_left = _right = false;
		
		if ( _up || _down || _left || _right)
		{
			var mA:Float = 0;
			if (_up)
			{
				mA = -90;
				facing = FlxObject.UP;
			}
			else if (_down)
			{
				mA = 90;
				facing = FlxObject.DOWN;
			}
			else if (_left)
			{
				mA = 180;
				facing = FlxObject.LEFT;
			}
			else if (_right)
			{
				mA = 0;
				facing = FlxObject.RIGHT;
			}
			
			velocity.set(speed, 0);
			velocity.rotate(FlxPoint.weak(0, 0), mA);
		}	
	}

	override public function update(elapsed:Float):Void 
	{
		movement();
		super.update(elapsed);
	}
	
}