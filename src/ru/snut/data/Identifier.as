////////////////////////////////////////////////////////////////////////////////
//
//  © 2014 crazybit.ru
//
////////////////////////////////////////////////////////////////////////////////

package ru.snut.data {
	/**
	 * @author					snt
	 * @version					1.0
	 * @playerversion			Flash 10
	 * @langversion				3.0
	 * @date					Apr 4, 2014
	 */
	public class Identifier {
		
		private static var __id:uint;
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		public function Identifier() {
			_id = __id++;
		}
		
		private var _id:uint;
		
		public function get id():uint {
			return _id;
		}
		
		
	}
}