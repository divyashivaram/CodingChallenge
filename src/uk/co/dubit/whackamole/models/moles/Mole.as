package uk.co.dubit.whackamole.models.moles
{
	/**
	 * The only type of mole at the moment;
	 * one hit kills it
	 * 
	 **/
	public class Mole
	{
		public var points:int = 60;
		public var showtime:int = 1000;
		[Bindable] public var dead:Boolean;
		
		public function hit() : void
		{
			dead = true;
		}
	}
}