# PDF Command Line Tools
A list of bash scripts that will perform various tasks on a PDF.

Requires Installation of PDFtk Server https://www.pdflabs.com/tools/pdftk-server/

IMPORTANT: Make a backup copy of any PDF you put in the pdf-input folder for this command line tool.

### PDF Watermark Removal Tool
Place your copied PDF, original.pdf in the pdf-input folder.

Run on the Command Line: 
```
$ remove.sh 'watermark text string'
```

When the script is done running, you will have a new PDF called fixed.pdf in the pdf-output folder.

### PDF Odd Even Merge Tool
Place your copied PDF, odd.pdf and even.pdf in the pdf-input folder.

Run on the Command Line: 
```
$ merge.sh
```
or (if your even pages in your even.pdf are in reverse order)

Run on the Command Line: 
```
$ merge.sh reverse
```

When the script is done running, you will have a new PDF called collated_pages.pdf in the pdf-output folder.