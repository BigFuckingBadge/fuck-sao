
################################################################################
# Automatically-generated file. Do not edit!
################################################################################

ifdef SystemRoot
	SHELL = cmd.exe
	MK_DIR = mkdir
else
	ifeq ($(shell uname), Linux)
		MK_DIR = mkdir -p
	endif

	ifeq ($(shell uname | cut -d _ -f 1), CYGWIN)
		MK_DIR = mkdir -p
	endif

	ifeq ($(shell uname | cut -d _ -f 1), MINGW32)
		MK_DIR = mkdir -p
	endif

	ifeq ($(shell uname | cut -d _ -f 1), MINGW64)
		MK_DIR = mkdir -p
	endif
endif

# List the subdirectories for creating object files
SUB_DIRS +=  \
 \
src \
qtouch \
examples/src \
qtouch/datastreamer

# List the object files
OBJS +=  \
src/cpuint.o \
qtouch/datastreamer/datastreamer_UART_avr.o \
src/bod.o \
qtouch/touch.o \
src/rtc.o \
src/clkctrl.o \
examples/src/usart_basic_example.o \
driver_isr.o \
src/usart_basic.o \
main.o \
atmel_start.o \
examples/src/touch_example.o \
src/slpctrl.o \
src/driver_init.o \
src/protected_io.o

OBJS_AS_ARGS +=  \
"src/cpuint.o" \
"qtouch/datastreamer/datastreamer_UART_avr.o" \
"src/bod.o" \
"qtouch/touch.o" \
"src/rtc.o" \
"src/clkctrl.o" \
"examples/src/usart_basic_example.o" \
"driver_isr.o" \
"src/usart_basic.o" \
"main.o" \
"atmel_start.o" \
"examples/src/touch_example.o" \
"src/slpctrl.o" \
"src/driver_init.o" \
"src/protected_io.o"

# List the dependency files
DEPS := $(OBJS:%.o=%.d)

DEPS_AS_ARGS +=  \
"src/rtc.d" \
"qtouch/touch.d" \
"main.d" \
"examples/src/usart_basic_example.d" \
"src/clkctrl.d" \
"qtouch/datastreamer/datastreamer_UART_avr.d" \
"src/cpuint.d" \
"src/bod.d" \
"src/slpctrl.d" \
"examples/src/touch_example.d" \
"src/protected_io.d" \
"src/driver_init.d" \
"src/usart_basic.d" \
"driver_isr.d" \
"atmel_start.d"

MAKEFILE_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
OUTPUT_FILE_NAME :=AtmelStart
QUOTE := "
OUTPUT_FILE_PATH +=$(OUTPUT_FILE_NAME).elf
OUTPUT_FILE_PATH_AS_ARGS +=$(OUTPUT_FILE_NAME).elf

vpath %.c ../
vpath %.s ../
vpath %.S ../

# All Target
all: $(SUB_DIRS) $(OUTPUT_FILE_PATH)

# Linker target




$(OUTPUT_FILE_PATH): $(OBJS)
	@echo Building target: $@
	@echo Invoking: AVR/GNU Linker
	$(QUOTE)avr-gcc$(QUOTE) -o $(OUTPUT_FILE_NAME).elf $(OBJS_AS_ARGS)  -Wl,--start-group -lm -Wl,--end-group \
-Wl,-Map="$(OUTPUT_FILE_NAME).map" -Wl,--gc-sections \
-mmcu=attiny1616 -B "$(MAKEFILE_DIR)../gcc/dev/attiny1616" \
-L"../qtouch/lib/gcc" -L"../gcc/dev/attiny1616/avrxmega3"  \
-l:libqtm_acq_runtime_t1616_0x0018.a -l:libqtm_touch_key_t1616_0x0002.a -l:libattiny1616.a 
	@echo Finished building target: $@

	"avr-objcopy" -O binary "$(OUTPUT_FILE_NAME).elf" "$(OUTPUT_FILE_NAME).bin"
	"avr-objcopy" -O ihex -R .eeprom -R .fuse -R .lock -R .signature -R .user_signatures \
        "$(OUTPUT_FILE_NAME).elf" "$(OUTPUT_FILE_NAME).hex"
	"avr-objcopy" -j .eeprom --set-section-flags=.eeprom=alloc,load --change-section-lma \
        .eeprom=0 --no-change-warnings -O binary "$(OUTPUT_FILE_NAME).elf" \
        "$(OUTPUT_FILE_NAME).eep" || exit 0
	"avr-objdump" -h -S "$(OUTPUT_FILE_NAME).elf" > "$(OUTPUT_FILE_NAME).lss"
	"avr-size" "$(OUTPUT_FILE_NAME).elf"

# Compiler target(s)




%.o: %.c
	@echo Building file: $<
	@echo AVR/GNU C Compiler
	$(QUOTE)avr-gcc$(QUOTE) -x c -DF_CPU=20000000 -DDEBUG -Os -ffunction-sections -g3 -Wall -c -std=gnu99 \
-mmcu=attiny1616 -B "$(MAKEFILE_DIR)../gcc/dev/attiny1616" \
    -D__tiny1616__ \
-I"../config" -I"../examples/include" -I"../include" -I"../utils" -I"../utils/assembler" -I"../." -I"../documentation" -I"../examples/include" -I"../qtouch" -I"../qtouch/datastreamer" -I"../qtouch/include" -I"../" -I"../include"  \
-MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)"  -o "$@" "$<"

	@echo Finished building: $<

%.o: %.s
	@echo Building file: $<
	@echo AVR/GNU Assembler
	$(QUOTE)avr-gcc$(QUOTE) -x assembler-with-cpp -DF_CPU=20000000 -DDEBUG -Os -ffunction-sections -g3 -Wall -c -std=gnu99 \
-mmcu=attiny1616 -B "$(MAKEFILE_DIR)../gcc/dev/attiny1616" \
    -D__tiny1616__ \
-I"../config" -I"../examples/include" -I"../include" -I"../utils" -I"../utils/assembler" -I"../." -I"../documentation" -I"../examples/include" -I"../qtouch" -I"../qtouch/datastreamer" -I"../qtouch/include" -I"../" -I"../include"  \
-MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)"  -o "$@" "$<"

	@echo Finished building: $<

%.o: %.S
	@echo Building file: $<
	@echo AVR/GNU Preprocessing Assembler
	$(QUOTE)avr-gcc$(QUOTE) -x assembler-with-cpp -DF_CPU=20000000 -DDEBUG -Os -ffunction-sections -g3 -Wall -c -std=gnu99 \
-mmcu=attiny1616 -B "$(MAKEFILE_DIR)../gcc/dev/attiny1616" \
    -D__tiny1616__ \
-I"../config" -I"../examples/include" -I"../include" -I"../utils" -I"../utils/assembler" -I"../." -I"../documentation" -I"../examples/include" -I"../qtouch" -I"../qtouch/datastreamer" -I"../qtouch/include" -I"../" -I"../include"  \
-MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)"  -o "$@" "$<"

	@echo Finished building: $<

# Detect changes in the dependent files and recompile the respective object files.
ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(DEPS)),)
-include $(DEPS)
endif
endif

$(SUB_DIRS):
	$(MK_DIR) "$@"

clean:
	rm -f $(OBJS_AS_ARGS)
	rm -f $(OUTPUT_FILE_PATH)
	rm -f $(DEPS_AS_ARGS)
	rm -f $(OUTPUT_FILE_NAME).a $(OUTPUT_FILE_NAME).hex $(OUTPUT_FILE_NAME).bin \
        $(OUTPUT_FILE_NAME).lss $(OUTPUT_FILE_NAME).eep $(OUTPUT_FILE_NAME).map \
        $(OUTPUT_FILE_NAME).srec
