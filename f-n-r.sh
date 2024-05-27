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
    sed -i 's/BASE64_ORIGINAL/BASE64_NUEVA/g' $xhtmlfile
done
