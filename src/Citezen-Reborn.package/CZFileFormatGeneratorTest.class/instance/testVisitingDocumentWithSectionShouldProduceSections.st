setUp
testVisitingDocumentWithSectionShouldProduceSections
	"self debug: #testVisitingDocumentWithSectionShouldProduceSections"
	
	| visitor |
	visitor := self generatorClass new.
	visitor visit: CZDocBuilderTest aDoc.
	self assert: (self isString: visitor contents withSqueakLineEndings equalsTo:
'  
Refereed Articles in International Journals

Abdeen, Hani and Ducasse, St\''ephane and Pollet, Damien and Alloui, Ilham, Package Fingerprint: a visual summary of package interfaces and relationships, Information and Software Technology Journal, 52, 1312-1330, 2010, ISI impact factor 1.821 (2010), http://rmod.lille.inria.fr/archives/papers/Abde10a-IST-Official-packageFingerprints.pdf, 10.1016/j.infsof.2010.07.005, ACL, aeres12, internationaljournal, inria-00531496, RMOD, 2010, moose remoose2 lse-pub cook kzVisualisation, http://rmod.lille.inria.fr/archives/papers/Abde10a-IST-packageFingerprints.pdf, yes, yes, yes, http://rmod.lille.inria.fr/archives/papers/Abde10a-IST-Official-packageFingerprints.pdf, https://doi.org/10.1016/j.infsof.2010.07.005.
Ducasse, St\''ephane and Ranger, Zork, Woa, Journal of Information System, 2010, obsoleteData.pdf, internationaljournal.

Refereed Articles in International Conferences

Denker, Marcus and Suen, Mathieu and Ducasse, St\''ephane, The Meta in Meta-object Architectures, Proceedings of TOOLS EUROPE 2008, 11, 218--237, Springer-Verlag, 2008, http://scg.unibe.ch/archive/papers/Denk08bMetaContextLNBIP.pdf, 10.1007/978-3-540-69824-1_13, internationalconference, yes, ACT, aeres12, RMOD, non, 1865-1348, scg-pub jb08 fb08 snf08 reflectivity, dans, LNBIP, inria-00271286,p56w09p.

' withSqueakLineEndings)