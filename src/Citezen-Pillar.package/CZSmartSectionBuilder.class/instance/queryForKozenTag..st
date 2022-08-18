utils
queryForKozenTag: aTag

	^ CZFieldQuery 
			named: #keywords 
			checks: [ :value | '*', aTag, '*' match: value ]