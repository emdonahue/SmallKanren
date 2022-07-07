tabling
master: goalBlock args: argVars state: aState cache: cache key: cacheKey

	"instead of copying, this whole system should be based on a single tabled-stream producing call"

	"Strip pseudocounts from state since other branches will entel this tabling call with other pseudocount histories. Recombine the pseudocounts as states emerge from the master stream."

	"Suspend delayed goals so they dont affect the tabled values and recover them on return."

	<todo>
	self halt. "old master call"
	^ ((goalBlock valueWithArguments: argVars)
		   run: aState stripPseudocounts
		   runtime: self)
		  produceTabledAnswersFrom: (SKTabledProducerStream new
				   cache: cache;
				   inputs: cacheKey;
				   cacheKey: (aState reify: cacheKey);
				   state: aState)
		  runtime: self