Parser for LaTeX's .aux files, collecting citations marks, as well as the used databases and style. The parser stores a Bag of cited entry keys, an OrderedCollection of databases names and a single style; ask for those after parsing.

Limitations:
 - Some LaTeX classes or packages redefine the format of citations in the .aux file so this will probably break for such files;
 - this parser relies on side effects during the (linear) parsing to collect data in its own instance variables, which is probably not very robust if the grammar needs backtracks (compared to functional aggregation like proper attributed grammars).