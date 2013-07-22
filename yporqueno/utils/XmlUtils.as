/**
* ArrayUtils: Clase estatica con utilidades para trabajar con xml en AS3.
*   
*   
*   @author Ivan Gajate
*/

/**
* Clase estatica con metodos utiles para trabajar con xml
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
	* Clase estatica con utilidades para trabajar con xml en AS3.
	* @author Ivan Gajate | http://www.yporqueno.es
	* @version 1.00
	* @see http://www.yporqueno.es
	*/
	public class XmlUtils {

		/** Devuelve el nodo XML que coincida con el id pasado. 
		* @param data xml donde buscar el elemento.
		* @param id id que se busca.
		* @return nodo xml resultado. Devuelve null si no se encuentra ninguna coincidencia.
		* @example
		* <listing version="3.0" >
		* 
		* import es.yporqueno.utils.XmlUtils;
		* 
		* var miXml:XML = <contenedor>
		*					<caja>
		*						<item id="expediente1">
		*							Contenido del expediente 1
		*						</item>
		*					</caja>
		*					<caja>
		*						<item id="expediente2">
		*							Contenido del expediente 2
		*						</item>
		*					</caja>
		*				</contenedor>
		*
		*
		* trace(getElementById(miXml, "expediente1")); // Contenido del expediente 1
		* 
		*/
		public static function getElementById(data:XML, id:String):XML{
			return data.descendants().(hasOwnProperty("@id") && @id==id)[0];
		}
		
		
		
		
		
		/** Devuelve un listado (XMLList) con los nodos que tengan el nombre indicado. 
		* @param data xml donde buscar los elementos.
		* @param nombre nombre de los nodos que se buscan.
		* @return XMLList resultado. Devuelve null si no se encuentra ninguna coincidencia.
		* @example
		* <listing version="3.0" >
		* 
		* import es.yporqueno.utils.XmlUtils;
		* 
		* var miXml:XML = <div>
		*						<form id="aficiones">
		*							<input type="checkbox" id="chk0" name="c0">Leer</input> <br />
		*							<input type="checkbox" id="chk1" name="c1">Montar en bici</input> <br />
		*							<input type="checkbox" id="chk2" name="c2">Dormir</input> <br />
		*						</form>
		*					</div>
		*
		*
		* trace(getElementsByName(miXml, "input"));
		* 
		* // <input type="checkbox" id="chk0" name="c0">Leer</input>
		* // <input type="checkbox" id="chk1" name="c1">Montar en bici</input>
		* // <input type="checkbox" id="chk2" name="c2">Dormir</input>
		* 
		*/
		public static function getElementsByName(data:XML, name:String):XMLList{
			return data.descendants(name);
		}
		
		
		
		
		
		/** Devuelve un listado (XMLList) con los nodos que tengan la clase indicada. 
		* @param data xml donde buscar los elementos.
		* @param className nombre de la clase que se buscan.
		* @return XMLList resultado. Devuelve null si no se encuentra ninguna coincidencia.
		* @example
		* <listing version="3.0" >
		* 
		* import es.yporqueno.utils.XmlUtils;
		* 
		* var miXml:XML = <div>
		*						<p class="parrafo">
		*							Esto es un párrafo
		*						</p>
		*						<form>
		*							<input type="checkbox" id="chk0">Leer</input> <br />
		*							<input type="checkbox" id="chk1">Montar en bici</input> <br />
		*							<input type="checkbox" id="chk2">Dormir</input> <br />
		*						</form>
		*						<p class="parrafo">
		*							Esto es otro párrafo diferente, pero con la misma clase
		*						</p>
		*					</div>
		*
		*
		* trace(getElementsByClass(miXml, "parrafo"));
		* 
		* // <p class="parrafo">Esto es un párrafo</p>
		* // <p class="parrafo">Esto es otro párrafo diferente, pero con la misma clase</p>
		* 
		*/
		public static function getElementsByClass(data:XML, className:String):XMLList{
			return data.descendants().(hasOwnProperty("@class") && attribute("class")==className);
		}

	}
}