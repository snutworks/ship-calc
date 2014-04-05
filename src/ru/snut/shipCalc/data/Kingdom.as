package ru.snut.shipCalc.data {
	import ru.snut.data.Identifier;
	
	public class Kingdom extends Identifier {
		public function Kingdom() {
			super();
		}
		
		private const _warehouses:Vector.<Warehouse> = new Vector.<Warehouse>();
		
		public function addWarehouse(warehouse:Warehouse):void {
			_warehouses.push(warehouse);
		}
		
		public function toString():String {
			return '[Kingdom_' + id + '\n\t' + _warehouses.join('\n\t');
		}
	}
}