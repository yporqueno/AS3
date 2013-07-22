/**
* ArrayUtils: Clase estatica con utilidades para trabajar con Arrays en AS3.
*   
*   
*   @author Ivan Gajate
*/

/**
* Clase estatica con metodos utiles para trabajar con Arrays
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
	
	import flash.display.*;
	
	/**
	* Clase estatica con utilidades para trabajar con Arrays en AS3.
	* @author Ivan Gajate | http://www.yporqueno.es
	* @version 1.01
	* @see http://www.yporqueno.es
	*/
	public class ArrayUtils{
	
		/**
		* Devuelve la suma de un rango de elementos de la matriz original. Se suma desde el elemento <code>startIndex</code> hasta <code>endIndex</code>, sin incluir éste. 
		* <p>Si no se pasa ningún parámetro, devolverá la suma completa de la matriz original.</p>
		* @param array Array numérico que se desea sumar.
		* @param startIndex posición inicial del intervalo que se quiere sumar.
		* @param endIndex posición final del intervalo que se quiere sumar
		* @return Suma del intervalo de valores numéricos del array
		* @example
		* <listing version="3.0" >
		* 
		* import es.yporqueno.utils.ArrayUtils;
		* 
		* var valores:Array = [2, 3, 4];
		* 
		* var suma:Number = ArrayUtils.sum(valores);
		* trace(suma);   // Devuelve 9 (2+3+4)
		* 
		* suma = ArrayUtils.sum(valores, 1);
		* trace(suma);   // Devuelve 7 (3+4)
		* 
		* suma = ArrayUtils.sum(valores, 0, 2);
		* trace(suma);    // Devuelve 5 (2+3) </listing>
		*/
		public static function sum(array:Array, startIndex:int=0, endIndex:int=16777215):Number{
			endIndex = (endIndex == 16777215) ? array.length : endIndex;
			array = array.slice(startIndex, endIndex);
			var suma:Number=0;
			for each(var item:Number in array){
				if(!isNaN(item)){
					suma+=item;
				}
			}
			return suma;
		}
		

		/** Devuelve el valor máximo de un array numerico.
		* @param array Array numérico.
		* @return Valor máximo del array
		* @example
		* <listing version="3.0" >
		* 
		* import es.yporqueno.utils.ArrayUtils;
		* 
		* var valores:Array = [2, 3, 4, -5];
		* 
		* var maximo:Number = ArrayUtils.max(valores);
		* trace(maximo);   // Devuelve 4 </listing>
		* @see #min()
		*/
		public static function max(array:Array):Number{
			var maxVal:Number = array[0];
			for  each(var i:Number in array){
				maxVal=(array[i]>maxVal) ? array[i] : maxVal;
			} 
			return maxVal;
		}
		
		/** Devuelve el valor mínimo de un array numerico.
		* @param array Array numérico.
		* @return Valor mínimo del array
		* @example
		* <listing version="3.0" >
		* 
		* import es.yporqueno.utils.ArrayUtils;
		* 
		* var valores:Array = [2, 3, 4, -5];
		* 
		* var minimo:Number = ArrayUtils.min(valores);
		* trace(minimo);   // Devuelve -5 </listing>
		* @see #max()
		*/
		public static function min(array:Array):Number{
			var minVal:Number = array[0];
			for each(var i:Number in array){
				minVal = (array[i]<minVal) ? array[i] : minVal;    
			}
			return minVal;
		}
		
		/** Devuelve un array con los elementos no repetidos. Hace una comprobacion estricta.
		* @param array Array de valores.
		* @return Array con los valores no repetidos
		* @example
		* <listing version="3.0" >
		* 
		* import es.yporqueno.utils.ArrayUtils;
		* 
		* var valores:Array = ["Iván", "Pepe", "Manolo", "Pepe", "Iván"];
		* 
		* var unicos:Array = ArrayUtils.unique(valores);
		* trace(unicos);   // Devuelve ["Iván", "Pepe", "Manolo"]; </listing>
		*/
		public static function unique(array:Array):Array{
			var uniqueVal:Array = [];
			for each(var item:Object in array){
				if(uniqueVal.indexOf(item)<0){
					uniqueVal.push(item);
				}
			}
			return uniqueVal;
		}
		
		/**
         * 
         * @includeExample Documenation_example.mxml
         **/

	
	}
	
}
