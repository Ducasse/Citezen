examples for tests
aDoc

	^ CZAuthorFocusedDocBuilder new 
			bibset: self someArticles;
			authorMatchingString: '*S*Ducasse*';
			noHeader;
			build;
			document