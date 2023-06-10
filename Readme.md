# Micron Color 30HR ROM Source
This is the source from the original micron dump with all the tools and environment required to successfully build an exact copy of the Color 30HR V2.0 ROM as shipped by Micron. A substitute for the missing file theDriver.a has been provided, but not disassembled.

I strongly recommend referencing https://archive.org/details/MicronXCeedTechDocs for details of the hardware design and register usage.

**Two changes have been made:**

*Line 1066* 369Color.a: An addi.b instruction has been explicitly encoded as bytes in order to create an exact match to the original output file. The MPW assembler will optimize this to addq.b which is functionally the same but results in a file that does not match. 

*Line 1671* 369Color.a: Rename theDriver.a to theDriverBin.a, and add comments.

## To build
1) Download MPW HD.zip and boot it in mini vMac or similar
2) Open C30HR ROM/Make ROM
3) Highlight the contents of the file
4) Click "MPW Shell" button at bottom
5) You should have a new 369Color.ROM file!
6) Extract output from HFS file and burn to 27C256 ROM or equiv

To verify that it is identical to the original, you can verify these checksum bytes.

Addr   Data

$7FF4  $5C

$7FF5  $A7

$7FF6  $1F

$7FF7  $98

# Files in this repo

## C30HR ROM/
Code from C30HR ROM.sit for viewing only. Does not include build utilities, files with resource fork, and line endings have been changed to Windows.

## C30HR ROM.sit
Stuffit 5.5 copy of all source, includes, and binaries required to build a ROM
MPW 3.1 under System 6 required! Otherwise, the support tools to patch crc and extract resource do not work.

## Color30HR Drvr.bin
binary driver resource used to generate theDriverBin.a
This file would have been the built result of the "theDriver.a", which was not included in the partial source dump that was eventually released. This should be disassembled and reverse engineered, as it likely requires changes to support other resolutions and color depths.

## MPW HD.zip
Zip file containing a HFS image with the following:
* Copy of code
* System 6.0.7
* MPW 3.1
* Utilities (Resedit, Hexedit, stuffit, etc)

## Micron Source dump.sit
Original source dump. Contains ROM images, partial source, and driver files.

## Micron Color 30 Tech Docs.pdf
A copy of https://archive.org/details/MicronXCeedTechDocs which contains vital information regarding hardware design and register usage.
