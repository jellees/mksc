SECTIONS
{
    . = 0x2000000;

    ewram (NOLOAD) :
    ALIGN(0)
    {
    }

    . = 0x3000000;

    .bss (NOLOAD) :
    ALIGN(0)
    {
    }

    . = 0x8000000;

    .text :
    {
        /* code */
        asm/rom_header.o(.text);
        asm/crt0.o(.text);
        asm/text080001D8.o(.text);
        asm/palette.o(.text);
        asm/text0802E6A4.o(.text);
        *libgcc.a:*_call_via_rX*.o(.text*);
        *libgcc.a:_divsi3.o(.text*);
        *libgcc.a:_dvmd_tls.o(.text*);
        asm/text08061EB0.o(.text);
    }

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}
