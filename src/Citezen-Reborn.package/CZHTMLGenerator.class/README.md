A CZHTMLGenerator is generating nice html for us. 

\| bibset generator \|
bibset := CZBibParser parse: ('rmod.bib' asFileReference) contents.
bibset scope: CZSet standardDefinitions.
generator := CZHTMLGenerator new.
generator save: bibset to: 'rmod-Generated.html'.