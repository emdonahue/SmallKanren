running
runner
	"can probably DRY this out wrt run:"

	<todo>
	| args r |
	args := block argumentNames collect: [ :a | SKVar tag: a ].
	r := SKRunner new.
	^ r
		stream: ((block valueWithArguments: args) asGoal run: SKState new runner: r);
		queryVars: args asCons