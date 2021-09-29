to generate bibtex out of bibset entries.

The logic is currently bogus.
What we want to be able to do is the following: 
we take an entry #(e a b d g h)
and we should be able to sort them according to pattern i.e., (a c d)
and in addition we may want to filter out a set of entry i.e., (b)
and we should get 
	(a d e g h) 
	
Right now we only have a default order and this is not enough.
It is not enough in fact, if we consider that what is not in the order list is kept
but in that case we cannot filter out entry.
 