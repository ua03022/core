#
# $Id$
#

ifeq ($(HB_BUILD_MODE),cpp)
   HB_CMP := gpp
else
   HB_CMP := gcc
endif

OBJ_EXT := .o
LIB_PREF := lib
LIB_EXT := .a

CC := $(HB_CMP)
CC_IN := -c
CC_OUT := -o

CPPFLAGS := -I. -I$(HB_INC_COMPILE)
CFLAGS :=
LDFLAGS :=

ifneq ($(HB_BUILD_WARN),no)
   CFLAGS += -Wall -W
endif

ifneq ($(HB_BUILD_OPTIM),no)
   CFLAGS += -O3
endif

ifeq ($(HB_BUILD_DEBUG),yes)
   CFLAGS += -g
endif

LD := $(HB_CMP)
LD_OUT := -o

LIBPATHS := -L$(LIB_DIR)

LDLIBS := $(foreach lib,$(LIBS),-l$(lib))

ifneq ($(filter hbrtl, $(LIBS)),)
   # Add the specified GT driver library
   ifeq ($(HB_CRS_LIB),)
      HB_CRS_LIB := pdcurses
   endif
   ifneq ($(filter gtcrs, $(LIBS)),)
      LDLIBS += -l$(HB_CRS_LIB)
   endif
endif

LDLIBS += -lm

# NOTE: The empty line directly before 'endef' HAVE TO exist!
#       It causes that every command will be separated by LF
define lib_object
   @$(ECHO) ADDMOD $(file) >> __lib__.tmp

endef

# We have to use script to overcome the DOS limit of max 128 characters
# in commmand line
define create_library
   @$(ECHO) CREATE $(LIB_DIR)/$@ > __lib__.tmp
   $(foreach file,$(^F),$(lib_object))
   @$(ECHO) SAVE >> __lib__.tmp
   @$(ECHO) END >> __lib__.tmp
   $(AR) $(ARFLAGS) $(HB_USER_AFLAGS) -M < __lib__.tmp
endef

# NOTE: The empty line directly before 'endef' HAVE TO exist!
define link_file
   @$(ECHO) $(file) >> __link__.tmp

endef

define link_exe_file
   @$(ECHO) $(LDFLAGS) $(HB_USER_LDFLAGS) $(LD_OUT)$(BIN_DIR)/$@ > __link__.tmp
   $(foreach file,$(^F),$(link_file))
   $(foreach file,$(LIBPATHS),$(link_file))
   $(foreach file,$(LDLIBS),$(link_file))
   -$(LD) @__link__.tmp
endef

AR := ar
ARFLAGS :=
AR_RULE = $(create_library)

LD_RULE = $(link_exe_file)

include $(TOP)$(ROOT)config/rules.mk
