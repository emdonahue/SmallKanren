accessing
runner
	| r |
	r := SKRunner new.
	^ r stream: (self run: SKState new runner: r).