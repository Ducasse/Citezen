initialization
initialize
	super initialize.
	title := CZString new setValue: ''.
	text := CZText new text: ''.
	items := CZSet new.
	level := 1.