add_library(cmsis)

target_sources(cmsis
    PRIVATE
        device/src/system_stm32f4xx.c
        device/src/startup_stm32f401ccux.s

    PUBLIC
        device/src/syscalls.c  

    PUBLIC
        FILE_SET HEADERS
        BASE_DIRS
            core
            device/inc
        FILES
            core/core_cm4.h
            core/cmsis_compiler.h
            core/cmsis_version.h
            device/inc/stm32f4xx.h
            device/inc/stm32f401xc.h
            device/inc/system_stm32f4xx.h     
)

target_compile_definitions(cmsis
    PUBLIC
        STM32F401xC
)

target_compile_options(cmsis
    PUBLIC
        -mcpu=cortex-m4
        -mthumb
        -mfloat-abi=hard
        -mfpu=fpv4-sp-d16 
)

target_link_options(cmsis 
    INTERFACE
        -T${CMAKE_CURRENT_SOURCE_DIR}/device/ld/STM32F401CCUX_FLASH.ld
        -mcpu=cortex-m4
        -mthumb
        -mfloat-abi=hard
        -mfpu=fpv4-sp-d16 
)