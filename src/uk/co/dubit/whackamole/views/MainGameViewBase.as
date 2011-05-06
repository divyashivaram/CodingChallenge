package uk.co.dubit.whackamole.views
{
	import flash.utils.setTimeout;
	
	import mx.collections.ArrayCollection;
	import mx.effects.Sequence;
	import mx.events.FlexEvent;
	import mx.utils.OnDemandEventDispatcher;
	
	import spark.components.Button;
	import spark.components.DataGroup;
	
	import uk.co.dubit.whackamole.framework.Model;
	import uk.co.dubit.whackamole.framework.View;
	import uk.co.dubit.whackamole.models.MainGame;
	
	public class MainGameViewBase extends View
	{
		public var startAnimation:Sequence;
		
		[Bindable]
		protected var moleHoles:ArrayCollection;
		
		[Bindable]
		protected var mainGame:MainGame;
		
		public function MainGameViewBase() 
		{
			addEventListener(FlexEvent.CREATION_COMPLETE, onCreationComplete);
		}
		
		override public function set model(value:Model) : void
		{
			//Check as the model is set that it is suitable for
			//this view, and cast it as mainGame for the view
			//to bind to
			super.model = value;
			mainGame = value as MainGame;
			if(!mainGame) throw new Error("Non MainGameModel passed to MainGameView");
			
			moleHoles = mainGame.moleHoles;
		}
		
		protected function onCreationComplete(event:FlexEvent) : void
		{
			startAnimation.play();
		}
		
		protected function startAnimationEnd() : void
		{
			mainGame.start()
		}
	}
}