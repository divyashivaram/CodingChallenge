package uk.co.dubit.whackamole.models.moles
{
	/**
	 * The only type of mole at the moment;
	 * one hit kills it
	 * 
	 **/
	public class Mole
	{
		private var _points:int = 60;
		private var _showtime:int = 1000;
 		private var _dead:Boolean;

		public function get points():int
		{
			return _points;
		}

		public function set points(value:int):void
		{
			_points = value;
		}
		
		public function get showtime():int
		{
			return _showtime;
		}

		public function set showtime(value:int):void
		{
			_showtime = value;
		}

		[Bindable]
		public function get dead():Boolean
		{
			return _dead;
		}

		public function set dead(value:Boolean):void
		{
			_dead = value;
		}

		public function hit() : void
		{
			dead = true;
		}
	}
}