setup
testArticle
	"self debug: #testArticle"

	| result |
	result := (self generatorClass new visit: entry) contents.
	self
		assert:
			(self isString: result withSqueakLineEndings equalsTo:
 '<li>
<span class="author">St&eacute;phane Ducasse and Damien Pollet</span>, <span class="title">Fingerprints</span>, <span class="journal">Journal of Information System</span>, <span class="year">2010</span>.
</li>
' withSqueakLineEndings )