tests
testArticle
	super testArticle.
	self assert: result equals: '\bibitem[displayKey]{Duca10a}
St\''ephane Ducasse and Damien Pollet. 
\newblock Fingerprints. 
\newblock In Journal of Information System, 2010.

' 