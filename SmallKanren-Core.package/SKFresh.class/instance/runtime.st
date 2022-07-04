running
runtime
"As the top level goal, we forego making a stream and execute the top level goal directly, saving the fresh variables as the query variables for the entire computaiton."
	^ SKRuntime fromBlock: block query: self query asCons.