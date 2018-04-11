Since a bibentry is also used inside documents,  there is a need to have a simple document structure. A CZDoc is document composed of CZDocElements.

A CZDoc is built using a CZDocBuilder which is able to add entries (bibentries) structured as sections or other in a document. I'm also a walkable structure using a CZVisitor.

This model could be removed and pillar structures could be used instead. 
But one step at a time. :)
First we should 
	- make sure that we can create publication list with pillar
	- make sure that we can create smart publication list with pillar
	- get rid of Kozen (the web site builder built on top)