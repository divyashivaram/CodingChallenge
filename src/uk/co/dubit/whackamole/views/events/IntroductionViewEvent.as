package uk.co.dubit.whackamole.views.events
{
	import flash.events.Event;
	
	public class IntroductionViewEvent extends Event
	{
		public static const START:String = "introductionStart";
		
		public function IntroductionViewEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}