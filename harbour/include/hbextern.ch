/*
 * $Id$
 */

/*
 * Harbour Project source code:
 * The declarations for all harbour defined functions/procedures.
 *
 *
 * Copyright 2000 J. Lefebvre <jfl@mafact.com> & RA. Cuylen <rac@mafact.com>
 * www - http://www.harbour-project.org
 *
 * Copyright 1999 Ryszard Glab <rglab@imid.med.pl>
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

#ifndef HB_EXTERN_CH_
#define HB_EXTERN_CH_

#include "hbsetup.ch"

// Files from: vm
//
//
//symbols from file: vm\arrays.c
//
EXTERNAL ARRAY
EXTERNAL AADD
EXTERNAL ASIZE
EXTERNAL ATAIL
EXTERNAL AINS
EXTERNAL ADEL
EXTERNAL AFILL
EXTERNAL ASCAN
EXTERNAL AEVAL
EXTERNAL ACOPY
EXTERNAL ACLONE
//
//symbols from file: vm\break.c
//
EXTERNAL BREAK
//
//symbols from file: vm\classes.c
//
EXTERNAL __CLSADDMSG
EXTERNAL __CLSNEW
EXTERNAL __CLSDELMSG
EXTERNAL __CLSINST
EXTERNAL __CLSMODMSG
EXTERNAL __OBJGETCLSNAME
EXTERNAL __OBJHASMSG
EXTERNAL __OBJCLONE
EXTERNAL __OBJSENDMSG
EXTERNAL __CLSINSTSUPER
EXTERNAL __CLS_CNTCLSDATA
EXTERNAL __CLS_CNTDATA
EXTERNAL __CLS_DECDATA
EXTERNAL __CLS_INCDATA
EXTERNAL __CLASSNEW
EXTERNAL __CLASSINSTANCE
EXTERNAL __CLASSADD
EXTERNAL __CLASSNAME
EXTERNAL __CLASSSEL
EXTERNAL __GETMESSAGE
EXTERNAL __CLS_PARAM //Added by RaC&JfL
EXTERNAL __CLSPARENT //Added by RaC&JfL
EXTERNAL SENDER      //Added by RaC&JfL
//
//symbols from file: vm\cmdarg.c
//
EXTERNAL HB_ARGCHECK
EXTERNAL HB_ARGSTRING
EXTERNAL HB_ARGC
EXTERNAL HB_ARGV
//
//symbols from file: vm\debug.c
//
EXTERNAL __VMSTKGCOUNT
EXTERNAL __VMSTKGLIST
EXTERNAL __VMSTKLCOUNT
EXTERNAL __VMSTKLLIST
EXTERNAL __VMPARLLIST
EXTERNAL __VMVARLGET
//
//symbols from file: vm\dynsym.c
//
#ifdef HB_EXTENSION
EXTERNAL __DYNSCOUNT
EXTERNAL __DYNSGETNAME
EXTERNAL __DYNSGETINDEX
#endif
//
//symbols from file: vm\fm.c
//
EXTERNAL MEMORY
//
//symbols from file: vm\hvm.c
//
EXTERNAL ERRORLEVEL
EXTERNAL __VMVARSLIST
EXTERNAL __VMVARSGET
//
//symbols from file: vm\initexit.c
//
EXTERNAL __QUIT
//
//symbols from file: vm\memvars.c
//
EXTERNAL __MVPUBLIC
EXTERNAL __MVPRIVATE
EXTERNAL __MVXRELEASE
EXTERNAL __MVRELEASE
EXTERNAL __MVSCOPE
EXTERNAL __MVCLEAR
EXTERNAL __MVDBGINFO
EXTERNAL __MVGET
EXTERNAL __MVPUT
EXTERNAL __MVSAVE
EXTERNAL __MVRESTORE
#ifdef HB_C52_UNDOC
EXTERNAL __QQPUB
#endif
EXTERNAL __MCLEAR
EXTERNAL __MRELEASE
EXTERNAL __MXRELEASE
EXTERNAL __MSAVE
EXTERNAL __MRESTORE
//
//symbols from file: vm\pcount.c
//
EXTERNAL PCOUNT
//
//symbols from file: vm\proc.c
//
EXTERNAL PROCNAME
EXTERNAL PROCLINE
#ifdef HB_C52_UNDOC
EXTERNAL PROCFILE
#endif
//
//symbols from file: vm\pvalue.c
//
#ifdef HB_EXTENSION
EXTERNAL HB_PVALUE
#endif
//
//symbols from file: vm\harbinit.prg
//
EXTERNAL CLIPPER520
#ifdef HB_COMPAT_C53
EXTERNAL CLIPPER530
#endif
EXTERNAL __SETHELPK
//------------------------------------------------------------
// Files from: rtl
//
//
//symbols from file: rtl\binnum.c
//
EXTERNAL BIN2W
EXTERNAL BIN2I
EXTERNAL BIN2L
EXTERNAL I2BIN
EXTERNAL L2BIN
#ifdef HB_COMPAT_XPP
EXTERNAL BIN2U
EXTERNAL W2BIN
EXTERNAL U2BIN
#endif
//
//symbols from file: rtl\console.c
//
EXTERNAL HB_OSNEWLINE
EXTERNAL OUTSTD
EXTERNAL OUTERR
EXTERNAL QQOUT
EXTERNAL QOUT
EXTERNAL SETPOS
EXTERNAL SETPOSBS
EXTERNAL DEVPOS
EXTERNAL DEVOUT
EXTERNAL DISPOUT
EXTERNAL DISPOUTAT
EXTERNAL __EJECT
EXTERNAL PROW
EXTERNAL PCOL
EXTERNAL SETPRC
EXTERNAL SCROLL
EXTERNAL MAXROW
EXTERNAL MAXCOL
EXTERNAL ROW
EXTERNAL COL
EXTERNAL DISPBOX
EXTERNAL DISPBEGIN
EXTERNAL DISPEND
EXTERNAL DISPCOUNT
EXTERNAL ISCOLOR
EXTERNAL NOSNOW
EXTERNAL HB_SHADOW
#ifdef HB_C52_UNDOC
EXTERNAL DBGSHADOW
#endif
EXTERNAL SAVESCREEN
EXTERNAL RESTSCREEN
EXTERNAL SETCURSOR
EXTERNAL SETBLINK
EXTERNAL SETMODE
EXTERNAL __ACCEPT
#ifdef HB_C52_UNDOC
EXTERNAL __ACCEPTSTR
#endif
EXTERNAL HB_COLORINDEX
//
//symbols from file: rtl\copyfile.c
//
EXTERNAL __COPYFILE
//
//symbols from file: rtl\dates.c
//
EXTERNAL CTOD
EXTERNAL DTOC
EXTERNAL DTOS
#ifdef HB_COMPAT_XPP
EXTERNAL STOD
#endif
EXTERNAL HB_STOD
EXTERNAL YEAR
EXTERNAL MONTH
EXTERNAL DAY
EXTERNAL TIME
EXTERNAL DATE
EXTERNAL DOW
EXTERNAL CMONTH
EXTERNAL CDOW
EXTERNAL SECONDS
//
//symbols from file: rtl\descend.c
//
EXTERNAL DESCEND
//
//symbols from file: rtl\dir.c
//
EXTERNAL DIRECTORY
//
//symbols from file: rtl\do.c
//
EXTERNAL DO
EXTERNAL EVAL
//
//symbols from file: rtl\empty.c
//
EXTERNAL EMPTY
//
//symbols from file: rtl\environ.c
//
EXTERNAL OS
EXTERNAL HB_COMPILER
EXTERNAL VERSION
EXTERNAL GETENV
EXTERNAL GETE
EXTERNAL __RUN
//
//symbols from file: rtl\errorapi.c
//
EXTERNAL ERRORNEW
EXTERNAL __ERRINHANDLER
EXTERNAL ERRORBLOCK
EXTERNAL DOSERROR
EXTERNAL __ERRRT_BASE
//
//symbols from file: rtl\filesys.c
//
EXTERNAL FOPEN
EXTERNAL FCREATE
EXTERNAL FREAD
EXTERNAL FWRITE
EXTERNAL FERROR
EXTERNAL FCLOSE
EXTERNAL FERASE
EXTERNAL FRENAME
EXTERNAL FSEEK
EXTERNAL FILE
EXTERNAL FREADSTR
EXTERNAL CURDIR
EXTERNAL DISKSPACE
EXTERNAL HB_FNAMESPLIT
EXTERNAL HB_FNAMEMERGE
#ifdef HB_COMPAT_XPP
EXTERNAL CURDRIVE
#endif
#ifdef HB_COMPAT_53
EXTERNAL DIRCHANGE
EXTERNAL MAKEDIR
EXTERNAL DIRREMOVE
EXTERNAL ISDISK
EXTERNAL DISKCHANGE
EXTERNAL DISKNAME
EXTERNAL FSETDEVMOD
#endif
//
//symbols from file: rtl\hardcr.c
//
EXTERNAL HARDCR
//
//symbols from file: rtl\inkey.c
//
EXTERNAL INKEY
EXTERNAL __KEYBOARD
#ifdef HB_EXTENSION
EXTERNAL HB_KEYPUT
#endif
EXTERNAL NEXTKEY
EXTERNAL LASTKEY
EXTERNAL FKLABEL
EXTERNAL FKMAX
//
//symbols from file: rtl\isprint.c
//
EXTERNAL ISPRINTER
//
//symbols from file: rtl\len.c
//
EXTERNAL LEN
//
//symbols from file: rtl\math.c
//
EXTERNAL ABS
EXTERNAL EXP
EXTERNAL INT
EXTERNAL LOG
EXTERNAL MAX
EXTERNAL MIN
EXTERNAL MOD
EXTERNAL ROUND
EXTERNAL SQRT
//
//symbols from file: rtl\memofile.c
//
EXTERNAL MEMOREAD
EXTERNAL MEMOWRIT
//
//symbols from file: rtl\memoline.c
//
EXTERNAL MEMOLINE
//
//symbols from file: rtl\mlcount.c
//
EXTERNAL MLCOUNT
//
//symbols from file: rtl\mlpos.c
//
EXTERNAL MLPOS
//
//symbols from file: rtl\mouseapi.c
//
#ifdef HB_COMPAT_C53
EXTERNAL MPRESENT
EXTERNAL MHIDE
EXTERNAL MSHOW
EXTERNAL MSETCURSOR
EXTERNAL MROW
EXTERNAL MCOL
EXTERNAL MSETPOS
EXTERNAL MRIGHTDOWN
EXTERNAL MLEFTDOWN
EXTERNAL MDBLCLK
EXTERNAL MSAVESTATE
EXTERNAL MRESTSTATE
EXTERNAL MSETBOUNDS
#endif
#ifdef HB_COMPAT_XPP
EXTERNAL NUMBUTTONS
EXTERNAL SETMOUSE
#endif
//
//symbols from file: rtl\mtran.c
//
EXTERNAL MEMOTRAN
//
//symbols from file: rtl\natmsg.c
//
EXTERNAL ISAFFIRM
EXTERNAL ISNEGATIVE
EXTERNAL NATIONMSG
EXTERNAL _NATSORTVER
EXTERNAL _NATMSGVER
//
//symbols from file: rtl\net.c
//
EXTERNAL NETNAME
//
//symbols from file: rtl\oemansi.c
//
EXTERNAL HB_ANSITOOEM
EXTERNAL HB_OEMTOANSI
#ifdef HB_COMPAT_XPP
EXTERNAL CONVTOOEMCP
EXTERNAL CONVTOANSICP
#endif
//
//symbols from file: rtl\oldbox.c
//
#ifdef HB_C52_UNDOC
EXTERNAL __BOX
EXTERNAL __BOXD
EXTERNAL __BOXS
#endif
//
//symbols from file: rtl\oldclear.c
//
#ifdef HB_C52_UNDOC
EXTERNAL __ATCLEAR
EXTERNAL __CLEAR
#endif
//
//symbols from file: rtl\samples.c
//
EXTERNAL AMPM
EXTERNAL DAYS
EXTERNAL ELAPTIME
EXTERNAL LENNUM
EXTERNAL SECS
EXTERNAL TSTRING
//
//symbols from file: rtl\set.c
//
EXTERNAL SETCANCEL
EXTERNAL __SETCENTURY
EXTERNAL SET
EXTERNAL DEFPATH
EXTERNAL __DEFPATH
//
//symbols from file: rtl\setcolor.c
//
EXTERNAL SETCOLOR
EXTERNAL COLORSELECT
//
//symbols from file: rtl\soundex.c
//
EXTERNAL SOUNDEX
//
//symbols from file: rtl\strings.c
//
EXTERNAL ISALPHA
EXTERNAL ISDIGIT
EXTERNAL ISUPPER
EXTERNAL ISLOWER
EXTERNAL LTRIM
EXTERNAL RTRIM
EXTERNAL TRIM
EXTERNAL ALLTRIM
EXTERNAL PADR
EXTERNAL PAD
EXTERNAL PADL
EXTERNAL PADC
EXTERNAL AT
EXTERNAL RAT
EXTERNAL CHR
EXTERNAL ASC
EXTERNAL LEFT
EXTERNAL RIGHT
EXTERNAL SUBSTR
EXTERNAL LOWER
EXTERNAL UPPER
EXTERNAL REPLICATE
EXTERNAL SPACE
EXTERNAL STUFF
EXTERNAL STRTRAN
EXTERNAL VAL
EXTERNAL STR
EXTERNAL STRZERO
#ifdef HB_EXTENSION
EXTERNAL HB_VALTOSTR
#endif
//
//symbols from file: rtl\tone.c
//
EXTERNAL TONE
//
//symbols from file: rtl\trace.c
//
#ifdef HB_EXTENSION
EXTERNAL HB_TRACESTATE
EXTERNAL HB_TRACELEVEL
#endif
//
//symbols from file: rtl\transfrm.c
//
EXTERNAL TRANSFORM
//
//symbols from file: rtl\type.c
//
EXTERNAL TYPE
//
//symbols from file: rtl\valtype.c
//
EXTERNAL VALTYPE
//
//symbols from file: rtl\word.c
//
EXTERNAL WORD
//
//symbols from file: rtl\xhelp.c
//
EXTERNAL __XHELP
//
//symbols from file: rtl\achoice.prg
//
EXTERNAL ACHOICE
//
//symbols from file: rtl\adir.prg
//
EXTERNAL ADIR
//
//symbols from file: rtl\alert.prg
//
EXTERNAL ALERT
#ifdef HB_C52_UNDOC
EXTERNAL __NONOALERT
#endif
//
//symbols from file: rtl\asort.prg
//
EXTERNAL ASORT
//
//symbols from file: rtl\browdb.prg
//
EXTERNAL TBROWSEDB
#ifdef HB_COMPAT_XPP
EXTERNAL DBSKIPPER
#endif
//
//symbols from file: rtl\browse.prg
//
EXTERNAL BROWSE
//
//symbols from file: rtl\dbedit.prg
//
EXTERNAL DBEDIT
//
//symbols from file: rtl\devoutp.prg
//
EXTERNAL DEVOUTPICT
//
//symbols from file: rtl\dircmd.prg
//
EXTERNAL __DIR
//
//symbols from file: rtl\dummy.prg
//
EXTERNAL ORDSCOPE
#ifdef HB_COMPAT_C53
EXTERNAL ORDCOND
EXTERNAL ORDDESCEND
EXTERNAL ORDISUNIQUE
EXTERNAL ORDKEYADD
EXTERNAL ORDKEYCOUNT
EXTERNAL ORDKEYDEL
EXTERNAL ORDKEYGOTO
EXTERNAL ORDKEYNO
EXTERNAL ORDKEYVAL
EXTERNAL ORDSETRELATION
EXTERNAL ORDSKIPUNIQUE
#endif
#ifdef HB_COMPAT_C53
EXTERNAL DBFILEGET
EXTERNAL DBFILEPUT
EXTERNAL DBINFO
EXTERNAL DBORDERINFO
EXTERNAL DBRECORDINFO
EXTERNAL DBFIELDINFO
#endif
EXTERNAL DBSETRELATION
EXTERNAL DBCLEARRELATION
EXTERNAL MEMOEDIT
EXTERNAL MLCTOPOS
EXTERNAL MPOSTOLC
EXTERNAL __DBAPP
EXTERNAL __DBCOPY
EXTERNAL __DBDELIM
EXTERNAL __DBJOIN
EXTERNAL __DBLIST
EXTERNAL __DBSDF
EXTERNAL __DBSORT
EXTERNAL __DBTOTAL
EXTERNAL __DBUPDATE
EXTERNAL __DBARRANGE
EXTERNAL __DBFLIST
EXTERNAL __DBOPENSDF
EXTERNAL __DBTRANS
EXTERNAL __DBTRANSREC
//
//symbols from file: rtl\fieldbl.prg
//
EXTERNAL FIELDBLOCK
EXTERNAL FIELDWBLOCK
//
//symbols from file: rtl\input.prg
//
#ifdef HB_C52_UNDOC
EXTERNAL __INPUT
#endif
//
//symbols from file: rtl\memvarbl.prg
//
EXTERNAL MEMVARBLOCK
//
//symbols from file: rtl\menuto.prg
//
EXTERNAL __ATPROMPT
EXTERNAL __MENUTO
//
//symbols from file: rtl\objfunc.prg
//
EXTERNAL __OBJHASDATA
EXTERNAL __OBJHASMETHOD
EXTERNAL __OBJGETMSGLIST
EXTERNAL __OBJGETMETHODLIST
EXTERNAL __OBJGETVALUELIST
EXTERNAL __OBJSETVALUELIST
EXTERNAL __OBJADDMETHOD
EXTERNAL __OBJADDINLINE
EXTERNAL __OBJADDDATA
EXTERNAL __OBJMODMETHOD
EXTERNAL __OBJMODINLINE
EXTERNAL __OBJDELMETHOD
EXTERNAL __OBJDELINLINE
EXTERNAL __OBJDELDATA
EXTERNAL __OBJDERIVEDFROM //Added by RaC&JfL
//
//symbols from file: rtl\readkey.prg
//
EXTERNAL READKEY
//
//symbols from file: rtl\setkey.c
//
EXTERNAL SETKEY
#ifdef HB_EXTENSION
EXTERNAL HB_SETKEYARRAY
EXTERNAL HB_SETKEYGET
EXTERNAL HB_SETKEYSAVE
EXTERNAL HB_SETKEYCHECK
#endif
//
//symbols from file: rtl\setta.prg
//
#ifdef HB_C52_UNDOC
EXTERNAL SETTYPEAHEAD
#endif
//
//symbols from file: rtl\tbcolumn.prg
//
EXTERNAL TBCOLUMNNEW
//
//symbols from file: rtl\tbrowse.prg
//
EXTERNAL TBROWSENEW
//
//symbols from file: rtl\tclass.prg
//
EXTERNAL TCLASS
//
//symbols from file: rtl\text.prg
//
EXTERNAL __TEXTSAVE
EXTERNAL __TEXTRESTORE
//
//symbols from file: rtl\tget.prg
//
EXTERNAL GETNEW
EXTERNAL __GET
EXTERNAL _GET_
//
//symbols from file: rtl\tgetlist.prg
//
EXTERNAL READMODAL
EXTERNAL GETREADER
EXTERNAL GETPREVALIDATE
EXTERNAL GETPOSTVALIDATE
EXTERNAL GETDOSETKEY
EXTERNAL READFORMAT
EXTERNAL __SETFORMAT
EXTERNAL READKILL
EXTERNAL __KILLREAD
EXTERNAL GETACTIVE
EXTERNAL READVAR
EXTERNAL READEXIT
EXTERNAL READINSERT
EXTERNAL READUPDATED
EXTERNAL UPDATED
EXTERNAL GETAPPLYKEY
//
//symbols from file: rtl\tlabel.prg
//
EXTERNAL __LABELFORM
//
//symbols from file: rtl\treport.prg
//
EXTERNAL __REPORTFORM
//
//symbols from file: rtl\typefile.prg
//
EXTERNAL __TYPEFILE
//
//symbols from file: rtl\wait.prg
//
EXTERNAL __WAIT
//
//symbols from file: rtl\xsavescr.prg
//
EXTERNAL __XSAVESCREEN
EXTERNAL __XRESTSCREEN
//------------------------------------------------------------
// Files from: rdd
//
//
//symbols from file: rdd\dbcmd.c
//
EXTERNAL _DBF
EXTERNAL _SDF
EXTERNAL _DELIM
EXTERNAL RDDSYS
EXTERNAL AFIELDS
EXTERNAL ALIAS
EXTERNAL DBEVAL
EXTERNAL DBF
EXTERNAL BOF
EXTERNAL DBAPPEND
EXTERNAL DBCLEARFILTER
EXTERNAL DBCLOSEALL
EXTERNAL DBCLOSEAREA
EXTERNAL DBCOMMIT
EXTERNAL DBCOMMITALL
EXTERNAL __DBCONTINUE
EXTERNAL DBCREATE
EXTERNAL DBDELETE
EXTERNAL DBFILTER
EXTERNAL DBGOBOTTOM
EXTERNAL DBGOTO
EXTERNAL DBGOTOP
EXTERNAL __DBLOCATE
EXTERNAL __DBSETLOCATE
EXTERNAL __DBPACK
EXTERNAL DBRECALL
EXTERNAL DBRLOCK
EXTERNAL DBRLOCKLIST
EXTERNAL DBRUNLOCK
EXTERNAL DBSEEK
EXTERNAL DBSELECTAREA
EXTERNAL __DBSETFOUND
EXTERNAL DBSKIP
EXTERNAL DBSETFILTER
EXTERNAL DBSTRUCT
EXTERNAL DBTABLEEXT
EXTERNAL DBUNLOCK
EXTERNAL DBUNLOCKALL
EXTERNAL DBUSEAREA
EXTERNAL __DBZAP
EXTERNAL DELETED
EXTERNAL EOF
EXTERNAL FCOUNT
EXTERNAL FIELDGET
EXTERNAL FIELDNAME
EXTERNAL FIELDPOS
EXTERNAL FIELDPUT
EXTERNAL FLOCK
EXTERNAL FOUND
EXTERNAL HEADER
EXTERNAL INDEXORD
EXTERNAL LASTREC
EXTERNAL LOCK
EXTERNAL LUPDATE
EXTERNAL NETERR
EXTERNAL ORDBAGEXT
EXTERNAL ORDBAGNAME
EXTERNAL ORDCONDSET
EXTERNAL ORDCREATE
EXTERNAL ORDDESTROY
EXTERNAL ORDFOR
EXTERNAL ORDKEY
EXTERNAL ORDLISTADD
EXTERNAL ORDLISTCLEAR
EXTERNAL ORDLISTREBUILD
EXTERNAL ORDNAME
EXTERNAL ORDNUMBER
EXTERNAL ORDSETFOCUS
EXTERNAL RDDLIST
EXTERNAL RDDNAME
EXTERNAL RDDREGISTER
EXTERNAL RECCOUNT
EXTERNAL RECNO
EXTERNAL RECSIZE
EXTERNAL RLOCK
EXTERNAL SELECT
EXTERNAL USED
EXTERNAL __RDDSETDEFAULT
EXTERNAL RDDSETDEFAULT
EXTERNAL DBSETDRIVER
//
//symbols from file: rdd\dbf1.c
//
EXTERNAL _DBFC
EXTERNAL DBF_GETFUNCTABLE
//
//symbols from file: rdd\dbnubs.c
//
EXTERNAL DBREINDEX
EXTERNAL DBCREATEINDEX
EXTERNAL DBCLEARINDEX
EXTERNAL DBSETINDEX
EXTERNAL DBSETORDER
#ifdef HB_C52_UNDOC
EXTERNAL __DBSEEK
EXTERNAL __DBSKIP
EXTERNAL __DBGOTOP
EXTERNAL __DBGOBOTTOM
EXTERNAL __DBGOTO
EXTERNAL __DBAPPEND
EXTERNAL __DBDELETE
EXTERNAL __DBRECALL
EXTERNAL __DBCOMMIT
EXTERNAL __DBCOMMITALL
EXTERNAL __DBUNLOCK
EXTERNAL __DBUNLALL
EXTERNAL __DBSETFILTER
EXTERNAL __DBCLEARRELATION
EXTERNAL __DBSETRELATION
EXTERNAL __DBREINDEX
EXTERNAL __DBCREATINDEX
EXTERNAL __DBCLEARINDEX
EXTERNAL __DBSETINDEX
EXTERNAL __DBSETORDER
EXTERNAL __DBCLOSEAREA
EXTERNAL __DBCLOSE
EXTERNAL __DBUSE
EXTERNAL __DBSELECT
#endif
//
//symbols from file: rdd\delim1.c
//
EXTERNAL _DELIMC
EXTERNAL DELIM_GETFUNCTABLE
//
//symbols from file: rdd\sdf1.c
//
EXTERNAL _SDFC
EXTERNAL SDF_GETFUNCTABLE
//
//symbols from file: rdd\dbstrux.prg
//
EXTERNAL __DBCOPYSTRUCT
EXTERNAL __DBCOPYXSTRUCT
EXTERNAL __DBCREATE
#ifdef HB_C52_UNDOC
EXTERNAL __FLEDIT
#endif
EXTERNAL __DBSTRUCTFILTER
//
//symbols from file: rdd\rddord.prg
//
EXTERNAL INDEXEXT
EXTERNAL INDEXKEY
//------------------------------------------------------------
// Files from: pp
//
//
//symbols from file: pp\hbpplib.c
//
#ifdef HB_EXTENSION
EXTERNAL __PREPROCESS
#endif

#ifdef HB_EXTENSION
EXTERNAL HB_FSIZE
EXTERNAL HB_FTEMPNAME
EXTERNAL HB_FTEMPCREATE
#endif

EXTERNAL __HRBRUN

EXTERNAL HB_LANGSELECT
EXTERNAL HB_LANGNAME

#ifdef HB_COMPAT_C53
EXTERNAL TOPBAR
EXTERNAL POPUP
EXTERNAL MENUITEM
#endif

#endif /* HB_EXTERN_CH_ */
