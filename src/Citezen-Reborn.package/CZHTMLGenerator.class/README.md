A CZHTMLGenerator is generating nice html for us. 

| visitor bibset |
bibset := CZBibParser parse: ('rmod.bib' asFileReference) contents.
bibset scope: CZSet standardDefinitions.
visitor := CZHTMLGenerator new filename: 'rmod-Generated.html'.
visitor visit: bibset.
