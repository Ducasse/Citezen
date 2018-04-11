Key / Value pair used as a single field of a bibliographic entry, or as the declaration of a macro.

Example:
author = {BARREAU,Adrien}

Most useful messages: 
- key -> returns the key (here "author")
- value -> returns the value expanded (resolves concatenation, macros)
- rawValue -> returns the value without expanding

CZField provides 2 useful constructors:
- key:rawValue: -> takes a symbol as key and a string or an integer as rawValue ; it creates a kind of CZValue with the rawValue, and returns a new CZField with the key and this CZValue
- key:value: -> takes a symbol as key and a CZValue, and returns a new CZField with the key and the value