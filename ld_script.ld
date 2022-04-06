SECTIONS
{
    . = 0x2000000;

    ewram (NOLOAD) :
    ALIGN(0)
    {
        . = 0x10400;
        title_sDriversBgTilesBuf = .; . += 0x5800;

        . = 0x2A400;
        gMainFrmHeap = .; . += 0x8000;
    }

    . = 0x3000000;

    .bss (NOLOAD) :
    ALIGN(0)
    {
        . = 0x4;
        src/mobileSystemsGBLogo.o(.bss);

        . = 0x02D8;
        src/palette.o(.bss);
        src/map.o(.bss);
        
        . = 0x2E20;
        gSceneState = .; /* As of now we don't know how big this struct is. */
    }

    . = 0x8000000;

    .text :
    {
        /* code */
        asm/romHeader.o(.text);
        asm/crt0.o(.text);
        asm/text080001D8.o(.text);
        src/mobileSystemsGBLogo.o(.text);
        asm/text08001A84.o(.text);
        src/frameHeap.o(.text);
        asm/text0802D708.o(.text);
        src/palette.o(.text);
        src/map.o(.text);
        asm/text0802E778.o(.text);
        src/list.o(.text);
        asm/text0802ED80.o(.text);
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
