/**
* StringUtils: Clase estatica con utilidades para trabajar con cadenas de texto en AS3.
*   
*   
*   @author Ivan Gajate
*/

/**
* Clase estatica con metodos utiles para trabajar con cadenas de texto
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
	* Clase estatica con utilidades para trabajar con cadenas de texto en AS3.
	* @author Ivan Gajate | http://www.yporqueno.es
	* @version 1.00
	* @see http://www.yporqueno.es
	*/
	public class StringUtils {

		/** Recorta la longitud de una frase a un número máximo de caracteres.
		*	Acorta la frase sin romper las palabras, si una palabra se queda a medias, devuelve la cadena hasta el principio de esa palabra, y añade puntos suspensivos (…) al final.
		*	El típico ejemplo es un destacado de una noticia en el que sólo queremos mostrar las primeras palabras.
		* @param string cadena completa que se quiere acortar.
		* @param maxCharacters Número máximo de caracteres que queremos que tenga nuestra cadena.
		* @param append cadena que se añade al final del texto tras ser acortada.
		* @return cadena acortada.
		* @example
		* <listing version="3.0" >
		* 
		* import es.yporqueno.utils.StringUtils;
		* 
		* var miTexto:String = "Vero eros et accumsan et iusto odio dignissim qui blandit praesent";
		*
		* trace(shortenString(miTexto, 50));
		* // Vero eros et accumsan et iusto odio dignissim...
		*
		*/
		public static function shortenString(string:String, maxCharacters:uint, append:String="..."):String {
			if (string.length <= maxCharacters) {
				return string;
			}
			maxCharacters -= append.length;
			// Complete word after blank space
			if (string.substr(maxCharacters, 1) == " ") {
				return string.substr(0, maxCharacters) + append;
			}
			// Incomplete word
			string = string.substr(0, maxCharacters);
			var lastCharacter:Number = string.lastIndexOf(" ");
			string = string.substr(0, lastCharacter) + append;
			return string;
		}
		
		
	
	}
}