add_executable(${CMAKE_PROJECT_NAME})

target_sources(${CMAKE_PROJECT_NAME}
    PRIVATE
        main.c
)

set_target_properties(${CMAKE_PROJECT_NAME}
    PROPERTIES 
        SUFFIX ".elf"
)

target_link_libraries(${CMAKE_PROJECT_NAME}
    PRIVATE
        cmsis
)