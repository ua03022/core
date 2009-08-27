#
# $Id$
#

# ---------------------------------------------------------------
# Copyright 2009 Viktor Szakats (harbour.01 syenar.hu)
# See COPYING for licensing terms.
#
# This make file will detect optional external components
# used in Harbour core code. Generic function.
# ---------------------------------------------------------------

# Show verbose information
_DET_SHOW_RES := yes

ifeq ($(_DET_SHOW_RES),yes)
   do_info = $(info ! Component: $(1))
else
   do_info =
endif

ifeq ($($(_DET_VAR_HAS_)),)
   ifneq ($($(_DET_VAR_INC_)),no)
      _DET_POS := $(filter-out !%,$(_DET_SUP_FILT))
      _DET_NEG := $(subst !,,$(filter !%,$(_DET_SUP_FILT)))
      ifneq ($(if $(_DET_POS),$(filter $(HB_PLATFORM),$(_DET_POS)),ok),)
         ifeq ($(filter $(HB_PLATFORM),$(_DET_NEG)),)
            ifneq ($(if $(_DET_POS),$(filter $(HB_COMPILER),$(_DET_POS)),ok),)
               ifeq ($(filter $(HB_COMPILER),$(_DET_NEG)),)
                  $(_DET_VAR_HAS_) := $($(_DET_VAR_INC_))
                  ifeq ($($(_DET_VAR_HAS_)),)
                     ifeq ($(HB_XBUILD),)
                        $(_DET_VAR_HAS_) := $(_DET_INC_DEFP)
                     endif
                  endif
                  ifneq ($($(_DET_VAR_HAS_)),)
                     $(_DET_VAR_HAS_) := $(strip $(foreach d,$($(_DET_VAR_HAS_)),$(if $(wildcard $(d)$(_DET_INC_HEAD)),$(d),)))
                     ifeq ($($(_DET_VAR_HAS_)),)
                        $(call do_info,$(_DET_DSP_NAME) not found)
                     else
                        $(call do_info,$(_DET_DSP_NAME) found in $($(_DET_VAR_HAS_)))
                     endif
                  else
                     $(call do_info,$(_DET_DSP_NAME) location not specified)
                  endif
               else
                  $(call do_info,$(_DET_DSP_NAME) not supported with $(HB_COMPILER) compiler)
               endif
            else
               $(call do_info,$(_DET_DSP_NAME) not supported with $(HB_COMPILER) compiler)
            endif
         else
            $(call do_info,$(_DET_DSP_NAME) not supported on $(HB_PLATFORM) platform)
         endif
      else
         $(call do_info,$(_DET_DSP_NAME) not supported on $(HB_PLATFORM) platform)
      endif
      _DET_POS :=
      _DET_NEG :=
   else
      $(call do_info,$(_DET_DSP_NAME) explicitly disabled)
   endif
endif
