package uk.co.dubit.whackamole.views
{
	import mx.collections.ArrayCollection;
	import mx.effects.Sequence;
	import mx.events.FlexEvent;
	
	import spark.components.Group;
	
	import uk.co.dubit.whackamole.models.MoleGame;
	
	public class MoleGameViewBase extends Group
	{
		public var startAnimation:Sequence;
		
		[Bindable]
		protected var moleHoles:ArrayCollection;
		
		[Bindable]
		protected var _moleGame:MoleGame;
		
		public function MoleGameViewBase() 
		{
			addEventListener(FlexEvent.CREATION_COMPLETE, onCreationComplete);
		}
		
		public function set moleGame(value:MoleGame) : void
		{
			_moleGame = value;
			moleHoles = value.moleHoles;
		}
		
		protected function onCreationComplete(event:FlexEvent) : void
		{
			startAnimation.play();
		}
		
		protected function startAnimationEnd() : void
		{
			_moleGame.start()
		}
	}
}