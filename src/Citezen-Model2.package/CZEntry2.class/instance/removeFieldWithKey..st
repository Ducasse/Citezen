removing
removeFieldWithKey: aSymbol

	 fields := fields reject: [:each | each key = aSymbol  ]