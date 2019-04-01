#!/bin/bash

# working mac version of PDFTK tested and working with this script
# https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/pdftk_server-2.02-mac_osx-10.11-setup.pkg

# this export removes sed error for illegal byte sequence
export LC_CTYPE=C

RED='\033[0;31m'
GREEN='\033[0;32m'
LIGHTBLUE='\033[0;34m'
NC='\033[0m' # No Color\

echo -e "${GREEN}Started${NC}"

if [[ $# -eq 0 ]] ; then
    echo -e "${RED}FAILED! No Watermark Text was Provided.${NC}"
    exit 1
fi

if [ ! -f ./original.pdf ]; then
    echo -e "${RED}FAILED! No original.pdf file was found.${NC}"
    exit 1
fi

echo Uncompressing PDF...
pdftk original.pdf output uncompressed.pdf uncompress 
echo -e "${LIGHTBLUE}PDF Uncompressed${NC}"

watermark=$1

echo Removing Watermark...
sed -e "s/${watermark}/ /g" uncompressed.pdf > unwatermarked.pdf
echo -e "${LIGHTBLUE}Watermark removed${NC}"

echo Creating PDF file...
pdftk unwatermarked.pdf output fixed.pdf compress
echo -e "${LIGHTBLUE}PDF Created${NC}"
echo -e "${GREEN}All Done${NC}"