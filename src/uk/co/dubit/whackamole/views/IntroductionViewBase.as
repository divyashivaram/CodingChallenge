package uk.co.dubit.whackamole.views
{
	import spark.components.Button;
	import uk.co.dubit.whackamole.framework.View;
	
	public class IntroductionViewBase extends View
	{
		public var startButton:Button;
		
		protected function onStartButtonClick() : void
		{
			//Skip straight to the main game
			controller.loadMainGame();
		}
	}
}