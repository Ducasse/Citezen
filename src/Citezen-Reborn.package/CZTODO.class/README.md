- CZDocBuilder should use CZPool
- CZEntry isXXX should use CZPool
- Remove Citezen-Rendering.
- Remove Phrase stuff. 
- Extract DocumentModel and builder in a separate package

- Strategy to filter fields
- RMODPublicationWriter sucks because it inherits from a hack.
- Generating html for publicaion is super long
- Generating html for publicaion displays: *** Warning: PRLinkWarning: Reference : doi.ieeecomputersociety.org/10.1109/IWESEP.2016.13 should end with .pillar or .pier

- Should be a parameter of the generator because using hal is a bit too strong.
	keyForEntry: anEntry
	"if there is a hal entry emit as author:hal- as in the raweb. Else put simply the key."
	
	^ (anEntry hasFieldWithKey: HALID)
		ifTrue: [(self halKeyForEntry: anEntry)]
		ifFalse: [ anEntry key asString ]

- resetConversionTable should be in toHtmlTable and toAccentedCharTable
and even more in the parse: methods