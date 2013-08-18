# Locate KDL install directory

# This module defines
# kdl_codyco_INSTALL where to find include, lib, bin, etc.
# kdl_codyco_FOUND, is set to true

# set flag for whether items are required or not
SET(IS_REQUIRED)
IF (kdl_codyco_FIND_REQUIRED)
    SET(IS_REQUIRED "REQUIRED")
ENDIF (kdl_codyco_FIND_REQUIRED)

find_package(Eigen3 3.0 QUIET)
# find kdl_codyco itself


IF(MSVC)
    message( "Looking for kdl_codyco in: /usr/local")
    set(kdl_codyco_INCLUDE_DIRS "/usr/local/include" "${Orocos-KDL_INCLUDE_DIRS}" "${Eigen3_INCLUDE_DIRS}" )
    set(kdl_codyco_LIBRARY_DIRS "/usr/local/lib" "${Orocos-KDL_LIBRARY_DIRS}" )
    set(kdl_codyco_LIBRARY_RELEASE "kdl_codyco")
    set(kdl_codyco_LIBRARY_DEBUG "kdl_codycod")
    set(kdl_codyco_LIBRARIES optimized "${kdl_codyco_LIBRARY_RELEASE}" debug "${kdl_codyco_LIBRARY_DEBUG}")
   set(CMAKE_DEBUG_POSTFIX "d")
ELSE()
    message( "Looking for kdl_codyco in: /usr/local")
    set(kdl_codyco_INCLUDE_DIRS "/usr/local/include" "${Orocos-KDL_INCLUDE_DIRS}" "${Eigen3_INCLUDE_DIRS}" )
    set(kdl_codyco_LIBRARY_DIRS "/usr/local/lib" "${Orocos-KDL_LIBRARY_DIRS}" )
    set(kdl_codyco_LIBRARY "kdl_codyco")
    set(kdl_codyco_LIBRARIES "${kdl_codyco_LIBRARY}")
 
ENDIF()

set(kdl_codyco_FOUND TRUE)
IF( kdl_codyco_FOUND )
  IF(NOT kdl_codyco_FIND_QUIETLY)
    message(STATUS "   Includes in: ${kdl_codyco_INCLUDE_DIRS}")
    message(    "Compiler flags: ${kdl_codyco_CFLAGS}")  
    message("   Libraries: ${kdl_codyco_LIBRARIES}")
    message("   Libraries in: ${kdl_codyco_LIBRARY_DIRS}")
    message("   Linker flags : ${kdl_codyco_LD_FLAGS}")
    message("   Defines: ${kdl_codyco_DEFINES}")
  ENDIF(NOT kdl_codyco_FIND_QUIETLY)

ELSE(kdl_codyco_FOUND)  
  IF(kdl_codyco_FIND_REQUIRED)
    MESSAGE(FATAL_ERROR "Could not find kdl_codyco")
  ENDIF(kdl_codyco_FIND_REQUIRED)
ENDIF ( kdl_codyco_FOUND )
