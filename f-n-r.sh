## Copiar y pegar

for xhtmlfile in $(find ./ -type f -name "*.xhtml")
do
    sed -i -E 's/<section class="chapter parent" id="colophon" title=.+">/<section class="chapter parent" id="colophon" title="">/g' $xhtmlfile
    sed -i -E 's/<section class="chapter parent" id="conventions" title=.+">/<section class="chapter parent" id="conventions" title="">/g' $xhtmlfile
    sed -i -E 's/<section class="chapter parent" id=".+" title=.+ class="title-val.+>/<section class="chapter parent">/g' $xhtmlfile
    sed -i -E 's/<section class="sect1.*" title=.+>/<section class="sect1" title="">/g' $xhtmlfile
    sed -i -E 's/<section class="sect2.*" title=.+>/<section class="sect2" title="">/g' $xhtmlfile
    sed -i -E 's/<section class="sect3.*" title=.+>/<section class="sect3" title="">/g' $xhtmlfile
    sed -i -E 's/<section class="sect4.*" title=.+>/<section class="sect4" title="">/g' $xhtmlfile
    sed -i -E 's/<section class="sect5.*" title=.+>/<section class="sect5" title="">/g' $xhtmlfile
    sed -i 's/PHN2ZyB4bWxucz0naHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmcnIHZlcnNpb249JzEuMScgaGVpZ2h0PSc3NDMuNzVweCcgd2lkdGg9JzEwMHB4Jz48dGV4dCB0cmFuc2Zvcm09J3RyYW5zbGF0ZSgyMCwgMTApIHJvdGF0ZSg5MCknIGZpbGw9J3JnYigxOTcsMTk3LDE5NyknIGZvbnQtc2l6ZT0nMTRweCcgZm9udC1mYW1pbHk9J21vbm9zcGFjZSc+Rm9yIHVzZSBieSBQZWRybyBGbG9yIHBlZHJvLmZsb3IgcGVkcm8uZmxvckBnbWFpbC5jb20gQ29weXJpZ2h0IOKSuCAyMDIzIFJlZCBIYXQsIEluYy48L3RleHQ+PC9zdmc+/PHN2ZyB4bWxucz0naHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmcnIHZlcnNpb249JzEuMScgaGVpZ2h0PSc3NDMuNzVweCcgd2lkdGg9JzEwMHB4Jz48dGV4dCB0cmFuc2Zvcm09J3RyYW5zbGF0ZSgyMCwgMTApIHJvdGF0ZSg5MCknIGZpbGw9J3JnYigxOTcsMTk3LDE5NyknIGZvbnQtc2l6ZT0nMTRweCcgZm9udC1mYW1pbHk9J21vbm9zcGFjZSc+Rm9yIHVzZSBieSBKdWFuIFAuIGp1YW5wLnJoY2lAZ21haWwuY29tIENvcHlyaWdodCDikrggMjAyNCBSZWQgSGF0LCBJbmMuPC90ZXh0Pjwvc3ZnPgo=/g' $xhtmlfile
done
