I'm responsible for building document (composite of instances of DocElement subclasses). 

I work on a bibset that is filtered.
	- First we remove in submission, 
	- then black-listed entries. 

Subclasses may change the filtering specifying authorMatchingString:

I have a title and sections and for example, HTML subclasses also point to a bib file. 
My sections are built out of queries over the bibset that I use. 
I define many queries over my working bibset. 
I use visitors such as CZBibTexGenerator (such as subclasses of CZFileFormatGenerator) to render my elements. 


Implementation notes.
- workingSet is a private field. The public API is to use bibset: to specify the bib set to work with.
