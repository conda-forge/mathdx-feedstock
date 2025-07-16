cmake_minimum_required(VERSION 3.12)
project(verify_headers VERSION 0.1 LANGUAGES CUDA)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
set(CMAKE_CUDA_ARCHITECTURES 89)

find_package(cublasdx REQUIRED)
find_package(cufftdx REQUIRED)
find_package(curanddx REQUIRED)
find_package(cusolverdx REQUIRED)
find_package(nvcompdx REQUIRED)
find_package(mathdx)

add_executable(cu_all_headers all_headers.cu)

target_link_libraries(cu_all_headers PUBLIC
    mathdx::cublasdx
    mathdx::cufftdx
    mathdx::curanddx
    mathdx::cusolverdx
    mathdx::nvcompdx
)

include(GNUInstallDirs)
install(TARGETS cu_all_headers RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})
