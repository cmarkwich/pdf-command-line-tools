# PDF Watermark Remover
A command line bash script that will remove a watermark (text string) from a pdf.

Requires Installation of PDFtk Server https://www.pdflabs.com/tools/pdftk-server/

Make a copy of your PDF and name it original.pdf. Place your copied PDF, original.pdf in the same directory as the remove.sh script.

Run on the Command Line: 
```
$ remove.sh 'watermark text'
```

When the script is done running, you will have a new PDF called fixed.pdf in the same directory as remove.sh.