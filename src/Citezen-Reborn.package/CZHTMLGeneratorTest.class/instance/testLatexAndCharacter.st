setup
testLatexAndCharacter
	"self debug: #testLatexAndCharacter"

	| result |
	result := (CZHTMLGenerator new visit: uqui2) outputStream contents.
	self
		assert:
			(self isString: result  equalsTo:  
 '<li>
<span class="author">Mart&iacute;n Dias, Ver&oacute;nica Uquillas G&oacute;mez, Damien Cassou and St&eacute;phane Ducasse</span>, <span class="title">Software Integration Questions: A Quantitative Survey with &</span>, <span class="year">2014</span>, <span class="url"><a href="https://hal.inria.fr/hal-01093496">PDF</a></span>.
</li>
' )