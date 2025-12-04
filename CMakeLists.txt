cmake_minimum_required(VERSION 4.2.0)

project(stm32f401ccu6_template
    DESCRIPTION     "Minimal STM32F401CCU6 template"
    HOMEPAGE_URL    "https://github.com/Catsu1/stm32f401ccu6-template"
    LANGUAGES       ASM C CXX 
    VERSION         0.1.0
)

set(OUTPUT "${CMAKE_PROJECT_NAME}_v${PROJECT_VERSION}")

set(CORE_FLAGS
    -mcpu=cortex-m4
    -mthumb
    -mfloat-abi=hard
    -mfpu=fpv4-sp-d16 
)

add_executable(${OUTPUT})

target_sources(${OUTPUT}
    PRIVATE
        main.c
        startup_stm32f401ccux.s
        syscalls.c
        system_stm32f4xx.c
)

target_compile_definitions(${OUTPUT}
    PRIVATE
        STM32F401xC
)

target_compile_options(${OUTPUT}
    PRIVATE
        ${CORE_FLAGS}
)

target_link_options(${OUTPUT} 
    PRIVATE
        ${CORE_FLAGS}
        -T${CMAKE_SOURCE_DIR}/STM32F401CCUX_FLASH.ld
        -Wl,--gc-sections
)