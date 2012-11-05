package uk.co.dubit.whackamole.models.events
{
	import flash.events.Event;
	
	public class MoleGameEvent extends Event
	{
		public static const GAME_OVER:String = "game_over";
		
		private var _score:int;
		
		public function MoleGameEvent(type:String, score:int, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			_score = score;
			super(type, bubbles, cancelable);
		}

		public function get score():int
		{
			return _score;
		}

	}
}