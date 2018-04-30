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
        
        dc.setColor(Graphics.COLOR_DK_GRAY , Graphics.COLOR_TRANSPARENT);
    	dc.drawText(x, y, Graphics.FONT_NUMBER_HOT ,text, Graphics.TEXT_JUSTIFY_CENTER);
	
	}

}