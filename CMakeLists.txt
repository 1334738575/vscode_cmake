cmake_minimum_required(VERSION 3.10)

# project(vscode_cmake LANGUAGES C CXX CUDA)
project(vscode_cmake)

set(CMAKE_CXX_STANDARD 14)


# find_package(CUDA REQUIRED)
# message(STATUS ${CUDA_VERSION})
# message(STATUS ${CUDA_INCLUDE_DIRS})
# message(STATUS ${CUDA_LIBRARIES})
# # message(FATAL_ERROR ${CUDA_FOUND})

include_directories(include
    ${CUDA_INCLUDE_DIRS})

aux_source_directory(src SRC)
# message(FATAL_ERROR ${SRC})

# if (MSVC)
#     message(FATAL_ERROR ${_MSC_VER})
# endif()

add_executable(${PROJECT_NAME}  
    main.cpp)
    # ${SRC}
    # main.cu)
# cuda_add_executable(${PROJECT_NAME} main.cu)

# target_link_libraries(${PROJECT_NAME}
#     ${CUDA_LIBRARIES})

