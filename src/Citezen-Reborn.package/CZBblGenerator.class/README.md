to generate something like that..... 


\begin{thebibliography}{100}[\RAbibAAname]
\small

% phdthesis
\bibitem[1]{anquetil:tel-01086785}\RAsc{N.~Anquetil},
\newblock {Supporting Software Evolution in the Organizations},
\newblock Accreditation to supervise research, {universite de Lille-1}, May
  2014,
\newblock \href {http://hal.inria.fr/tel-01086785} {\path{[hal:tel-01086785]
  }}.

Pay attention, we make sure that DOI and HALID are managed at the end (in case they were not specified).


| visitor bibset |
bibset := CZBibParser parse: (FileStream readOnlyFileNamed: 'rmod.bib') contents.
bibset scope: CZSet standardDefinitions.
visitor := CZBblGenerator new filename: 'rmod.bbl'.
visitor visit: bibset.
