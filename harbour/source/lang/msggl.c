/*
 * $Id$
 */

/*
 * Harbour Project source code:
 * Language Support Module (GL)
 *
 * Copyright 2000 Jose Lalin <dezac@corevia.com>
 * www - http://www.harbour-project.org
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version, with one exception:
 *
 * The exception is that if you link the Harbour Runtime Library (HRL)
 * and/or the Harbour Virtual Machine (HVM) with other files to produce
 * an executable, this does not by itself cause the resulting executable
 * to be covered by the GNU General Public License. Your use of that
 * executable is in no way restricted on account of linking the HRL
 * and/or HVM code into it.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA (or visit
 * their web site at http://www.gnu.org/).
 *
 */

/* Language name: Galician */
/* ISO language code (2 chars): GL */
/* Codepage: ???? */

#include "hbapilng.h"

static HB_LANG s_lang =
{
   {
      /* Identification */
   
      "GL",                        /* ID */
      "Galician",                  /* Name (in English) */
      "Galego",                    /* Name (in native language) */
      "GL",                        /* RFC ID */
      "850",                       /* Codepage */
      "$Revision$ $Date$",         /* Version */
   
      /* Month names */

      "Xaneiro",
      "Febreiro",
      "Marzal",
      "Abril",
      "Maio",
      "Xunio",
      "Xullo",
      "Agosto",
      "Setembro",
      "Outubro",
      "Novembro",
      "Decembro",

      /* Day names */

      "Domingo",
      "Luns",
      "Martes",
      "M�rcores",
      "Xoves",
      "Venres",
      "S�bado",
   
      /* CA-Cl*pper compatible natmsg items */
   
      "Database Files    # Records    Last Update     Size",
      "Do you want more samples?",
      "Page No.",
      "** Subtotal **",
      "* Subsubtotal *",
      "*** Total ***",
      "Ins",
      "   ",
      "Invalid date",
      "Range: ",
      " - ",
      "Y/N",
      "INVALID EXPRESSION",
   
      /* Error description names */
   
      "Erro desco�ecido",
      "Erro de argumento",
      "Erro de rango",
      "Desbordamento de cadea de caracteres",
      "Desbordamento num�rico",
      "Divisi�n por cero",
      "Erro num�rico",
      "Erro de sintaxe",
      "Operaci�n demasiado complexa",
      "",
      "",
      "Pouca memoria",
      "Funci�n non definida",
      "Non existe o m�todo",
      "Non existe a variable",
      "Non existe o alias",
      "Non existe a variable de instancia",
      "Alias con caracteres non v�lidos",
      "Alias actualmente en uso",
      "",
      "Erro de creaci�n",
      "Erro de apertura",
      "Erro de peche",
      "Erro de lectura",
      "Erro de escritura",
      "Erro de impresi�n",
      "",
      "",
      "",
      "",
      "Operaci�n non soportada",
      "L�mite excedido",
      "Detectouse corrupci�n",
      "Erro no tipo de datos",
      "Erro no ancho dos datos",
      "Area de traballo non usada",
      "Area de traballo non indexada",
      "Requ�rese uso exclusivo",
      "Requ�rese bloqueo",
      "Escritura non autorizada",
      "Fallo no bloqueo ao engadir",
      "Fallo no bloqueo",
      "",
      "",
      "",
      "",
      "array access",
      "array assign",
      "array dimension", 
      "not an array",
      "conditional",
   
      /* Internal error names */
   
      "Unrecoverable error %lu: ",
      "Error recovery failure",
      "No ERRORBLOCK() for error", 
      "Too many recursive error handler calls", 
      "RDD invalid or failed to load",
      "Invalid method type from %s", 
      "hb_xgrab can't allocate memory", 
      "hb_xrealloc called with a NULL pointer", 
      "hb_xrealloc called with an invalid pointer", 
      "hb_xrealloc can't reallocate memory", 
      "hb_xfree called with an invalid pointer", 
      "hb_xfree called with a NULL pointer", 
      "Can\'t locate the starting procedure: \'%s\'",
      "No starting procedure", 
      "Unsupported VM opcode", 
      "Symbol item expected from %s",
      "Invalid symbol type for self from %s", 
      "Codeblock expected from %s", 
      "Incorrect item type on the stack trying to pop from %s",
      "Stack underflow", 
      "An item was going to be copied to itself from %s", 
      "Invalid symbol item passed as memvar %s",
      "Memory buffer overflow",
   
      /* Texts */
   
      "DD/MM/YYYY",
      "S",
      "N"
   }
};

HB_LANG_ANNOUNCE( GL );

HB_CALL_ON_STARTUP_BEGIN( hb_lang_Init_GL )
   hb_langRegister( &s_lang );
HB_CALL_ON_STARTUP_END( hb_lang_Init_GL )
#if ! defined(__GNUC__) && ! defined(_MSC_VER)
   #pragma startup hb_lang_Init_GL
#endif

