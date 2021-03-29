(deffacts datos
	(numero 5)
	(numero 3)
	(numero 8)
	(numero 14)
	(numero 7)
	(variable 0)
	(objetivo 21)
)

(defrule sumar
	(numero ?n)
	(variable ?v)
	(not (objetivo = ?n))
=>
    	(assert (variable (+ ?v ?n)))
    	(printout t "SUMAMOS" crlf)
)

(defrule solucion
	(salience 99)
	(variable ?v)
	(objetivo ?o)
	(test (= ?v ?o))
=>
    	(printout t "YA TENEMOS EL OBJETIVO" crlf)
	(printout t "FIN" crlf)
    	(halt)
)