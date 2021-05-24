Streams represent the live search tree generating a stream of answers (or incomplete states) from the search. 
- A simple unification or constraint goal returns a State stream, which contains the substitution and constraint store. 
- An Or goal returns an MPlus stream representing independent branches of the interleaving search.
- An And goal returns a Bind, which applies both goals to the same stream.
- A Fresh goal returns an Incomplete stream which simply delays execution for a single turn before returning the stream of its subgoal.
- A Complete stream is a stream containing a completed State that is ready to return as a top level answer plus a stream representing the rest of the search in whatever state it may be in.