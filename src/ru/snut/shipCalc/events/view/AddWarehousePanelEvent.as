package ru.snut.shipCalc.events.view
{
	import flash.events.Event;
	
	import ru.snut.shipCalc.data.Warehouse;
	
	public class AddWarehousePanelEvent extends Event {
		public static const ADD:String = 'AddWarehousePanelEvent.ADD';
		
		public function AddWarehousePanelEvent(type:String, warehouse:Warehouse) {
			super(type);
			this.warehouse = warehouse;
		}
		
		public var warehouse:Warehouse;
	}
}