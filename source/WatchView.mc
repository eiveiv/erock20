using Toybox.WatchUi;
using Toybox.Graphics;

class WatchView extends WatchUi.WatchFace {

	//Hidden = protected
	hidden var centralX;
    hidden var centralY;

    function initialize() {
         WatchFace.initialize();
    }

    // Load your resources here
    function onLayout(dc) {
        centralX = dc.getWidth() / 2;
        centralY = dc.getHeight() / 2;
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() {
    }

    // Update the view
    function onUpdate(dc) {
        // Call the parent onUpdate function to redraw the layout
        dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_BLACK);
        dc.clear();
        System.println(centralX);
        
        Time.drawTime(dc, centralX, 60);
        
        Date.drawDate(dc, centralX, 155);
        
        Step.drawSteps(dc, centralX, 20);
        
        Battery.drawBattery(dc, centralX, centralY);
        
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() {
    }

}
