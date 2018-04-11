builder
journal
	"returns international and national journals."
	^ CZTypeQuery checks: [ :value | value = #article ]