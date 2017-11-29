git add .
git commit -m "antes do replace.sh"

# \emph{.}
# ~$
# \ '' 
# -$ --> --
sed -i 's/\\versal{\(.*\)} \(.\) \(.\) \\versal{/\\versal{\1 \2 \3} \\versal{/g' *.tex
sed -i 's/\\chapterspecial{\(.\) \\versal{/\\chapterspecial{\\versal{\1 /g' *.tex
sed -i 's/\\chapter{\(.\) \\versal{/\\chapterspecial{\\versal{\1 /g' *.tex
sed -i 's/\\section{\(.\) \\versal{/\\chapterspecial{\\versal{\1 /g' *.tex
sed -i 's/`` /``/g' *.tex
sed -i 's/^-\(\w\)/--- \1/g' *.tex
sed -i 's/^- /--- /g' *.tex
sed -i 's/\.\.\./…/g' *.tex
sed -i 's/ -\(\w\)/--- \1/g' *.tex
sed -i 's/---\(\w\)/--- \1/g' *.tex
sed -i 's/, etc\./ etc./g' *.tex
sed -i 's/\( \)-\([,\.\ ]\)/\1—\2/g' *.tex
sed -i 's/\([0-9]\)-\([0-9]\)/\1—\2/g' *.tex
sed -i 's/(…)/\[…\]/g' *.tex
sed -i 's/\*\*\*/\\asterisc{}/g' *.tex
sed -i 's/\\href{.*}{/{/g' *.tex
sed -i 's/\ -\ /\ —\ /g' *.tex
sed -i 's/\([a-záéíóúâêô]\)-\([a-záéíóúâêô]\)/\1"-\2/g' *.tex
sed -i 's/\([0-9]\)\ \(km\|cm\|mm\)\b/\1\\,\2/g' *.tex
sed -i 's/\(\S\)\+\(\S\)/\1~\2' *.tex
sed -i 's/\(o\)p\. cit\./\1p.cit./gi' *.tex
sed -i 's/\(\b[A-Z]\)\([0-9]\)/\\versal{\1}\2/g' *.tex
sed -i 's/\([Cc]ap\.\|[Cc]apítulo\)\ \([A-Z]\)/\1~\\versal{\2}' *.tex
sed -i 's/\\euro{}/€/g' *.tex
sed -i 's/\\ldots{}/…/g' *.tex
sed -i 's/I\(\/\|ª\|º\)/\\versal{I}/g' *.tex
sed -i 's/\([A-ZÇÁÉÍÊÓÚÈÀÜÔÂÃÖËÄ][A-ZÖËÄÇÁÉÍÊÓÚÈÀÜÔÂÃ]+\)/\\versal{\1}/g' *.tex
sed -i 's/http:\(\/\/\|\)\(www\.\|\)//g' *.tex
sed -i 's/www\.//g' *.tex
sed -i 's/---,/\\mbox{---,}/g' *.tex
sed -i 's/\\emph{\\asterisc{}}/\\asterisc{}/g' *.tex
sed -i 's/\([^0-9]\),\([a-záéíóú]\)/\1, \2/gi' *.tex
sed -i 's/\ \(\.\|:\|;\|!\|\?\)/ \1/g' *.tex
sed -i 's/\\section{}//g' *.tex
sed -i 's/\(\b\|\ \)\.\.\(\b\|\ \)/…/g' *.tex
sed -i 's/,\.\./…/g' *.tex
sed -i 's/…\(\w\)/… \1/g' *.tex
sed -i 's/\(\\versal{\w+}\) \(.\) (\\versal{\w+})/\1 \\versal{\2} \3/g' *.tex
# sed -i 's/\\textsuperscript{\\footnote/	{\footnote' *.tex
# sed -i 's/{\[}…{\]}/	\redondo{[…]}/g' *.tex

git add .
git commit -m "depois do replace.sh"

