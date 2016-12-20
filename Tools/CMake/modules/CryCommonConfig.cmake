find_package(yasli REQUIRED)

add_library(CryCommon INTERFACE IMPORTED)

set (CRYENGINE_SOURCE_DIR "${CMAKE_CURRENT_LIST_DIR}/../../..")

set_property(TARGET CryCommon PROPERTY INTERFACE_INCLUDE_DIRECTORIES
	"${CRYENGINE_SOURCE_DIR}/Code/CryEngine/CryCommon"
	"${CRYENGINE_SOURCE_DIR}/Code/CryEngine/CryCommon/3rdParty"
)

set_property(TARGET CryCommon PROPERTY INTERFACE_LINK_LIBRARIES yasli)