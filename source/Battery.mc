using Toybox.System;
using Toybox.Graphics;

module Battery {

	function drawBattery(dc, x, y) {
        
        var batteryPercentage = System.getSystemStats().battery;
        
        dc.setPenWidth(3);
        dc.setColor(Graphics.COLOR_GREEN,Graphics.COLOR_TRANSPARENT);
        
        if (batteryPercentage < 25) {
        	dc.setColor(Graphics.COLOR_RED,Graphics.COLOR_TRANSPARENT);
        } 

        var circlePercentage = batteryPercentage * 360 / 100;
        if (circlePercentage > 0) {
            dc.drawArc(x, y, y, Graphics.ARC_CLOCKWISE, 90, (360 - circlePercentage.toLong() + 90) % 360);
        }

        
	}
        
}