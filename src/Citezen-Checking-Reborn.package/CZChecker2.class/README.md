A try to create a better checker fixing CZChecker design issues.

This checker is analyzing a bib set, generating a CZAnalyzedSet.
Then, rules (CZRule2) are applied to it.
Finally, logs (CZLogSet) are returned.

Sample code:

checker := CZChecker2 new.
checker addRule: (CZDuplicateKeysRule new).
checker addRule: (CZEmptyFieldRule new).
checker checkFile: 'file.bib'.