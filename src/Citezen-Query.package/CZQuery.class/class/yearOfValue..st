builder
yearOfValue: aNumberIndicatingYear

	^ (CZFieldQuery 
		named: #year 
		checks: [ :value | value asNumber =  aNumberIndicatingYear ])