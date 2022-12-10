Command design pattern.

Rules concerning a whole bib set should override the "check:" method, while rules that can be applied to a single entry should override the "checkEntry:" method.
This could probably be designed better, with proper subclasses for set and entry rules.