running
runner
	"can probably DRY this out wrt run:"

	<todo>
	| args |
	args := block argumentNames collect: [ :a | SKVar tag: a ].
	^ SKRunner new
		stream: ((block valueWithArguments: args) asGoal run: SKState new);
		queryVars: args asCons