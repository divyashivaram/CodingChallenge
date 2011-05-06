package uk.co.dubit.whackamole.framework
{
	import spark.components.Group;
	
	import uk.co.dubit.whackamole.framework.IGameController;
	
	/**
	 * A simple skeleton model class - has only a controller
	 * property as part of a simple property based dependency
	 * injection system
	 * 
	 **/
	public class Model
	{
		protected var _controller:IGameController;
		
		public function get controller() : IGameController
		{
			return _controller;
		}
		
		public function set controller(value:IGameController) : void
		{
			_controller = value;
		}
	}
}