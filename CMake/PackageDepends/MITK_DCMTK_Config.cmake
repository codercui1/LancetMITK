if(NOT WIN32 AND NOT APPLE)
  set(MISSING_LIBS_REQUIRED_BY_DCMTK tiff z)
endif()

if(NOT DCMTK_FOUND)
  find_package(DCMTK REQUIRED)
endif()

list(APPEND ALL_INCLUDE_DIRECTORIES ${DCMTK_INCLUDE_DIRS})
list(APPEND ALL_LIBRARIES ${DCMTK_LIBRARIES} ${MISSING_LIBS_REQUIRED_BY_DCMTK})