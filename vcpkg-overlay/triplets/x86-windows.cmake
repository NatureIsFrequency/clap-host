# https://vcpkg.io/en/docs/users/triplets.html

set(VCPKG_TARGET_ARCHITECTURE x86)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE static)

set(VCPKG_C_FLAGS "/Os")
set(VCPKG_CXX_FLAGS "/Os")

if(NOT PORT MATCHES "harfbuzz")
    # harfbuzz is badly packaged for now, so we also make the debug build
    # https://github.com/microsoft/vcpkg/issues/22680
    set(VCPKG_BUILD_TYPE release)
endif()

set(QT_NAMESPACE ClapHost)
