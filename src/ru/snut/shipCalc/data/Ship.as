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
	public class Ship extends Identifier {

		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------

		public function Ship(capacity:uint, travelTime:uint) {
			_capacity = capacity;
			_time = time;
		}
		
		private var _capacity:uint;
		
		public function get capacity():uint {
			return _capacity;
		}
		
		private var _time:uint;
		
		public function get time():uint {
			return _time;
		}
		
		private var _goodsCount:uint;
		
		public function get goodsCount():uint {
			return _goodsCount;
		}
		
		public function set goodsCount(value:uint):void {
			_goodsCount = value;
		}
		
		public function toString():String {
			return ['Ship_' + id, _capacity, _time, _goodsCount].join(' ');
		}
		
	}
}
