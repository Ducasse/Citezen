accessing
checkWrongEntries
	
	self bibset do: [ :each | 
				Transcript show: each printString. 
				each pdf value ifNotEmpty: [ :s | 
				World doOneCycle.
				World refreshWorld.
				(Delay forMilliseconds: 100) wait.
				(ZnClient new 
					url: each pdf value ;
					get ; 		
					isSuccess)
						ifFalse: [ wrongEntries add: each. Transcript show: '  w'.
							  ].
				Transcript cr ]]