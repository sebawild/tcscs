for x in {1..9}
do
	tex t$x.tex
	dvipdfm -p letter t$x.dvi
	#gs -q -dNOPAUSE -dBATCH -sOutputFile t$x.pdf -sDEVICE=pdfwrite t$x.ps
done
pdftex t10.tex
pdftk t1.pdf t2.pdf t3.pdf t4.pdf t5.pdf t6.pdf t7.pdf t8.pdf t9.pdf t10.pdf cat output cheat-sw.pdf
