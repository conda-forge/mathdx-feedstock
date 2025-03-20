cmake_minimum_required(VERSION 3.12)
project(verify_headers VERSION 0.1 LANGUAGES CUDA)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

find_package(mathdx REQUIRED COMPONENTS
    cublasdx cufftdx CONFIG)

add_executable(cu_all_headers all_headers.cu)
set_target_properties(cu_all_headers PROPERTIES CUDA_ARCHITECTURES "89")

target_link_libraries(cu_all_headers PUBLIC 
    mathdx::cublasdx
    mathdx::cufftdx
)

include(GNUInstallDirs)
install(TARGETS cu_all_headers RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})
