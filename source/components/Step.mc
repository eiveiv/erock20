using Toybox.WatchUi;
using Toybox.System;
using Toybox.Graphics;

module Step {

	function drawSteps(dc, x, y) {
		
		var stepsBitmap = WatchUi.loadResource(Rez.Drawables.steps);
		var stepsNumer = 700;
		
		dc.drawBitmap(x - 55 ,y,stepsBitmap);
		dc.drawText(x , y, Graphics.FONT_SMALL, stepsNumer, Graphics.TEXT_JUSTIFY_CENTER);
	}
	
}