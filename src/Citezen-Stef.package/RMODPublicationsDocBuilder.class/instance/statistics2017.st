building
statistics2017
	'tableForEvaluationReport.tex' asFileReference ensureDelete.
	'tableForEvaluationReport.tex' asFileReference
		writeStreamDo: [ :stream | 
		stream
		nextPutAll:
			'\begin{center}
\begin{tabular}{l|r|r|r|r|r} \hline
&2017&2018&2019&2020&2021\\ \hline \hline';
		lf.
	#(#phdthesis #internationalJournal #nationalJournal #topConference #internationalConference #nationalConference #book #booklet #bookChapter #internationalWorkshop #vulgarisation #techReport)
		do: [ :each | 
			self lineFor: each into: stream.
			stream
				nextPutAll: '\\ \hline';
				lf ].
	stream nextPutAll: '\end{tabular}\end{center}'
]

	"\begin{center}
\begin{tabular}{l|r|r|r|r} \hline
                                &2012-2013&2013-2014&2014-2015&2015-2016\\ \hline \hline
PhD Theses                      &  3     &   1    &   2    &   2 \\ \hline
H.D.R.~(*)                      &       &   1    &       &  1  \\ \hline
Journals                        &       &       &       &     	\\ \hline
Top Conferences	     &       &       &       &     	\\ \hline
Other Conferences	     &       &       &       &     	\\ \hline
Books (written)                 &       &   1    &       &  1  	\\ \hline
Books (edited)                  &       &       &       &     	\\ \hline
Patents (we are against)	&	&	&	&     	\\ \hline
Vulgarisation papers         & 1 &	&2    &    1\\ \hline
Technical reports               &       &       &       &     	\\ \hline
\end{tabular}
"