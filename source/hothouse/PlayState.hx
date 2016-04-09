<<<<<<< HEAD:source/PlayState.hx
package hothouse;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.text.FlxText;

class PlayState extends FlxState
{
	public var level:TiledLevel;
	
	override public function create():Void 
	{
		FlxG.mouse.visible = false;
		
		bgColor = 0xffaaaaaa;
		
		// Load the level's tilemap
		level = new TiledLevel("assets/tiled/level.tmx", this);
		
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
		// Collide with foreground tile layer
		level.collideWithLevel(level.player);
		
	}
	
=======
package hothouse;

import hothouse.TiledLevel;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.text.FlxText;

class PlayState extends FlxState
{
	public var level:TiledLevel;
	
	public var score:FlxText;
	public var status:FlxText;
	
	
	private static var youDied:Bool = false;
	
	override public function create():Void 
	{
		FlxG.mouse.visible = false;
		
		bgColor = 0xffaaaaaa;
		
		// Load the level's tilemap
		level = new TiledLevel("assets/tiled/level.tmx", this);
		
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
		// Collide with foreground tile layer
		level.collideWithLevel(level.player);
		
	}
	
>>>>>>> e0e38f59c7211b022f65550e310e527c34bfd214:source/hothouse/PlayState.hx
}