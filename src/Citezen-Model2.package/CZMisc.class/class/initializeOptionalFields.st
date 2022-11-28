initialization
initializeOptionalFields

	self initializeFieldKeysToRemove. 
	self initializeExtendedFieldKeys.
	
	author:= CZAuthor new.
	title:= CZTitle new.
	howpublished := CZHowPublished new.
	month := CZMonth new.
	year:= CZYear new.
	note:= CZNote new.
	key:= CZKey new.
	
	optionalFields := OrderedCollection new.
	optionalFields add: author; add: title; add: howpublished; add: month; add: year; add: note; add: key, self extendedFieldKeys.
	
	^optionalFields