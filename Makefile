all: nettester-report-2017.pdf

nettester-report-2017.pdf: report.dvi
	dvipdfmx -o $@ $<

report.dvi: report.tex
	uplatex $<

report.tex: text/*.tex
