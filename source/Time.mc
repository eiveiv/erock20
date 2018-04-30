using Toybox.System as Sys;
using Toybox.Graphics;

module Time {

	var textWidth;
	var textHeight;
	
	
	//dc = device context
	function drawTime(dc, x, y) {
	
		var time = Sys.getClockTime();
		var hours = time.hour;
		var minutes = time.min.format("%02d");
        var seconds = time.sec.format("%02d");
        var text = hours + ":" + minutes + ":" + seconds;
        //var height = y * 1,5;
        
        
        dc.setColor(Graphics.COLOR_RED , Graphics.COLOR_TRANSPARENT);
    	dc.drawText(
        	x,                      // gets the width of the device and divides by 2
        	y,                     // gets the height of the device and divides by 2
        	Graphics.FONT_NUMBER_HOT ,                    // sets the font size
        	text,                          // the String to display
        	Graphics.TEXT_JUSTIFY_CENTER            // sets the justification for the text
                );
	
	}

}