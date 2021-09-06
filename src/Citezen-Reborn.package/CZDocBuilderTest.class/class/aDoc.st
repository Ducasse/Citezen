examples for tests
aDoc

	^ CZHackSingleAuthorDocBuilder new 
			bibset: self someArticles;
			authorMatchingString: '*S*Ducasse*';
			noHeader;
			build;
			document