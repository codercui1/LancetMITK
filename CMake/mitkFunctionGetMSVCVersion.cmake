function(mitkFunctionGetMSVCVersion )

if(MSVC)
  if(MSVC_VERSION GREATER_EQUAL 1910 AND MSVC_VERSION LESS 1920)
    set(VISUAL_STUDIO_PRODUCT_NAME "Visual Studio 2017" PARENT_SCOPE)
    set(VISUAL_STUDIO_VERSION_MAJOR 14 PARENT_SCOPE)
    string(SUBSTRING ${MSVC_VERSION} 2 -1 version_minor)
    set(VISUAL_STUDIO_VERSION_MINOR ${version_minor} PARENT_SCOPE)
  elseif(MSVC_VERSION GREATER_EQUAL 1920 AND MSVC_VERSION LESS 1930)
    set(VISUAL_STUDIO_PRODUCT_NAME "Visual Studio 2019" PARENT_SCOPE)
    set(VISUAL_STUDIO_VERSION_MAJOR 14 PARENT_SCOPE)
    string(SUBSTRING ${MSVC_VERSION} 2 -1 version_minor)
    set(VISUAL_STUDIO_VERSION_MINOR ${version_minor} PARENT_SCOPE)
  elseif(MSVC_VERSION GREATER_EQUAL 1930 AND MSVC_VERSION LESS 1940)
    set(VISUAL_STUDIO_PRODUCT_NAME "Visual Studio 2022" PARENT_SCOPE)
    set(VISUAL_STUDIO_VERSION_MAJOR 14 PARENT_SCOPE)
    string(SUBSTRING ${MSVC_VERSION} 2 -1 version_minor)
    set(VISUAL_STUDIO_VERSION_MINOR ${version_minor} PARENT_SCOPE)
  else()
    message(WARNING "Unknown Visual Studio version ${MSVC_VERSION} (CMake/mitkFunctionGetMSVCVersion.cmake)")
  endif()

  if(CMAKE_VS_PLATFORM_NAME STREQUAL x64)
    set(CMAKE_LIBRARY_ARCHITECTURE x64 PARENT_SCOPE)
  else()
    set(CMAKE_LIBRARY_ARCHITECTURE x86 PARENT_SCOPE)
  endif()
endif()

endfunction()
