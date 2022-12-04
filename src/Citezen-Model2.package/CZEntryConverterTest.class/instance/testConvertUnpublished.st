initialization
testConvertUnpublished

| unpublished |

unpublished := (CZEntryConverter new convert: unpublishedEntry).
	self assert: unpublished class equals: CZUnpublished.
	self assert: unpublished author equals: unpublishedEntry author.
	self assert: unpublished title equals: unpublishedEntry title.
	self assert: unpublished pages equals: unpublishedEntry pages.
	self assert: unpublished year equals: unpublishedEntry year.	
	self assert: unpublished annotation equals: unpublishedEntry annotation.
	self assert: unpublished note equals: unpublishedEntry note.


	
	

	
	

	
	