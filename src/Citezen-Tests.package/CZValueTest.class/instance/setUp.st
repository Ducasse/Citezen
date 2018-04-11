as yet unclassified
setUp
	| bibset |
	
	bibset := (CZBibParser parse: CZTestResource bibTest).
	entry := bibset entries at:1.
	macro := bibset macros at:1.