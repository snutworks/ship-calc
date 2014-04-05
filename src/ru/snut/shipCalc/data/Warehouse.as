////////////////////////////////////////////////////////////////////////////////
//
//  © 2014 crazybit.ru
//
////////////////////////////////////////////////////////////////////////////////

package ru.snut.shipCalc.data {
	import ru.snut.data.Identifier;
	
	/**
	 * @author					snt
	 * @version					1.0
	 * @playerversion			Flash 10
	 * @langversion				3.0
	 * @date					Apr 4, 2014
	 */
	public class Warehouse extends Identifier {
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		public function Warehouse(name:String) {
			super();
			this.name = name;
		}
		
		//--------------------------------------------------------------------------
		//
		//  Variables
		//
		//--------------------------------------------------------------------------
		
		private const _needs:Vector.<Good> = new Vector.<Good>();
		
		private const _needsHash:Object = new Object();
		
		private const _stock:Vector.<Good> = new Vector.<Good>();
		
		private const _stockHash:Object = new Object();
		
		//--------------------------------------------------------------------------
		//
		//  Properties
		//
		//--------------------------------------------------------------------------
		
		public var name:String;
		
		//--------------------------------------------------------------------------
		//
		//  Public methods
		//
		//--------------------------------------------------------------------------
		
		public function addNeed(good:Good):void {
			_needs.push(good);
			_needsHash[good.type] = good;
		}
		
		public function get needs():Vector.<Good> {
			return _needs.slice();
		}
		
		public function addStock(good:Good):void {
			_stock.push(good);
			_stockHash[good.type] = good;
		}
		
		public function getNeedByType(type:uint):Good {
			return _needsHash[type];
		}
		
		public function hasGoodInStockByType(type:uint):Boolean {
			return _stockHash[type];
		}
		
		private function get stock():Vector.<Good> {
			return _stock.slice();
		}
		
		public function sort(sortF:Function):void {
			_needs.sort(sortF);
		}
		
		public function toString():String {
			return '[Warehouse_' + id + '\n\t' + _needs.join('\n\t') + '\n]';
		}
		
	}
}