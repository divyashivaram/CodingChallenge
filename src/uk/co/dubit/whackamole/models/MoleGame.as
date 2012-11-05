package uk.co.dubit.whackamole.models
{
	import flash.events.EventDispatcher;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import mx.collections.ArrayCollection;
	
	import uk.co.dubit.whackamole.models.events.MoleGameEvent;
	import uk.co.dubit.whackamole.models.moles.Mole;

	/**
	 * Contains all the logic for the game itself; controls
	 * the addition of moles, keeps track of the player's
	 * score
	 * 
	 **/
	
	[Event(name="gameOver", type="uk.co.dubit.whackamole.models.events.MoleGameEvent")]
	public class MoleGame extends EventDispatcher
	{
		
		private var _score:int = 0;
		private var _moleHoles:ArrayCollection = new ArrayCollection();
		
		private var gameTimer:Timer;
		
		private const GAME_TIMER_DELAY:int = 400;
		private const TOTAL_MOLES:int = 60;
		
		public function MoleGame()
		{
			//Set up the game timer; when it fires a new
			//mole is added
			gameTimer = new Timer(GAME_TIMER_DELAY, TOTAL_MOLES);
			gameTimer.addEventListener(TimerEvent.TIMER, onGameTimer);
			gameTimer.addEventListener(TimerEvent.TIMER_COMPLETE, onGameTimerComplete);
		}

		[Bindable]
		public function get score():int
		{
			return _score;
		}

		public function set score(value:int):void
		{
			_score = value;
		}
		
		[Bindable]
		public function get moleHoles():ArrayCollection
		{
			return _moleHoles;
		}

		public function set moleHoles(value:ArrayCollection):void
		{
			_moleHoles = value;
		}

		public function start() : void
		{
			//There are currently nine MoleHoles; create and
			//add them to the moleHoles ArrayCollection
			for(var i:int = 0; i < 9; i++)
			{
				//A moleHole needs a reference to the game
				//so it can react appropriately to clicks
				var moleHole:MoleHole = new MoleHole(this);
				
				moleHoles.addItem(moleHole);
			}
			
			gameTimer.start();
		}
		
		public function addScore(points:int) : void
		{
			score += points;
		}
			
		private function getFreeMoleHole() : MoleHole
		{
			//Pick a random hole until we find one without
			//an mole already in there
			var moleHole:MoleHole = null;
			
			while(moleHole == null || moleHole.mole)
			{
				moleHole = moleHoles[ Math.floor(Math.random() * moleHoles.length) ];
			}
			
			return moleHole;
		}
		
		private function onGameTimer(event:TimerEvent) : void
		{
			//Every time the timer fires, add a new mole
			var moleHole:MoleHole = getFreeMoleHole();
			moleHole.populate(new Mole());
		}
		
		private function onGameTimerComplete(event:TimerEvent) : void
		{
			dispatchEvent(new MoleGameEvent(MoleGameEvent.GAME_OVER, score));
		}
	}
}