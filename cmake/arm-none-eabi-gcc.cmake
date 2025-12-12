set(CMAKE_SYSTEM_NAME                   Generic)
set(CMAKE_SYSTEM_PROCESSOR              arm)

set(CMAKE_TRY_COMPILE_TARGET_TYPE       STATIC_LIBRARY)

set(CMAKE_AR                            arm-none-eabi-ar)
set(CMAKE_ASM_COMPILER                  arm-none-eabi-gcc)
set(CMAKE_C_COMPILER                    arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER                  arm-none-eabi-g++)
set(CMAKE_LINKER                        arm-none-eabi-ld)
set(CMAKE_OBJCOPY                       arm-none-eabi-objcopy)
set(CMAKE_RANLIB                        arm-none-eabi-ranlib)
set(CMAKE_SIZE                          arm-none-eabi-size)
set(CMAKE_STRIP                         arm-none-eabi-strip)
set(CMAKE_GCOV                          arm-none-eabi-gcov)

set(C_WARNING_FLAGS                     "-Wall -Wextra -Wshadow -Wdouble-promotion")
set(CMAKE_C_FLAGS                       "${C_WARNING_FLAGS} -ffunction-sections -fdata-sections -fstack-usage" CACHE INTERNAL "")

set(CMAKE_ASM_FLAGS_DEBUG               -g CACHE INTERNAL "")
set(CMAKE_ASM_FLAGS_RELEASE             -O2 CACHE INTERNAL "")

set(CMAKE_C_FLAGS_DEBUG                 "-Og -g" CACHE INTERNAL "")
set(CMAKE_C_FLAGS_RELEASE               -O2 CACHE INTERNAL "")

set(CMAKE_EXE_LINKER_FLAGS              "--specs=nosys.specs -Wl,--print-memory-usage -Wl,--gc-sections" CACHE INTERNAL "")

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM   NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY   ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE   ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE   ONLY)