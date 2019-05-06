operate
fixCRs
	value := value copyReplaceAll: {Character cr . Character lf } with: {Character lf}.
	value := value copyReplaceAll: {Character cr} with: {Character lf}