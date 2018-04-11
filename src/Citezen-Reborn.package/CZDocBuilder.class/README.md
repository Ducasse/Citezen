I'm responsible for building document. I work on a bib set and once all the filtering is done. Visitors such as CZBibTexGenerator can render them. 


So far having just a title and sections is just enough. In the future we should add paragraph and link 
to easily add a bibtex file synchronized with the entries.


Implementation notes.

- workingSet is a private field. The public API is to use bibset: to specify the bib set to work with
