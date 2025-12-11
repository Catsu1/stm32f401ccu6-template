cmake_minimum_required(VERSION 4.2.0)

project(stm32f401ccu6_template
    DESCRIPTION     "STM32F401CCU6 project template"
    HOMEPAGE_URL    "https://github.com/Catsu1/stm32f401ccu6-template"
    LANGUAGES       ASM C CXX 
    VERSION         0.1.0
)

add_subdirectory(app)
add_subdirectory(platform)