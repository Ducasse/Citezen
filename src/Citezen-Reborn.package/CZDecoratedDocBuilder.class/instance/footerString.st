accessing
footerString
	^ footerString ifNil: [ footerString := self defaultFooterString ]
					