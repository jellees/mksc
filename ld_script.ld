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

        . = 0x188;
        src/error.o(.bss);

        . = 0x02D8;
        src/palette.o(.bss);
        src/map.o(.bss);

        . = 0x2190;
        src/dmaQueue.o(.bss);

        . = 0x23F8;
        libunk.a(.bss);

        . = 0x2600;
        src/mp2000/m4a.o(.bss.code);

        . = 0x2D20;
        src/vcount.o(.bss);
        
        . = 0x2E20;
        gSceneState = .; /* As of now we don't know how big this struct is. */

        . = 0x4F70;
        src/transition.o(COMMON);

        . = 0x4FC0;
        src/vcount.o(COMMON);
    }

    . = 0x8000000;

    .text :
    {
        /* code */
        asm/romHeader.o(.text);
        asm/crt0.o(.text);
        asm/title.o(.text);
        src/mobileSystemsGBLogo.o(.text);
        asm/text08001A84.o(.text);
        src/error.o(.text);
        asm/text08016D90.o(.text);
        src/frameHeap.o(.text);
        asm/text0802D708.o(.text);
        src/palette.o(.text);
        src/map.o(.text);
        asm/text0802E778.o(.text);
        src/list.o(.text);
        asm/text0802ED80.o(.text);
        src/dmaQueue.o(.text);
        src/vcount.o(.text);
        src/transition.o(.text);
        asm/text08030774.o(.text);
        src/mp2000/m4a.o(.text);
        asm/libagbsyscall.o(.text);
        src/agbbackup/agb_flash.o(.text);
        asm/text08061838.o(.text);
        libgcc.a(.text);
        libunk.a(.text);

        asm/rodata08062774.o(.rodata);
        src/mp2000/m4a_tables.o(.rodata);
        INCLUDE ../ld_script_sound.ld;
        asm/rodata081E9778.o(.rodata);
        libgcc.a(.rodata);
        libunk.a(.rodata);
        asm/rodata081E9B1C.o(.rodata);
        data/skyData.o(.rodata*);
        data/courseData.o(.rodata*);
        data/mbChild.o(.rodata*);
        data/sio32MultiLoader.o(.rodata*);
        data/characterPalettes.o(.rodata*);
        data/characterTiles.o(.rodata*);
    }

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}
