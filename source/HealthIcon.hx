package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('bf-golden', [0, 1], 0, false, isPlayer);
		animation.add('bf-car', [0, 1], 0, false, isPlayer);
		animation.add('bf-christmas', [0, 1], 0, false, isPlayer);
		animation.add('bf-pixel', [21, 21], 0, false, isPlayer);
		animation.add('spooky', [2, 3], 0, false, isPlayer);
		animation.add('pico', [4, 5], 0, false, isPlayer);
		animation.add('mom', [6, 7], 0, false, isPlayer);
		animation.add('mom-car', [6, 7], 0, false, isPlayer);
		animation.add('aceman', [8, 9], 0, false, isPlayer);
		animation.add('face', [10, 11], 0, false, isPlayer);
		animation.add('dad', [12, 13], 0, false, isPlayer);
		animation.add('senpai', [22, 22], 0, false, isPlayer);
		animation.add('senpai-angry', [22, 22], 0, false, isPlayer);
		animation.add('spirit', [23, 23], 0, false, isPlayer);
		animation.add('bf-old', [14, 15], 0, false, isPlayer);
		animation.add('gf', [16], 0, false, isPlayer);
		animation.add('gf-christmas', [16], 0, false, isPlayer);
		animation.add('gf-pixel', [16], 0, false, isPlayer);
		animation.add('parents-christmas', [17, 18], 0, false, isPlayer);
		animation.add('monster', [19, 20], 0, false, isPlayer);
		animation.add('monster-christmas', [19, 20], 0, false, isPlayer);
		animation.add('ace', [24, 25], 0, false, isPlayer);
		animation.add('ace-man', [8, 9], 0, false, isPlayer);
		animation.add('bf-ace', [24, 25], 0, false, isPlayer);
		animation.add('senpaihd', [39, 40], 0, false, isPlayer);
		animation.add('cb', [26, 27], 0, false, isPlayer);
		animation.add('bf-cb', [26, 27], 0, false, isPlayer);
		animation.add('acespiritduo', [23, 23], 0, false, isPlayer);
		animation.add('luna', [30, 31], 0, false, isPlayer);
		animation.add('luigi', [32, 33], 0, false, isPlayer);
		animation.add('picoremastered', [4, 5], 0, false, isPlayer);
		animation.add('andrew', [34, 35], 0, false, isPlayer);
		animation.add('shadow-ace', [36, 36], 0, false, isPlayer);
		animation.add('luna-duo', [37, 38], 0, false, isPlayer);
		animation.add('z11', [41, 42], 0, false, isPlayer);
		animation.add('fox', [43, 44], 0, false, isPlayer);


		animation.play(char);

		switch(char)
		{
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel':
				antialiasing = false;
		}

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
