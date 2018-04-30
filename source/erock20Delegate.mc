using Toybox.WatchUi as Ui;

class erock20Delegate extends Ui.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() {
        Ui.pushView(new Rez.Menus.MainMenu(), new erock20MenuDelegate(), Ui.SLIDE_UP);
        return true;
    }

}