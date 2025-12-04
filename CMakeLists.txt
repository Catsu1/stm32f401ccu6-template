cmake_minimum_required(VERSION 4.2.0)

project(stm32f401ccu6_template
    DESCRIPTION     "Minimal STM32F401CCU6 template"
    HOMEPAGE_URL    "https://github.com/Catsu1/stm32f401ccu6-template"
    LANGUAGES       ASM C CXX 
    VERSION         0.1.0
)

set(OUTPUT "${CMAKE_PROJECT_NAME}_v${PROJECT_VERSION}")

add_executable(${OUTPUT})

target_sources(${OUTPUT}
    PRIVATE
        main.c
        startup_stm32f401ccux.s
        syscalls.c
        system_stm32f4xx.c
)