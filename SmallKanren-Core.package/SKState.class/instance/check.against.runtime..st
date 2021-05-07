constraining
check: aVar against: aValue runtime: aRuntime
	"Runs when aVar is unified with aValue, to check constraints. Fires the constraint to perform any necessary modifications, then removes the constraint, since after it has fired we no longer need to track it."

	^ constraints check: aValue remove: aVar in: self runtime: aRuntime.