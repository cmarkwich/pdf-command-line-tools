#!/bin/bash

# working mac version of PDFTK tested and working with this script
# https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/pdftk_server-2.02-mac_osx-10.11-setup.pkg

RED='\033[0;31m'
GREEN='\033[0;32m'
LIGHTBLUE='\033[0;34m'
NC='\033[0m' # No Color\

echo -e "${GREEN}Started${NC}"

if [ ! -f ./pdf-input/odd.pdf ]; then
    echo -e "${RED}FAILED! No odd.pdf file was found.${NC}"
    exit 1
fi

if [ ! -f ./pdf-input/even.pdf ]; then
    echo -e "${RED}FAILED! No odd.pdf file was found.${NC}"
    exit 1
fi

if [ "$1" = "reverse" ]; then
	pdftk A=./pdf-input/odd.pdf B=./pdf-input/even.pdf shuffle A Bend-1 output ./pdf-output/collated_pages.pdf
else
	pdftk A=./pdf-input/odd.pdf B=./pdf-input/even.pdf shuffle A B output ./pdf-output/collated_pages.pdf
fi

echo -e "${LIGHTBLUE}PDF Created${NC}"
echo -e "${GREEN}All Done${NC}"