ifeq ($(OS),Windows_NT)
EXE := .exe
else
EXE :=
endif

# Configuration
TITLE			:= MARIO KART
GAME_CODE		:= AMKE
MAKER_CODE		:= 01
REVISION		:= 0
ROM				:= mksc.gba

# Tools
BIN_DIR			:= $(DEVKITARM)/bin
PREFIX			:= arm-none-eabi-
CPP				:= $(BIN_DIR)/./$(PREFIX)cpp$(EXE)
OBJCOPY 		:= $(BIN_DIR)/./$(PREFIX)objcopy$(EXE)
LD 				:= $(BIN_DIR)/./$(PREFIX)ld$(EXE)
AS 			    := $(BIN_DIR)/./$(PREFIX)as$(EXE)
SHA1			:= $(shell { command -v sha1sum || command -v shasum; } 2>/dev/null) -c
FIX				:= tools/gbafix/./gbafix
SHELL			:= /bin/bash -o pipefail
CC1				:= tools/agbcc/bin/old_agbcc$(EXE)

# Flags
ASFLAGS			:= -mcpu=arm7tdmi
CFLAGS			:= -mthumb-interwork -Wimplicit -Wparentheses -O2 -fhex-asm
CPPFLAGS		:= -I tools/agbcc -I tools/agbcc/include -iquote include -nostdinc
LIBC			:= tools/agbcc/lib/libc.a
LIBGCC			:= tools/agbcc/lib/libgcc.a
LDFLAGS			= -L../tools/agbcc/lib -lgcc -lc --just-symbols=../symbols.txt

# Files
ELF = $(ROM:.gba=.elf)
MAP = $(ROM:.gba=.map)
OBJ_DIR := build

C_SUBDIR = src
ASM_SUBDIR = asm
DATA_SRC_SUBDIR = src/data
DATA_ASM_SUBDIR = data

C_BUILDDIR = $(OBJ_DIR)/$(C_SUBDIR)
ASM_BUILDDIR = $(OBJ_DIR)/$(ASM_SUBDIR)
DATA_ASM_BUILDDIR = $(OBJ_DIR)/$(DATA_ASM_SUBDIR)

C_SRCS := $(wildcard $(C_SUBDIR)/*.c $(C_SUBDIR)/*/*.c $(C_SUBDIR)/*/*/*.c)
C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(C_BUILDDIR)/%.o,$(C_SRCS))

ASM_SRCS := $(wildcard $(ASM_SUBDIR)/*.s)
ASM_OBJS := $(patsubst $(ASM_SUBDIR)/%.s,$(ASM_BUILDDIR)/%.o,$(ASM_SRCS))

DATA_ASM_SRCS := $(wildcard $(DATA_ASM_SUBDIR)/*.s)
DATA_ASM_OBJS := $(patsubst $(DATA_ASM_SUBDIR)/%.s,$(DATA_ASM_BUILDDIR)/%.o,$(DATA_ASM_SRCS))

OBJS     := $(C_OBJS) $(ASM_OBJS) $(DATA_ASM_OBJS) $(SONG_OBJS) $(MID_OBJS)
OBJS_REL := $(patsubst $(OBJ_DIR)/%,%,$(OBJS))

SUBDIRS  := $(sort $(dir $(OBJS)))

$(shell mkdir -p $(SUBDIRS))

# Rules
.PHONY: rom clean

rom: $(ROM) compare

compare: $(ROM)
	@$(SHA1) rom.sha1

clean:
	rm -f $(ROM) $(ELF) $(MAP)
	rm -r build/*

$(OBJ_DIR)/src/unklib/%.o : src/unklib/%.c
	@$(CPP) $(CPPFLAGS) $< -o $(OBJ_DIR)/src/unklib/$*.i
	@$(CC1) $(OBJ_DIR)/src/unklib/$*.i $(CFLAGS) -mno-thumb-interwork -o $(OBJ_DIR)/src/unklib/$*.s
	@echo -e ".text\n\t.align\t2, 0\n" >> $(OBJ_DIR)/src/unklib/$*.s
	$(AS) $(ASFLAGS) -o $@ $(OBJ_DIR)/src/unklib/$*.s

$(C_BUILDDIR)/%.o : $(C_SUBDIR)/%.c
	@$(CPP) $(CPPFLAGS) $< -o $(C_BUILDDIR)/$*.i
	@$(CC1) $(C_BUILDDIR)/$*.i $(CFLAGS) -o $(C_BUILDDIR)/$*.s
	@echo -e ".text\n\t.align\t2, 0\n" >> $(C_BUILDDIR)/$*.s
	$(AS) $(ASFLAGS) -o $@ $(C_BUILDDIR)/$*.s

$(ASM_BUILDDIR)/%.o: $(ASM_SUBDIR)/%.s
	$(AS) $(ASFLAGS) -o $@ $<

$(ELF): $(OBJS)
	cd $(OBJ_DIR) && $(LD) -Map ../$(MAP) -T ../ld_script.ld -o ../$@ $(LDFLAGS) $(OBJS_REL)

$(ROM): $(ELF)
	$(OBJCOPY) -O binary $< $@
	$(FIX) $@ -p -t"$(TITLE)" -c$(GAME_CODE) -m$(MAKER_CODE) -r$(REVISION) --silent

show:
	echo $(ASM_SRCS)
