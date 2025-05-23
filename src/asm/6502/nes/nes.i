; this is a definition file for a NES ROM.

; addresses
PPUCTRL=$2000
PPUMASK=$2001
PPUSTATUS=$2002
OAMADDR=$2003
OAMDATA=$2004
PPUSCROLL=$2005
PPUADDR=$2006
PPUDATA=$2007

APUBASE=$4000
OAMDMA=$4014
JOY1=$4016
JOY2=$4017

; memory map
.MEMORYMAP
DEFAULTSLOT 1
; 2KB RAM
SLOT 0 START $0000 SIZE $800
; 32KB ROM
SLOT 1 START $8000 SIZE $8000
; 8KB character ROM
SLOT 2 START $10000 SIZE $2000
SLOT 3 START $12000 SIZE $10
.ENDME

.ROMBANKMAP
BANKSTOTAL 3
; iNES header
BANKSIZE $10
BANKS 1
; program ROM data
BANKSIZE $8000
BANKS 1
; character ROM data
BANKSIZE $2000
BANKS 1
.ENDRO

; iNES header goes here
.BANK 0 SLOT 3

.db "NES"
.db $1a
; program size
.db $02
; character size
.db $01
; flags/padding
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
