add/remove
removeFieldWithKey: aSymbol

	 fields := fields reject: [:each | each key = aSymbol  ]