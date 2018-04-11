generate
generate
	"self new generate"

	self defaultSmartSpecifications
		do: [ :each | 
			| docTopic |
			self filter.	"reset the bib to full to be able to support multiple classifications of one entry."

			"a topic document should be generated in a separate file"
			docTopic := self
				createSubTopic: each first
				title: each second
				text: each third
				bibTag: each fourth.
			(CZPillarGenerator new 	
				filename: each first, self extension)
				visitDoc: docTopic.
				]