# Procura pela biblioteca PCRE
# Módulos:
# 	PCRE_INCLUDE_DIRS	- Diretório onde está pcre.h
# 	PCRE_LIBRARIES	- Lista de bibliotecas da pcre.
# 	PCRE_FOUND	- Verdadeiro, caso a biblioteca seja encontrada.

# Procura pelo diretório da biblioteca.
IF (PCRE_INCLUDE_DIRS)
  SET(PCRE_FIND_QUIETLY TRUE)
ENDIF (PCRE_INCLUDE_DIRS)

FIND_PATH(PCRE_INCLUDE_DIR pcre.h)

# Procura pela biblioteca.
FIND_LIBRARY(PCRE_LIBRARY NAMES ${PCRE_NAMES} )

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(PCRE DEFAULT_MSG PCRE_LIBRARY PCRE_INCLUDE_DIR)

IF(PCRE_FOUND)
	SET(PCRE_LIBRARIES ${PCRE_LIBRARY})
	SET(PCRE_INCLUDE_DIRS ${PCRE_INCLUDE_DIR})
ELSE(PCRE_FOUND)
	SET(PCRE_LIBRARIES)
	SET(PCRE_INCLUDE_DIRS)
ENDIF(PCRE_FOUND)

MARK_AS_ADVANCED(PCRE_INCLUDE_DIRS PCRE_LIBRARIES)