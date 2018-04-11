I'm producing document based on an author. The document is composed of sections. 
A document can have an header and footer. 

!!Supported features

- keysOfBlackListedEntries: if you want to make sure that some entries are not used. Just pass a collection with the bib keys of the entry. 
- fileNamed: 'rmod.bib';
- authorMatchingString: to specify author. Examples are '*Ducasse*' or 'S*Ducasse*'.
- fieldOrder: to define the field of an entry and its order. The elements can be:  

[[[#(#author #title #journal #booktitle 
#volume #pages #publisher #year #school
#impactfactor #misc
]]]
We removed url and doi for now because of encodings (ie \_). 
- sectionSpecification: aColl 
Set the list and order of section in the document body. aColl is a list of symbols taken from the following one (which can be obtained doing self new defaultSectionSpecification)

[[[ 	
	#(#internationalJournal #topConference #nationalJournal #internationalConference #nationalConference #invitedPaper #bookChapter #book #editor #internationalWorkshop #PhDAndHabilitation #toolDemo #vulgarisation))
]]]

!! Example

| builder |
builder := self new
		fileNamed: 'rmod.bib';
		authorMatchingString: '*';
		sectionSpecification: #( #PhDAndHabilitation #internationalJournal #nationalJournal #topConference #internationalConference  #nationalConference #invitedPaper #bookChapter #book #editor #internationalWorkshop #toolDemo #vulgarisation);
		setFilteringOn.
	builder generate.	
		

My subclasses are not really subclasses. They should be configuration objects. 



