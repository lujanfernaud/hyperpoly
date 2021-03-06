curl :
	curl http://hyperpolyglot.org/scripting -o html/scripting.html
	curl http://hyperpolyglot.org/more -o html/more.html
	curl http://hyperpolyglot.org/gui -o html/gui.html
	curl http://hyperpolyglot.org/shell -o html/shell.html
	curl http://hyperpolyglot.org/stack -o html/stack.html
	curl http://hyperpolyglot.org/logic -o html/logic.html
	curl http://hyperpolyglot.org/lisp -o html/lisp.html
	curl http://hyperpolyglot.org/c -o html/c.html
	curl http://hyperpolyglot.org/cpp -o html/cpp.html
	curl http://hyperpolyglot.org/rust -o html/rust.html
	curl http://hyperpolyglot.org/web -o html/web.html
	curl http://hyperpolyglot.org/pascal -o html/pascal.html
	curl http://hyperpolyglot.org/ml -o html/ml.html
	curl http://hyperpolyglot.org/numerical-analysis -o html/numerical-analysis.html
	curl http://hyperpolyglot.org/computer-algebra -o html/computer-algebra.html
	curl http://hyperpolyglot.org/more-computer-algebra -o html/more-computer-algebra.html
	curl http://hyperpolyglot.org/misc-math -o html/misc-math.html
	curl http://hyperpolyglot.org/fortran -o html/fortran.html

wikidot-to-html :
	./wikidot_to_html.py < markup/c > html/c.html

compile-java :
	rm -r ./bin
	mkdir bin
	javac ./java/com/christianrubiales/hyperpoly/HyperpolyglotHtmlToJson.java -d ./bin
	javac ./java/com/christianrubiales/hyperpoly/SkeletonHtmlProcessor.java -d ./bin
	javac ./java/com/christianrubiales/hyperpoly/JsonProcessor.java -d ./bin
	javac ./java/com/christianrubiales/hyperpoly/Test.java -d ./bin

html-to-json :
	./html-to-json.sh