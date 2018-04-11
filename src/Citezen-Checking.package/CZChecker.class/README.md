CZ so ugly and terrible
to be rewritten from scratch.



CZChecker is a class helping you to check your BibTeX files.
It will check:
- Syntax errors
- Bad entry types
- Undefined macros
- Blank fields
- Duplicate fields
- Needed fields (depending on the type)
- Keys are unique
- All the rules you defined 

It allows to specifie some rules (e.g. tell that the key has to be a 7-character-long word) with the messages addRule: aBlock and addRule: aBlock named: aString.
A rule is a block with one parameter: a CZEntry.

You can check your file with these 3 lines:
checker := CZChecker new.
checker checkFile: '/Users/.../file.bib'.
checker checks.
If you compute it with "print it", you'll see the errors.
If you don't print it, you can do at anytime by doing "print it" on that:
checker errorString.