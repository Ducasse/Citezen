builder
inSubmission
	^ CZFieldQuery named: #keywords checks: [ :value | '*insubmission*' match: value ]