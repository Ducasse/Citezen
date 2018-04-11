as yet unclassified
initializeTypeFieldsMatching

	typeFieldsMatching 
		at: #article put: [ :fields | | ret |
			ret := true.
			#(author title journal year) do: [ :each |
				(fields includes: each) 
					ifFalse: [ ret := false ] ]. 
			ret ];
	
		at: #book put: [ :fields | | ret |
			ret := true.
			((fields includes: #author) | (fields includes: #editor))
				ifFalse: [ ret := false ].
			#(title publisher year) do: [ :each |
				(fields includes: each) 
					ifFalse: [ ret := false ] ].
			ret ];

		at: #booklet put: [ :fields | 
			fields includes: #title ];

		at: #conference put: [ :fields | | ret |
			ret := true.
			#(author title booktitle year) do: [ :each |
				(fields includes: each) 
					ifFalse: [ ret := false ] ]. 
			ret ];
	
		at: #inbook put: [ :fields | | ret |
			ret := true.
			((fields includes: #author) | (fields includes: #editor))
				ifFalse: [ ret := false ].
			((fields includes: #chapter) | (fields includes: #pages))
				ifFalse: [ ret := false ].
			#(title publisher year) do: [ :each |
				(fields includes: each) 
					ifFalse: [ ret := false ] ].
			ret ];
		
		 at: #incollection put: [ :fields | | ret |
			ret := true.
			#(author title booktitle year) do: [ :each |
				(fields includes: each)
					ifFalse: [ ret := false ] ].
			ret ];

			at: #inproceedings put: [ :fields | | ret |
				ret := true.
				#(author title booktitle year) do: [ :each |
					(fields includes: each)
						ifFalse: [ ret := false ] ].
				ret ];

			at: #manual put: [ :fields |
				fields includes: #title ];

			at: #mastersthesis put: [ :fields | | ret |
				ret := true.
				#(author title school year) do: [ :each |
					(fields includes: each)
						ifFalse: [ ret := false ] ].
				ret ];

			at: #misc put: [ :fields |
				true ];

			at: #phdthesis put: [ :fields | | ret |
				ret := true.
				#(author title school year) do: [ :each |
					(fields includes: each)
						ifFalse: [ ret := false ] ].
				ret ];

			at: #proceedings put: [ :fields | | ret |
				ret := true.
				#(title year) do: [ :each |
					(fields includes: each)
						ifFalse: [ ret := false ] ].
				ret ];

			at: #techreport put: [ :fields | | ret |
				ret := true.
				#(author title institution year) do: [ :each |
					(fields includes: each)
						ifFalse: [ ret := false ] ].
				ret ];

			at: #unpublished put: [ :fields | | ret |
				ret := true.
				#(author title note) do: [ :each |
					(fields includes: each)
						ifFalse: [ ret := false ] ].
				ret ]