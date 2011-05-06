package uk.co.dubit.whackamole.framework
{
	import spark.components.Group;
	
	import uk.co.dubit.whackamole.framework.IGameController;
	
	/**
	 * Base class for all views - has both controller
	 * and model properties; items in the view are
	 * typically databound to their respective properties
	 * in the model
	 * 
	 **/
	public class View extends Group
	{
		protected var _controller:IGameController;
		protected var _model:Model;
		
		public function get controller() : IGameController
		{
			return _controller;
		}
		
		public function set controller(value:IGameController) : void
		{
			_controller = value;
		}
		
		public function get model() : Model
		{
			return _model;
		}
		
		public function set model(value:Model) : void
		{
			_model = value;
		}
	}
}