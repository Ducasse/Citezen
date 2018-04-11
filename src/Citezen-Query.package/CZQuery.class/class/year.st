builder
year

	^ (CZFieldQuery named: #year checks: [ :value | value asNumber])