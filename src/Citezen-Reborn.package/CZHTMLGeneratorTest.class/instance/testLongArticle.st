setup
testLongArticle
	"self debug: #testLongArticle"

	| result |
	result := (self generatorClass new visit: entry2 clean) contents.
	self
		assert:
			(self isString: result trimBoth equalsTo:  
  '<li>
<span class="author">Hani Abdeen, Ilham Alloui, St&eacute;phane Ducasse, Damien Pollet and Mathieu Suen</span>, <span class="title">Package Reference Fingerprint: a Rich and Compact Visualization to Understand Package Relationships</span>, <span class="booktitle">European Conference on Software Maintenance and Reengineering (CSMR)</span>, <span class="pages">213&#8211;222</span>, <span class="publisher">IEEE Computer Society Press</span>, <span class="year">2008</span>, <span class="misc">Acceptance rate: 24/87 = 27%</span>, <span class="url"><a href="http://scg.unibe.ch/archive/external/Abde08a.pdf">PDF</a></span>.
</li>
' )