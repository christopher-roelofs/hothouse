	
package hothouse;

import hothouse.TiledLevel;
import hothouse.PlantState;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.text.FlxText;
import flixel.util.FlxColor;


class PlayState extends FlxState
{
	public var level:TiledLevel;
	
	public var score:FlxText;
	public var status:FlxText;
	public var pots:FlxGroup;
	
	
	private static var youDied:Bool = false;
	
	override public function create():Void 
	{
		FlxG.mouse.visible = false;
		
		bgColor = 0xffaaaaaa;
		pots = new FlxGroup();
		// Load the level's tilemap
		level = new TiledLevel("assets/tiled/level.tmx", this);

		add(pots);
		
		// Add backgrounds
		add(level.backgroundLayer);

		// Add static images
		add(level.imagesLayer);
		
		// Load player objects
		add(level.objectsLayer);
		
		// Add foreground tiles after adding level objects, so these tiles render on top of player
		add(level.foregroundTiles);
		
	}
	
	override public function update(elapsed:Float):Void 
	{
		super.update(elapsed);

		FlxG.overlap(pots, level.player, getPot);

		// Collide with foreground tile layer
		level.collideWithLevel(level.player);
		
	}	

	public function getPot(Pot:FlxObject, Player:FlxObject):Void
	{
		if (FlxG.keys.anyJustReleased([P]))
			FlxG.camera.fade(FlxColor.BLACK, .33, false, function() {
			FlxG.switchState(new hothouse.PlantState());
		});
		if (FlxG.keys.anyPressed([M]))
			//trace("change character sprite to added plant");
			Pot.setPosition(Player.x,Player.y);
	}
}