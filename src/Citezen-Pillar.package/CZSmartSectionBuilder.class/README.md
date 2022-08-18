I'm a special builder that generates tagged-based publications separate files.

${smartPublications: file='Editor'| title='Workshop Proceedings' | text =  
		'Here are some of the proceedings of workshops and other activities I got over the year.' |
		bibtag='kzEditor'}$
should produce a file named Editor.pillar with Workshop Proceedings as title and some text
followed by a list of all the publications tagged with kzEditor. 

Here is a typical use
!!! Maintenance and Software Evolution
I'm interested in all the aspects of software evolution and maintenance of large systems. I consulted for companies. Do not hesitate to contact me. I'm interested in your problems.
- topics1
- topics2


Given a specification will follow this pattern: 

${smartPublications: file='Editor'| title='Workshop Proceedings' | text =  
		'Here are some of the proceedings of workshops and other activities I got over the year.' |
		bibtag='kzEditor']

!!Supported features

- keysOfBlackListedEntries:
- fileNamed: 'rmod.bib';
- authorMatchingString:
- fieldOrder:

!! Example

| builder |
builder := self new
		fileNamed: 'rmod.bib';
		authorMatchingString: '*Ducasse*';
		english; 
		fieldOrder: #(#author 
			  #title  #journal #booktitle 
			  #volume  #pages  #publisher  
			  #year  #school #impactfactor 
			 #url #doi); 
		setFilteringOn;
	topics: 
		#(
			#('Editor' 'Workshop Proceedings ' 'Here are some of the proceedings of workshops and other activities I got over the year.' '*kzEditor*') 
			#('Education' 'Teaching and Educative Support' 'I''m interested in how to teach computer sciences. I supervized Hilaire Fernandes on how computer sciences can support math teaching.' '*kzTeaching*') 
			#('Vulgarisation' 'Computer Science Vulgarisation' 'I wrote several articles around programming language topics for mass journals.' '*kzVulgarisation*')).
	builder generate.	
		

	
	 
Todo: 
Should probably be using Pillar structures. 
	
{ "title" : 	"Editorial and Others",
	"items " : [  
	{ "fileName" : "Vulgarisation",
	  "title" : "Computer Science Vulgarisation",
 	  "description" : "I wrote several articles around programming language topics for mass journals.",
	"matcher" : '*kzVulgarisation*'}
		]
	}






