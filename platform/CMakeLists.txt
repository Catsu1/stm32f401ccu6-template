target_compile_definitions(${CMAKE_PROJECT_NAME}
    PRIVATE
        STM32F401xC
)

target_compile_options(${CMAKE_PROJECT_NAME}
    PRIVATE
        -mcpu=cortex-m4
        -mthumb
        -mfloat-abi=hard
        -mfpu=fpv4-sp-d16 
        -Wall 
        -Wextra 
        -Werror 
        -Wshadow 
        -Wdouble-promotion 
        -Wundef 
        -ffunction-sections 
        -fdata-sections 
        -fstack-usage
)

target_include_directories(${CMAKE_PROJECT_NAME}
    PRIVATE
        cmsis/core
        cmsis/device
)

target_link_options(${CMAKE_PROJECT_NAME} 
    PRIVATE
        -mcpu=cortex-m4
        -mthumb
        -mfloat-abi=hard
        -mfpu=fpv4-sp-d16 
        -specs=nosys.specs
        -Wl,--print-memory-usage
        -T${CMAKE_SOURCE_DIR}/platform/STM32F401CCUX_FLASH.ld
        -Wl,--gc-sections
)

target_sources(${CMAKE_PROJECT_NAME}
    PRIVATE
        startup_stm32f401ccux.s
        syscalls.c
        system_stm32f4xx.c
)