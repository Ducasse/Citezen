running
setUp
	| bibset |
	bibset := (CZBibParser parse: CZTestResource bibTest).
	entry := bibset entries first.
	macro := bibset macros first.