using Toybox.WatchUi as Ui;
using Toybox.Graphics as Gfx;
using Toybox.System as Sys;

class erock20View extends Ui.WatchFace {

	hidden var cx;
    hidden var cy;

    function initialize() {
         WatchFace.initialize();
    }

    // Load your resources here
    function onLayout(dc) {
        cx = dc.getWidth() / 2;
        cy = dc.getHeight() / 2;
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() {
    }

    // Update the view
    function onUpdate(dc) {
        // Call the parent onUpdate function to redraw the layout
        dc.setColor(Gfx.COLOR_BLACK, Gfx.COLOR_BLACK);
        dc.clear();
        System.println(cx);
        Time.drawTime(dc, cx, 60);
        
        Date.drawDate(dc, cx, 155);
        Step.drawSteps(dc, cx, 20);
        Battery.drawBattery(dc, cx, cy);
        
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() {
    }

}
