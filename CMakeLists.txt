cmake_minimum_required(VERSION 3.22)

project(path-tracing-cpp)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif()

# Apple clang ships without OpenMP support; point FindOpenMP at Homebrew's libomp
if(APPLE AND CMAKE_CXX_COMPILER_ID STREQUAL "AppleClang")
    execute_process(COMMAND brew --prefix libomp
                    OUTPUT_VARIABLE LIBOMP_PREFIX OUTPUT_STRIP_TRAILING_WHITESPACE)
    set(OpenMP_C_FLAGS "-Xclang -fopenmp -I${LIBOMP_PREFIX}/include")
    set(OpenMP_CXX_FLAGS "-Xclang -fopenmp -I${LIBOMP_PREFIX}/include")
    set(OpenMP_C_LIB_NAMES omp)
    set(OpenMP_CXX_LIB_NAMES omp)
    set(OpenMP_omp_LIBRARY ${LIBOMP_PREFIX}/lib/libomp.dylib)
endif()

find_package(OpenMP REQUIRED)

set(SRC_DIR "${CMAKE_CURRENT_SOURCE_DIR}/src")

set(PPM_WRITER_DIR "${CMAKE_CURRENT_SOURCE_DIR}/ppm_writer")

file(GLOB_RECURSE SOURCES "${SRC_DIR}/*.cpp" "${PPM_WRITER_DIR}/ppm_writer.cpp")

add_executable(render ${SOURCES})

target_link_libraries(render m OpenMP::OpenMP_CXX)

target_include_directories(render PUBLIC "${SRC_DIR}" "${PPM_WRITER_DIR}")