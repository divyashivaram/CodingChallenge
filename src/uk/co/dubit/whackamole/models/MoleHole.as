package uk.co.dubit.whackamole.models
{
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import uk.co.dubit.whackamole.models.moles.Mole;

	/**
	 * Models a hole which may or may not
	 * be filled by a mole. It's empty if
	 * the mole property is null.
	 *  
	 **/
	public class MoleHole
	{
		private var _mole:Mole;
		private var _moleGame:MoleGame;
		
		private var showTimer:Timer;
		
		public function MoleHole(moleGame:MoleGame)
		{
			_moleGame = moleGame;
			//This time controls the amount of time
			//a mole fills this hole for
			showTimer = new Timer(1000, 1);
			showTimer.addEventListener(TimerEvent.TIMER_COMPLETE, onShowTimerComplete);
		}
		
		public function get moleGame():MoleGame
		{
			return _moleGame;
		}

		[Bindable]
		public function get mole():Mole
		{
			return _mole;
		}

		public function set mole(value:Mole):void
		{
			_mole = value;
		}

		[Bindable]
		public function get occupantDead() : Boolean
		{
			return (mole && mole.dead); 
		}
	
		public function set occupantDead(value:Boolean) : void
		{
			if(mole) mole.dead = value; 
		}
		
		public function populate(mole:Mole) : void
		{
			//Add the specified mole to this hole,
			//and set up the timer to remove it after
			//its showtime has elapsed
			this.mole = mole;

			showTimer.reset();
			showTimer.delay = mole.showtime;
			showTimer.start();
		}
		
		public function hit() : void
		{
			if(mole && !mole.dead)
			{
				//Whack the mole, and if it results in a
				//kill, rack up the score
				mole.hit();
				if(mole.dead) moleGame.addScore(mole.points);
			}
		}
		
		private function onShowTimerComplete(event:TimerEvent) : void
		{
			//Empty the hole
			mole = null;
		}
	}
}