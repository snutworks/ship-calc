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
	public class Good extends Identifier {

		//--------------------------------------------------------------------------
		//
		//  Class constants
		//
		//--------------------------------------------------------------------------
		
		public static const TYPE_FISH:uint = 1; //492
		public static const TYPE_BREAD:uint = 2; //242
		public static const TYPE_SPECIES:uint = 3; //72,5
		public static const TYPE_MEAT:uint = 4; //30.1
		
		public static const TYPE_MILK:uint = 5; //588
		public static const TYPE_CIDER:uint = 6; //215
		public static const TYPE_BEER:uint = 7; //72.5
		public static const TYPE_WINE:uint = 8; //15.9
		
		public static const TYPE_SHIRTS_1:uint = 9; //319
		public static const TYPE_SHIRTS_2:uint = 10; //144
		public static const TYPE_SHIRTS_3:uint = 11; //23
		public static const TYPE_SHIRTS_4:uint = 12; //23
		
		public static const TYPE_BOOKS:uint = 13; //72.5
		public static const TYPE_CANDLESTICK:uint = 14; //14.1
				
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------

		public function Good(type:uint, count:Number) {
			super();
			_type = type;
			_count = count;
		}
		
		private var _type:uint;
		
		public function get type():uint {
			return _type;
		}
		
		private var _count:Number;
		
		public function get count():Number {
			return _count;
		}
		
		public function toString():String {
			return '[Good \t' + _type + '\t' + _count + ']';
		}
	}
}
