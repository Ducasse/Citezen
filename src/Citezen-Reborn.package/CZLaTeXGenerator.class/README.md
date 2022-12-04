A CZLaTeXGenerator is a generator generating nice latex.

Currently there is a problem with the generation because it is not simple to see that there is a _ or & in the input text since looking for only one character does not really work (usually we put \& and \_ so more logic should be done.).


\| bibset generator \|
bibset := CZBibParser parse: ('rmod.bib' asFileReference) contents.
bibset scope: CZSet standardDefinitions.
generator := CZLaTeXGenerator new.
generator save: bibset to: 'rmod-Generated.tex'.