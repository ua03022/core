/*
 * $Id$
 */
/*
   creating new index files, seek and found tests
   closing files and reusing existing index file
   DESCENDING INDEX ....
   DELETING ... RECALLING ... BROWSIMG ...... :)
*/
#include "sixapi.ch"

#include "simpleio.ch"

PROCEDURE MAIN()

   LOCAL cFile   := "sixtest.dbf"
   LOCAL aStruct := { ;
      { "MYCHAR" , "C", 10, 0 }, ;
      { "MYDATE" , "D", 8, 0 }, ;
      { "MYNUM"  , "N", 8, 0 }, ;
      { "MYMEMO" , "M", 10, 0 }, ;
      { "MYLOGIC", "L", 1, 0 } }
   LOCAL j, n := seconds(), nArea, cPad
   LOCAL nIndex, cOldColor

   SET CENTURY ON
   SET DATE ANSI

   // This is the usual behaviour of NSX file
   // Erase the Old NSX if we are to create new one
   IF FILE( "sixtest.nsx" )
      FERASE( "sixtest.nsx" )
   ENDIF

   CREATE DBF cFile STRUCT aStruct RDD SDENSX

   USE cFile ALIAS MYALIAS RDD SDENSX VAR nArea EXCLUSIVE

   ? "------------------------------------------------------"
   ? "Test Appending 10,000 Blank Records and Creating Index"
   ? "------------------------------------------------------"
   ? "Area  : ", nArea
   ? "RDD   : " + sx_rddDriver( nArea )
   ? "Start : ", n

   FOR j := 1 TO 10000
      APPEND BLANK
      cPad := PADL( j, 5, "0" )
      FieldPut( MYCHAR, "NAME_" + cPad )
      FieldPut( MYDATE,  date() + j )
      FieldPut( MYNUM,   j )
      FieldPut( MYMEMO,  "This is Record Number " + cPad )
      FieldPut( MYLOGIC, j % 2 == 0 )
   NEXT

   COMMIT

   ?
   ? 'INDEX ON UPPER(MYCHAR) TO SIXTEST DESCENDING'
   ?
   INDEX ON UPPER( MYCHAR ) TO SIXTEST DESCENDING
   ? "End   : ", seconds()
   ? "Time  : ", seconds() - n, "Quick enough ?"
   ?
   ? "Now CLOSE ALL and ReOpen DBF ... Press any key ..."

   PAUSE

   CLOSE ALL

   // ReOpen Database
   USE cFile ALIAS MYALIAS RDD SDENSX VAR nArea SHARED
   // Automatically Open index file if it has same name with DBF
   // Must explisitely set order 1 because we opened one index file
   ?
   ? 'sx_Alias          = ', sx_Alias()
   ? 'sx_SetOrder( 1 )  = ', sx_SetOrder( 1 ), ' was previous order'
   ? 'sx_IndexName( 1 ) = ', sx_IndexName( 1 )
   ?
   ? 'Will GO TOP and Delete even RecNo until EOF ... Press any key ...'
   PAUSE
   ?
   ? "Working ..."
   n := seconds()
   GO TOP
   WHILE !sx_Eof()
      IF FieldGet( MYNUM ) % 2 == 0
         DELETE
      ENDIF
      sx_Skip()
   ENDDO

   ?
   ? 'Deleting even MYNUM completed in', ltrim( str( seconds() - n ) ) + " seconds"
   ?
   ? "Now will browse DBF ... Press any key ..."
   ?

   PAUSE
   cls
   cOldColor = SetColor( "W+/B" )
   BROWSE

   SetColor( cOldColor )
   cls

   ?
   ?
   ?
   ?
   ?
   ?
   ?
   ?
   ?
   ?
   ?
   ? 'Now will GO TOP and RECALL deleted records ... Press any key ...'
   PAUSE

   ?
   ? "Working ...."
   n := seconds()
   GO TOP
   WHILE !sx_Eof()
      IF sx_Deleted()
         RECALL
      ENDIF
      sx_Skip()
   ENDDO

   ?
   ? 'Recalling deleted records completed in', ltrim( str( seconds() - n ) ) + " seconds"
   ?
   ? "Now will browse DBF ... Press any key ..."
   ?
   PAUSE
   cls
   cOldColor = SetColor( "W+/B" )
   BROWSE

   CLOSE ALL
   setcolor( cOldColor )
