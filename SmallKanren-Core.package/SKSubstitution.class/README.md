I store Var -> value associations.that represent the current variable bindings in any branch of the search tree, or in returned results.

I am based on an immutable hash table, which becomes much faster than the traditional association list as substitutions become large.