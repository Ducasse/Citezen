setup
testLongArticle
	"self debug: #testLongArticle"
	
	| result |
	result := (CZLaTeXGenerator new visit: entry2 clean) contents.
 
	self assert: result trimBoth equals: 
 '\pub  \czauthors{Hani Abdeen and Ilham Alloui and St\''ephane Ducasse and Damien Pollet and Mathieu Suen},  \cztitle{Package Reference Fingerprint: a Rich and Compact Visualization to Understand Package Relationships},  In \czbooktitle{European Conference on Software Maintenance and Reengineering (CSMR)}, pp. 213--222, IEEE Computer Society Press, 2008, Acceptance rate: 24/87 = 27\%, http://scg.unibe.ch/archive/external/Abde08a.pdf.'