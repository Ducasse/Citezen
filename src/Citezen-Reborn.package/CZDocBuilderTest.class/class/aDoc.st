examples for tests
aDoc

	^ (CZSingleAuthorDocBuilder new 
					bibset: self someArticles;
					authorMatchingString: '*S*Ducasse*';
					noHeader;
					build;
					document)