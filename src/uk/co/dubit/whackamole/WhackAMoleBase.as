package uk.co.dubit.whackamole
{
	import mx.events.FlexEvent;
	
	import spark.components.Application;
	import spark.components.Group;
	
	import uk.co.dubit.whackamole.framework.IGameController;
	import uk.co.dubit.whackamole.framework.Model;
	import uk.co.dubit.whackamole.framework.View;
	import uk.co.dubit.whackamole.models.MainGame;
	import uk.co.dubit.whackamole.views.IntroductionView;
	import uk.co.dubit.whackamole.views.MainGameView;
	
	
	/**
	 * This main application class implements the IGameController interface
	 * so it can route state change requests from the views; the system is
	 * built around an example mini-IoC-based MVC framework.
	 *  
	 **/ 
	public class WhackAMoleBase extends Application implements IGameController
	{
		public var viewContainer:Group;
				
		public function WhackAMoleBase() : void
		{
			super();
			addEventListener(FlexEvent.CREATION_COMPLETE, onCreationComplete);
		}
		
		public function loadIntroduction() : void
		{
			loadView(IntroductionView);
		}
		
		public function loadMainGame() : void
		{
			loadView(MainGameView, MainGame);
		}
		
		private function loadView(viewClass:Class, modelClass:Class = null) : void
		{
			//Create a new instance of the supplied view
			var view:View = new viewClass();
			if(!view) throw new Error("Could not load view");
			
			//Clear any previous views in the container and add
			viewContainer.removeAllElements();
			viewContainer.addElement(view);
			
			//Property based dependency injection 
			view.controller = this;
			
			//There may or may not be a model required for the
			//requested view; check and instantiate appropriately
			if(modelClass)
			{
				var model:Model = new modelClass() as Model;
				if(!model) throw new Error("Could not load model");
				
				//Give model reference to the controller
				//and link the view up to the model
				model.controller = this;
				view.model = model;
			}
		}
		
		private function onCreationComplete(event:FlexEvent) : void
		{
			//When the application is first created, we want to show the introductory view 
			loadView(IntroductionView);
		}
		
	}
}