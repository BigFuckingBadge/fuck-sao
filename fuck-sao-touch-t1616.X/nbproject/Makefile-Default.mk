#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-Default.mk)" "nbproject/Makefile-local-Default.mk"
include nbproject/Makefile-local-Default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/qtouch-t1616.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/qtouch-t1616.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=qtouch/touch.c src/clkctrl.c src/cpuint.c src/protected_io.S main.c driver_isr.c atmel_start.c src/driver_init.c src/rtc.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/qtouch/touch.o ${OBJECTDIR}/src/clkctrl.o ${OBJECTDIR}/src/cpuint.o ${OBJECTDIR}/src/protected_io.o ${OBJECTDIR}/main.o ${OBJECTDIR}/driver_isr.o ${OBJECTDIR}/atmel_start.o ${OBJECTDIR}/src/driver_init.o ${OBJECTDIR}/src/rtc.o
POSSIBLE_DEPFILES=${OBJECTDIR}/qtouch/touch.o.d ${OBJECTDIR}/src/clkctrl.o.d ${OBJECTDIR}/src/cpuint.o.d ${OBJECTDIR}/src/protected_io.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/driver_isr.o.d ${OBJECTDIR}/atmel_start.o.d ${OBJECTDIR}/src/driver_init.o.d ${OBJECTDIR}/src/rtc.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/qtouch/touch.o ${OBJECTDIR}/src/clkctrl.o ${OBJECTDIR}/src/cpuint.o ${OBJECTDIR}/src/protected_io.o ${OBJECTDIR}/main.o ${OBJECTDIR}/driver_isr.o ${OBJECTDIR}/atmel_start.o ${OBJECTDIR}/src/driver_init.o ${OBJECTDIR}/src/rtc.o

# Source Files
SOURCEFILES=qtouch/touch.c src/clkctrl.c src/cpuint.c src/protected_io.S main.c driver_isr.c atmel_start.c src/driver_init.c src/rtc.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-Default.mk ${DISTDIR}/qtouch-t1616.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATtiny1616
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/qtouch/touch.o: qtouch/touch.c  .generated_files/flags/Default/ebda0f6334bf5de4921b7b2019b47dfb0a2f43e .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/qtouch" 
	@${RM} ${OBJECTDIR}/qtouch/touch.o.d 
	@${RM} ${OBJECTDIR}/qtouch/touch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"qtouch/include" -I"qtouch" -I"examples/include" -I"documentation" -I"." -I"utils/assembler" -I"utils" -I"qtouch/datastreamer" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)   -L"qtouch/lib/gcc" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/qtouch/touch.o.d" -MT "${OBJECTDIR}/qtouch/touch.o.d" -MT ${OBJECTDIR}/qtouch/touch.o -o ${OBJECTDIR}/qtouch/touch.o qtouch/touch.c 
	
${OBJECTDIR}/src/clkctrl.o: src/clkctrl.c  .generated_files/flags/Default/18a4e93f763339c1056029c95d8e8f19726dd9f7 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/clkctrl.o.d 
	@${RM} ${OBJECTDIR}/src/clkctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"qtouch/include" -I"qtouch" -I"examples/include" -I"documentation" -I"." -I"utils/assembler" -I"utils" -I"qtouch/datastreamer" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)   -L"qtouch/lib/gcc" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/clkctrl.o.d" -MT "${OBJECTDIR}/src/clkctrl.o.d" -MT ${OBJECTDIR}/src/clkctrl.o -o ${OBJECTDIR}/src/clkctrl.o src/clkctrl.c 
	
${OBJECTDIR}/src/cpuint.o: src/cpuint.c  .generated_files/flags/Default/dc7a5b25c3d1b913e9cc84080859bf85060ed455 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/src/cpuint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"qtouch/include" -I"qtouch" -I"examples/include" -I"documentation" -I"." -I"utils/assembler" -I"utils" -I"qtouch/datastreamer" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)   -L"qtouch/lib/gcc" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/cpuint.o.d" -MT "${OBJECTDIR}/src/cpuint.o.d" -MT ${OBJECTDIR}/src/cpuint.o -o ${OBJECTDIR}/src/cpuint.o src/cpuint.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Default/82a9c5513d5b4d1c3211d8f4e66699acec066b88 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"qtouch/include" -I"qtouch" -I"examples/include" -I"documentation" -I"." -I"utils/assembler" -I"utils" -I"qtouch/datastreamer" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)   -L"qtouch/lib/gcc" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/driver_isr.o: driver_isr.c  .generated_files/flags/Default/bffb53b9b7442074ac9d8b79e6665907905804b4 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_isr.o.d 
	@${RM} ${OBJECTDIR}/driver_isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"qtouch/include" -I"qtouch" -I"examples/include" -I"documentation" -I"." -I"utils/assembler" -I"utils" -I"qtouch/datastreamer" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)   -L"qtouch/lib/gcc" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/driver_isr.o.d" -MT "${OBJECTDIR}/driver_isr.o.d" -MT ${OBJECTDIR}/driver_isr.o -o ${OBJECTDIR}/driver_isr.o driver_isr.c 
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  .generated_files/flags/Default/5dfb2582c4abc25143ebfcf259cd02bd78b1b324 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/atmel_start.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"qtouch/include" -I"qtouch" -I"examples/include" -I"documentation" -I"." -I"utils/assembler" -I"utils" -I"qtouch/datastreamer" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)   -L"qtouch/lib/gcc" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/atmel_start.o.d" -MT "${OBJECTDIR}/atmel_start.o.d" -MT ${OBJECTDIR}/atmel_start.o -o ${OBJECTDIR}/atmel_start.o atmel_start.c 
	
${OBJECTDIR}/src/driver_init.o: src/driver_init.c  .generated_files/flags/Default/9729222b3da897e4f9b82271759c9c4b5a15b0a0 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/driver_init.o.d 
	@${RM} ${OBJECTDIR}/src/driver_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"qtouch/include" -I"qtouch" -I"examples/include" -I"documentation" -I"." -I"utils/assembler" -I"utils" -I"qtouch/datastreamer" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)   -L"qtouch/lib/gcc" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/driver_init.o.d" -MT "${OBJECTDIR}/src/driver_init.o.d" -MT ${OBJECTDIR}/src/driver_init.o -o ${OBJECTDIR}/src/driver_init.o src/driver_init.c 
	
${OBJECTDIR}/src/rtc.o: src/rtc.c  .generated_files/flags/Default/63cef8ffd5e09424686dd17c3ae2338bfa005472 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/src/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"qtouch/include" -I"qtouch" -I"examples/include" -I"documentation" -I"." -I"utils/assembler" -I"utils" -I"qtouch/datastreamer" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)   -L"qtouch/lib/gcc" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/rtc.o.d" -MT "${OBJECTDIR}/src/rtc.o.d" -MT ${OBJECTDIR}/src/rtc.o -o ${OBJECTDIR}/src/rtc.o src/rtc.c 
	
else
${OBJECTDIR}/qtouch/touch.o: qtouch/touch.c  .generated_files/flags/Default/1be0fccd74915e8024a18eea9625c3e20ace8c95 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/qtouch" 
	@${RM} ${OBJECTDIR}/qtouch/touch.o.d 
	@${RM} ${OBJECTDIR}/qtouch/touch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"qtouch/include" -I"qtouch" -I"examples/include" -I"documentation" -I"." -I"utils/assembler" -I"utils" -I"qtouch/datastreamer" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)   -L"qtouch/lib/gcc" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/qtouch/touch.o.d" -MT "${OBJECTDIR}/qtouch/touch.o.d" -MT ${OBJECTDIR}/qtouch/touch.o -o ${OBJECTDIR}/qtouch/touch.o qtouch/touch.c 
	
${OBJECTDIR}/src/clkctrl.o: src/clkctrl.c  .generated_files/flags/Default/d87e406ce949c0570c5c6057de9a40dc8036fd9b .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/clkctrl.o.d 
	@${RM} ${OBJECTDIR}/src/clkctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"qtouch/include" -I"qtouch" -I"examples/include" -I"documentation" -I"." -I"utils/assembler" -I"utils" -I"qtouch/datastreamer" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)   -L"qtouch/lib/gcc" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/clkctrl.o.d" -MT "${OBJECTDIR}/src/clkctrl.o.d" -MT ${OBJECTDIR}/src/clkctrl.o -o ${OBJECTDIR}/src/clkctrl.o src/clkctrl.c 
	
${OBJECTDIR}/src/cpuint.o: src/cpuint.c  .generated_files/flags/Default/a2bee8c1deaa8a8f75f7b39b5e379878abee11d8 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/src/cpuint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"qtouch/include" -I"qtouch" -I"examples/include" -I"documentation" -I"." -I"utils/assembler" -I"utils" -I"qtouch/datastreamer" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)   -L"qtouch/lib/gcc" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/cpuint.o.d" -MT "${OBJECTDIR}/src/cpuint.o.d" -MT ${OBJECTDIR}/src/cpuint.o -o ${OBJECTDIR}/src/cpuint.o src/cpuint.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Default/8a7e96559505c05527104b0edd7f97724ddb5441 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"qtouch/include" -I"qtouch" -I"examples/include" -I"documentation" -I"." -I"utils/assembler" -I"utils" -I"qtouch/datastreamer" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)   -L"qtouch/lib/gcc" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/driver_isr.o: driver_isr.c  .generated_files/flags/Default/8a30d0c8b4c9f4961d4f1c51506ed557b145e05e .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_isr.o.d 
	@${RM} ${OBJECTDIR}/driver_isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"qtouch/include" -I"qtouch" -I"examples/include" -I"documentation" -I"." -I"utils/assembler" -I"utils" -I"qtouch/datastreamer" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)   -L"qtouch/lib/gcc" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/driver_isr.o.d" -MT "${OBJECTDIR}/driver_isr.o.d" -MT ${OBJECTDIR}/driver_isr.o -o ${OBJECTDIR}/driver_isr.o driver_isr.c 
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  .generated_files/flags/Default/5376e962114058a1c7d0b2b45cf48ccc83fd99cb .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/atmel_start.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"qtouch/include" -I"qtouch" -I"examples/include" -I"documentation" -I"." -I"utils/assembler" -I"utils" -I"qtouch/datastreamer" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)   -L"qtouch/lib/gcc" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/atmel_start.o.d" -MT "${OBJECTDIR}/atmel_start.o.d" -MT ${OBJECTDIR}/atmel_start.o -o ${OBJECTDIR}/atmel_start.o atmel_start.c 
	
${OBJECTDIR}/src/driver_init.o: src/driver_init.c  .generated_files/flags/Default/727ebadb106df5549e280036b18ec703cd7e4978 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/driver_init.o.d 
	@${RM} ${OBJECTDIR}/src/driver_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"qtouch/include" -I"qtouch" -I"examples/include" -I"documentation" -I"." -I"utils/assembler" -I"utils" -I"qtouch/datastreamer" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)   -L"qtouch/lib/gcc" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/driver_init.o.d" -MT "${OBJECTDIR}/src/driver_init.o.d" -MT ${OBJECTDIR}/src/driver_init.o -o ${OBJECTDIR}/src/driver_init.o src/driver_init.c 
	
${OBJECTDIR}/src/rtc.o: src/rtc.c  .generated_files/flags/Default/b63381af2ff4cd6d158132e90141d4e2dc9f8883 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/src/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"qtouch/include" -I"qtouch" -I"examples/include" -I"documentation" -I"." -I"utils/assembler" -I"utils" -I"qtouch/datastreamer" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)   -L"qtouch/lib/gcc" $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -std=gnu99 -std=gnu99     -MD -MP -MF "${OBJECTDIR}/src/rtc.o.d" -MT "${OBJECTDIR}/src/rtc.o.d" -MT ${OBJECTDIR}/src/rtc.o -o ${OBJECTDIR}/src/rtc.o src/rtc.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/src/protected_io.o: src/protected_io.S  .generated_files/flags/Default/d12c0803656860f9cc1a888ecc7becf8942cd434 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"qtouch/include" -I"qtouch" -I"examples/include" -I"documentation" -I"." -I"utils/assembler" -I"utils" -I"qtouch/datastreamer" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)   -L"qtouch/lib/gcc" -std=gnu99 -gdwarf-3 -mconst-data-in-progmem -Wa,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1 -std=gnu99   -MD -MP -MF "${OBJECTDIR}/src/protected_io.o.d" -MT "${OBJECTDIR}/src/protected_io.o.d" -MT ${OBJECTDIR}/src/protected_io.o -o ${OBJECTDIR}/src/protected_io.o  src/protected_io.S 
	
else
${OBJECTDIR}/src/protected_io.o: src/protected_io.S  .generated_files/flags/Default/7e944e8c77c2bed2fe3c9aa1cadc27c768466b06 .generated_files/flags/Default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"qtouch/include" -I"qtouch" -I"examples/include" -I"documentation" -I"." -I"utils/assembler" -I"utils" -I"qtouch/datastreamer" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)   -L"qtouch/lib/gcc" -std=gnu99 -gdwarf-3 -mconst-data-in-progmem -Wa,--defsym=__MPLAB_BUILD=1 -std=gnu99   -MD -MP -MF "${OBJECTDIR}/src/protected_io.o.d" -MT "${OBJECTDIR}/src/protected_io.o.d" -MT ${OBJECTDIR}/src/protected_io.o -o ${OBJECTDIR}/src/protected_io.o  src/protected_io.S 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/qtouch-t1616.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/qtouch-t1616.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_Default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1     -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"qtouch/include" -I"qtouch" -I"examples/include" -I"documentation" -I"." -I"utils/assembler" -I"utils" -I"qtouch/datastreamer" -I"config" -Wall  -L"qtouch/lib/gcc" -std=gnu99 -gdwarf-3 -mconst-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/qtouch-t1616.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/qtouch-t1616.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,-lqtm_touch_key_t1616_0x0002 -Wl,-lqtm_acq_runtime_t1616_0x0018 -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/qtouch-t1616.X.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/qtouch-t1616.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/qtouch-t1616.X.${IMAGE_TYPE}.map  -DXPRJ_Default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"qtouch/include" -I"qtouch" -I"examples/include" -I"documentation" -I"." -I"utils/assembler" -I"utils" -I"qtouch/datastreamer" -I"config" -Wall  -L"qtouch/lib/gcc" -std=gnu99 -gdwarf-3 -mconst-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/qtouch-t1616.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/qtouch-t1616.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,-lqtm_touch_key_t1616_0x0002 -Wl,-lqtm_acq_runtime_t1616_0x0018 -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/qtouch-t1616.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/qtouch-t1616.X.${IMAGE_TYPE}.hex"
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
