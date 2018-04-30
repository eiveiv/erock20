using Toybox.System;
using Toybox.Graphics;
using Toybox.WatchUi;
using Toybox.Time.Gregorian;
using Toybox.Time;
using Toybox.Lang;

module Date {

	function drawDate(dc, x, y) {
        
        var moment = Time.now();
        var date = Gregorian.info(moment, Time.FORMAT_LONG);
        var dateString = Lang.format(" $1$ $2$ ", [date.day, date.month]);
        
        dc.setColor(Graphics.COLOR_RED, Graphics.COLOR_TRANSPARENT);
        dc.drawText(x, y, Graphics.FONT_SMALL, dateString, Graphics.TEXT_JUSTIFY_CENTER);
        
	}
        
}