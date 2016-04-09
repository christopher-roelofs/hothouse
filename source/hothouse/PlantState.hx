package hothouse;

import hothouse.TiledLevel;


import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
import flixel.util.FlxDestroyUtil;
import flixel.util.FlxSave;
using flixel.util.FlxSpriteUtil;

class PlantState extends FlxState
{
	private var _txtTitle:FlxText;	
	private var _btnMainMenu:FlxButton;

	
	override public function create():Void 
	{
		
		#if !FLX_NO_MOUSE
		FlxG.mouse.visible = true;
		#end
		
		// create and add each of our items
		
		_txtTitle = new FlxText(0, 20, 0, "Plant Scene", 22);
		_txtTitle.alignment = "center";
		add(_txtTitle);
		
		_btnMainMenu = new FlxButton(0, FlxG.height - 32, "Back", goMainMenu);
		add(_btnMainMenu);
		
		super.create();
	}
	
	
	private function goMainMenu():Void
	{
		FlxG.camera.fade(FlxColor.BLACK, .33, false, function() {
			FlxG.switchState(new PlayState());
		});
	}
	
	override public function destroy():Void 
	{
		super.destroy();
		
		// clean up all our objects!
		_txtTitle = FlxDestroyUtil.destroy(_txtTitle);
		_btnMainMenu = FlxDestroyUtil.destroy(_btnMainMenu);
	}
}