/**
* ArrayUtils: Clase estatica con utilidades para trabajar con numeros en AS3.
*   
*   
*   @author Ivan Gajate
*/

/**
* Clase estatica con metodos utiles para trabajar con numeros
* 
* Copyright (C) 2009  Ivan Gajate
* 
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public License
* as published by the Free Software Foundation; either version 2
* of the License, or (at your option) any later version.
* 
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
* 
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
* 
* http://www.yporqueno.es
* 
*/

package es.yporqueno.utils{

	/**
	* Clase estatica con utilidades para trabajar con numeros en AS3.
	* @author Ivan Gajate | http://www.yporqueno.es
	* @version 1.00
	* @see http://www.yporqueno.es
	*/
	public class NumberUtils {

		/** Poen ceros delante de un numero para que tenga un numero determinado de digitos 
		* @param number Numero original al que se le quiere poner mas digitos.
		* @return String con el numero de digitos correcto.
		* @example
		* <listing version="3.0" >
		* 
		* import es.yporqueno.utils.NumberUtils;
		* 
		* trace(addZeroBefore(345, 4)); // 0345
		* 
		*/
		public static  function addZeroBefore(number:uint,digits:uint):String {
			var numDig:Number=digits - String(number).length;
			if (numDig <= 0) {
				return String(number);
			}
			numDig=Math.pow(10,numDig);
			var stringDig:String=String(numDig).substring(1);
			return stringDig + String(number);
		}
		
		//
		public static function get rndSign():int{
			var rnd:int = (Math.round(Math.random()) == 0) ? -1 : 1;
			return rnd;
		}
		
		
		

	}
}