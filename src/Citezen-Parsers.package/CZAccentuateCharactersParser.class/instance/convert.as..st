accessing
convert: aCharString as: type
	^ (self conversionTable at: type ifAbsent: [ ^ aCharString ]) value: aCharString