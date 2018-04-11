standard definitions
months
	^ (self new)
		addMacro: (CZField key: 'jan' rawValue: 'January');
		addMacro: (CZField key: 'feb' rawValue: 'February');
		addMacro: (CZField key: 'mar' rawValue: 'March');
		addMacro: (CZField key: 'apr' rawValue: 'April');
		addMacro: (CZField key: 'may' rawValue: 'May');
		addMacro: (CZField key: 'jun' rawValue: 'June');
		addMacro: (CZField key: 'jul' rawValue: 'July');
		addMacro: (CZField key: 'aug' rawValue: 'August');
		addMacro: (CZField key: 'sep' rawValue: 'September');
		addMacro: (CZField key: 'oct' rawValue: 'October');
		addMacro: (CZField key: 'nov' rawValue: 'November');
		addMacro: (CZField key: 'dec' rawValue: 'December');
		yourself