operate
fixCRs
	value := value copyReplaceAll: {Character cr} with: {Character lf}