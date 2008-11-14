
/*
 * Harbour Project source code:
 * Source file for the Wvg*Classes
 *
 * Copyright 2008 Pritpal Bedi <pritpal@vouchcac.com>
 * http://www.harbour-project.org
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2, or (at your option)
 * any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 59 Temple Place, Suite 330,
 * Boston, MA 02111-1307 USA (or visit the web site http://www.gnu.org/).
 *
 * As a special exception, the Harbour Project gives permission for
 * additional uses of the text contained in its release of Harbour.
 *
 * The exception is that, if you link the Harbour libraries with other
 * files to produce an executable, this does not by itself cause the
 * resulting executable to be covered by the GNU General Public License.
 * Your use of that executable is in no way restricted on account of
 * linking the Harbour library code into it.
 *
 * This exception does not however invalidate any other reasons why
 * the executable file might be covered by the GNU General Public License.
 *
 * This exception applies only to the code released by the Harbour
 * Project under the name Harbour.  If you copy code from other
 * Harbour Project or Free Software Foundation releases into a copy of
 * Harbour, as the General Public License permits, the exception does
 * not apply to the code that you add in this way.  To avoid misleading
 * anyone as to the status of such modified files, you must delete
 * this exception notice from them.
 *
 * If you write modifications of your own for Harbour, it is your choice
 * whether to permit this exception to apply to your modifications.
 * If you do not wish that, delete this exception notice.
 *
 */
//----------------------------------------------------------------------//
//----------------------------------------------------------------------//
//----------------------------------------------------------------------//
//
//                               EkOnkar
//                         ( The LORD is ONE )
//
//                  Xbase++ Compatible xbpWindow Class
//
//                 Pritpal Bedi  <pritpal@vouchcac.com>
//                              08Nov2008
//
//----------------------------------------------------------------------//
//----------------------------------------------------------------------//
//----------------------------------------------------------------------//

#include 'hbclass.ch'
#include 'common.ch'
#include 'hbgtwvg.ch'

//----------------------------------------------------------------------//

CLASS WvgWindow  INHERIT  WvgPartHandler

   //  CONFIGURATION
   //
   DATA     animate                               INIT  .F.
   DATA     clipChildren                          INIT  .F.
   DATA     clipParent                            INIT  .F.
   DATA     clipSiblings                          INIT  .T.
   DATA     group                                 INIT  0 // XBP_NO_GROUP
   DATA     sizeRedraw                            INIT  .F.
   DATA     tabStop                               INIT  .F.
   DATA     visible                               INIT  .T.

   //  RUNTIME DATA
   //
   DATA     dropZone                              INIT  .F.
   DATA     helpLink
   DATA     tooltipText                           INIT  ''

   DATA     style                                 INIT  0
   DATA     exStyle                               INIT  0
   DATA     hWnd
   DATA     aPos                                  INIT  { 0,0 }
   DATA     aSize                                 INIT  { 0,0 }
   DATA     aPresParams                           INIT  {}
   DATA     objType                               INIT  objTypeNone
   DATA     ClassName                             INIT  ''

   //  CALLBACK SLOTS
   DATA     sl_enter
   DATA     sl_leave
   DATA     sl_lbClick
   DATA     sl_lbDblClick
   DATA     sl_lbDown
   DATA     sl_lbUp
   DATA     sl_mbClick
   DATA     sl_mbDblClick
   DATA     sl_mbDown
   DATA     sl_mbUp
   DATA     sl_motion
   DATA     sl_rbClick
   DATA     sl_rbDblClick
   DATA     sl_rbDown
   DATA     sl_rbUp
   DATA     sl_wheel

   DATA     sl_helpRequest
   DATA     sl_keyboard
   DATA     sl_killInputFocus
   DATA     sl_move
   DATA     sl_paint
   DATA     sl_quit
   DATA     sl_resize
   DATA     sl_setInputFocus
   DATA     sl_dragEnter
   DATA     sl_dragMotion
   DATA     sl_dragLeave
   DATA     sl_dragDrop

   DATA     sl_close
   DATA     sl_setDisplayFocus
   DATA     sl_killDisplayFocus

EXPORTED:
   //  LIFE CYCLE
   METHOD   init()
   METHOD   create()
   METHOD   configure()
   METHOD   destroy()

   //  MANIPULATE
   METHOD   captureMouse()
   METHOD   disable()
   METHOD   enable()
   METHOD   hide()
   METHOD   invalidateRect()
   METHOD   lockPS()
   METHOD   lockUpdate()
   METHOD   setModalState()
   METHOD   setPointer()
   METHOD   setTrackPointer()
   METHOD   setPos()
   METHOD   setPosAndSize()
   METHOD   setSize()
   METHOD   show()
   METHOD   toBack()
   METHOD   toFront()
   METHOD   unlockPS()
   METHOD   winDevice()

   //  SETTINGS
   METHOD   setColorBG()
   METHOD   setColorFG()
   METHOD   setFont()
   METHOD   setFontCompoundName()
   METHOD   setPresParam()

   //  STATUS
   METHOD   currentPos()
   METHOD   currentSize()
   METHOD   getHWND()
   METHOD   getModalState()
   METHOD   hasInputFocus()
   METHOD   isEnabled()
   METHOD   isVisible()

   //  CALLBACKS
   //
   METHOD   enter()                               SETGET
   METHOD   leave()                               SETGET
   METHOD   lbClick()                             SETGET
   METHOD   lbDblClick()                          SETGET
   METHOD   lbDown()                              SETGET
   METHOD   lbUp()                                SETGET
   METHOD   mbClick()                             SETGET
   METHOD   mbDblClick()                          SETGET
   METHOD   mbDown()                              SETGET
   METHOD   mbUp()                                SETGET
   METHOD   motion()                              SETGET
   METHOD   rbClick()                             SETGET
   METHOD   rbDblClick()                          SETGET
   METHOD   rbDown()                              SETGET
   METHOD   rbUp()                                SETGET
   METHOD   wheel()                               SETGET

   //  OTHER MESSAGES
   //
   METHOD   helpRequest()                         SETGET
   METHOD   keyboard()                            SETGET
   METHOD   killInputFocus()                      SETGET
   METHOD   move()                                SETGET
   METHOD   paint()                               SETGET
   METHOD   quit()                                SETGET
   METHOD   resize()                              SETGET
   METHOD   setInputFocus()                       SETGET
   METHOD   dragEnter()                           SETGET
   METHOD   dragMotion()                          SETGET
   METHOD   dragLeave()                           SETGET
   METHOD   dragDrop()                            SETGET

   METHOD   close()                               SETGET
   METHOD   setDisplayFocus()                     SETGET
   METHOD   killDisplayFocus()                    SETGET

   ENDCLASS

//----------------------------------------------------------------------//

METHOD init( oParent, oOwner, aPos, aSize, aPresParams, lVisible ) CLASS WvgWindow

   DEFAULT oParent     TO ::oParent
   DEFAULT oOwner      TO ::oOwner
   DEFAULT aPos        TO ::aPos
   DEFAULT aSize       TO ::aSize
   DEFAULT aPresParams TO ::aPresParams
   DEFAULT lVisible    TO ::visible

   ::WvgPartHandler:init( oParent, oOwner )

   if hb_isArray( aPos )
      ::aPos := aPos
   endif
   if hb_isArray( aSize )
      ::aSize := aSize
   endif
   if hb_isArray( aPresParams )
      ::aPresParams := aPresParams
   endif
   if hb_isLogical( lVisible )
      ::visible := lVisible
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD create( oParent, oOwner, aPos, aSize, aPresParams, lVisible ) CLASS WvgWindow

   DEFAULT oParent     TO ::oParent
   DEFAULT oOwner      TO ::oOwner
   DEFAULT aPos        TO ::aPos
   DEFAULT aSize       TO ::aSize
   DEFAULT aPresParams TO ::aPresParams
   DEFAULT lVisible    TO ::visible

   ::oParent     := oParent
   ::oOwner      := oOwner
   ::aPos        := aPos
   ::aSize       := aSize
   ::aPresParams := aPresParams
   ::visible     := lVisible

   ::WvgPartHandler:create( oParent, oOwner )

   RETURN Self

//----------------------------------------------------------------------//

METHOD configure( oParent, oOwner, aPos, aSize, aPresParams, lVisible ) CLASS WvgWindow

   DEFAULT oParent     TO ::oParent
   DEFAULT oOwner      TO ::oOwner
   DEFAULT aPos        TO ::aPos
   DEFAULT aSize       TO ::sSize
   DEFAULT aPresParams TO ::aPresParams
   DEFAULT lVisible    TO ::visible


   RETURN Self

//----------------------------------------------------------------------//

METHOD destroy() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD captureMouse() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD disable() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD enable() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD hide() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD invalidateRect() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD lockPS() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD lockUpdate() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD setModalState() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD setPointer() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD setTrackPointer() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD setPos() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD setPosAndSize() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD setSize() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD show() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD toBack() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD toFront() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD unlockPS() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD winDevice() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD setColorBG() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD setColorFG() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD setFont() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD setFontCompoundName() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD setPresParam() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD currentPos() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD currentSize() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD getHWND() CLASS WvgWindow

   RETURN ::hWnd

//----------------------------------------------------------------------//

METHOD getModalState() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD hasInputFocus() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD isEnabled() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//

METHOD isVisible() CLASS WvgWindow

   RETURN Self

//----------------------------------------------------------------------//
//                           Callback Methods
//----------------------------------------------------------------------//

METHOD enter( xParam ) CLASS WvgWindow

   if hb_isArray( xParam ) .and. hb_isBlock( ::sl_enter )
      eval( ::sl_enter, xParam, NIL, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_enter := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD leave( xParam ) CLASS WvgWindow

   if hb_isArray( xParam ) .and. hb_isBlock( ::sl_leave )
      eval( ::sl_leave, NIL, NIL, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_leave := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD lbClick( xParam ) CLASS WvgWindow

   if hb_isArray( xParam ) .and. hb_isBlock( ::sl_lbClick )
      eval( ::sl_lbClick, xParam, NIL, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_lbClick := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD lbDblClick( xParam ) CLASS WvgWindow

   if hb_isArray( xParam ) .and. hb_isBlock( ::sl_lbDblClick )
      eval( ::sl_lbDblClick, xParam, NIL, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_lbDblClick := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD lbDown( xParam ) CLASS WvgWindow

   if hb_isArray( xParam ) .and. hb_isBlock( ::sl_lbDown )
      eval( ::sl_lbDown, xParam, NIL, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_lbDown := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD lbUp( xParam ) CLASS WvgWindow

   if hb_isArray( xParam ) .and. hb_isBlock( ::sl_lbUp )
      eval( ::sl_lbUp, xParam, NIL, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_lbUp := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD mbClick( xParam ) CLASS WvgWindow

   if hb_isArray( xParam ) .and. hb_isBlock( ::sl_mbClick )
      eval( ::sl_mbClick, xParam, NIL, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_mbClick := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD mbDblClick( xParam ) CLASS WvgWindow

   if hb_isArray( xParam ) .and. hb_isBlock( ::sl_mbDblClick )
      eval( ::sl_mbDblClick, xParam, NIL, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_mbDblClick := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD mbDown( xParam ) CLASS WvgWindow

   if hb_isArray( xParam ) .and. hb_isBlock( ::sl_mbDown )
      eval( ::sl_mbDown, xParam, NIL, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_mbDown := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD mbUp( xParam ) CLASS WvgWindow

   if hb_isArray( xParam ) .and. hb_isBlock( ::sl_mbUp )
      eval( ::sl_mbUp, xParam, NIL, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_mbUp := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD motion( xParam ) CLASS WvgWindow

   if hb_isArray( xParam ) .and. hb_isBlock( ::sl_motion )
      eval( ::sl_motion, xParam, NIL, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_motion := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD rbClick( xParam ) CLASS WvgWindow

   if hb_isArray( xParam ) .and. hb_isBlock( ::sl_rbClick )
      eval( ::sl_rbClick, xParam, NIL, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_rbClick := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD rbDblClick( xParam ) CLASS WvgWindow

   if hb_isArray( xParam ) .and. hb_isBlock( ::sl_rbDblClick )
      eval( ::sl_rbDblClick, xParam, NIL, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_rbDblClick := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD rbDown( xParam ) CLASS WvgWindow

   if hb_isArray( xParam ) .and. hb_isBlock( ::sl_rbDown )
      eval( ::sl_rbDown, xParam, NIL, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_rbDown := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD rbUp( xParam ) CLASS WvgWindow

   if hb_isArray( xParam ) .and. hb_isBlock( ::sl_rbUp )
      eval( ::sl_rbUp, xParam, NIL, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_rbUp := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD wheel( xParam ) CLASS WvgWindow

   if hb_isArray( xParam ) .and. hb_isBlock( ::sl_wheel )
      eval( ::sl_wheel, xParam, NIL, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_wheel := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//
//                           Other Messages
//----------------------------------------------------------------------//

METHOD close( xParam ) CLASS WvgWindow
   if ::objType == objTypeCrt
      if hb_isNil( xParam ) .and. hb_isBlock( ::sl_close )
         eval( ::sl_close, NIL, NIL, Self )
         RETURN Self
      endif

      if hb_isBlock( xParam ) .or. hb_isNil( xParam )
         ::sl_close := xParam
         RETURN NIL
      endif
   endif
   RETURN Self

//----------------------------------------------------------------------//

METHOD helpRequest( xParam ) CLASS WvgWindow

   if hb_isNil( xParam ) .and. hb_isBlock( ::sl_helpRequest )
      eval( ::sl_helpRequest, NIL, NIL, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_helpRequest := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD keyboard( xParam ) CLASS WvgWindow

   if hb_isNumeric( xParam ) .and. hb_isBlock( ::sl_keyboard )
      eval( ::sl_keyboard, xParam, NIL, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_keyboard := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD killDisplayFocus( xParam ) CLASS WvgWindow
   if ::objType == objTypeCrt
      if hb_isNil( xParam ) .and. hb_isBlock( ::sl_killDisplayFocus )
         eval( ::sl_killDisplayFocus, NIL, NIL, Self )
         RETURN Self
      endif

      if hb_isBlock( xParam ) .or. hb_isNil( xParam )
         ::sl_killDisplayFocus := xParam
         RETURN NIL
      endif
   endif
   RETURN Self

//----------------------------------------------------------------------//

METHOD killInputFocus( xParam ) CLASS WvgWindow

   if hb_isNil( xParam ) .and. hb_isBlock( ::sl_killInputFocus )
      eval( ::sl_killInputFocus, NIL, NIL, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_killInputFocus := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD move( xParam ) CLASS WvgWindow

   if hb_isArray( xParam ) .and. hb_isBlock( ::sl_move )
      eval( ::sl_move, xParam, NIL, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_move := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD paint( xParam ) CLASS WvgWindow

   if hb_isArray( xParam ) .and. hb_isBlock( ::sl_paint )
      eval( ::sl_paint, xParam, NIL, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_paint := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD quit( xParam, xParam1 ) CLASS WvgWindow

   if hb_isNumeric( xParam ) .and. hb_isBlock( ::sl_quit )
      eval( ::sl_quit, xParam, xParam1, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_quit := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD resize( xParam, xParam1 ) CLASS WvgWindow

   if hb_isArray( xParam ) .and. hb_isBlock( ::sl_resize )
      eval( ::sl_resize, xParam, xParam1, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_resize := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//
// ::ObjType == objTypeCrt
METHOD setDisplayFocus( xParam ) CLASS WvgWindow

   if ::objType == objTypeCrt
      if hb_isNil( xParam ) .and. hb_isBlock( ::setDisplayFocus )
         eval( ::setDisplayFocus, NIL, NIL, Self )
         RETURN Self
      endif

      if hb_isBlock( xParam ) .or. hb_isNil( xParam )
         ::setDisplayFocus := xParam
         RETURN NIL
      endif
   endif
   RETURN Self

//----------------------------------------------------------------------//

METHOD setInputFocus( xParam ) CLASS WvgWindow

   if hb_isNil( xParam ) .and. hb_isBlock( ::sl_setInputFocus )
      eval( ::sl_setInputFocus, NIL, NIL, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_setInputFocus := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD dragEnter( xParam, xParam1 ) CLASS WvgWindow

   if hb_isArray( xParam ) .and. hb_isBlock( ::sl_dragEnter )
      eval( ::sl_dragEnter, xParam, xParam1, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_dragEnter := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD dragMotion( xParam ) CLASS WvgWindow

   if hb_isArray( xParam ) .and. hb_isBlock( ::sl_dragMotion )
      eval( ::sl_dragMotion, xParam, NIL, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_dragMotion := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD dragLeave( xParam ) CLASS WvgWindow

   if hb_isNil( xParam ) .and. hb_isBlock( ::sl_dragLeave )
      eval( ::sl_dragLeave, NIL, NIL, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_dragLeave := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//

METHOD dragDrop( xParam, xParam1 ) CLASS WvgWindow

   if hb_isArray( xParam ) .and. hb_isBlock( ::sl_dragDrop )
      eval( ::sl_dragDrop, xParam, xParam1, Self )
      RETURN Self
   endif

   if hb_isBlock( xParam ) .or. hb_isNil( xParam )
      ::sl_dragDrop := xParam
      RETURN NIL
   endif

   RETURN Self

//----------------------------------------------------------------------//
