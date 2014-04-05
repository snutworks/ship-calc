package ru.snut.shipCalc.events.view
{
	import flash.events.Event;
	
	import ru.snut.shipCalc.data.Good;
	
	public class AddGoodPanelEvent extends Event {
		
		public static const ADD:String = 'AddGoodPanelEvent.ADD';
		
		public function AddGoodPanelEvent(type:String, good:Good) {
			super(type);
			this.good = good;
		}
		
		public var good:Good;
	}
}