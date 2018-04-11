testing
testArticle
	"self debug: #testArticle"
	
	super testArticle.
	self assert: result = '@article{Duca10a,
author = {St\''ephane Ducasse and Damien Pollet},
title = {Fingerprints},
journal = {Journal of Information System},
year = 2010
}

'