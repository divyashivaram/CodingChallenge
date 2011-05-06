package uk.co.dubit.whackamole.framework
{
	/**
	 * Exposes any methods required for Inversion of
	 * Control on the implementing controller
	 * 
	 **/
	public interface IGameController
	{
		function loadIntroduction() : void;
		function loadMainGame() : void;
	}
}