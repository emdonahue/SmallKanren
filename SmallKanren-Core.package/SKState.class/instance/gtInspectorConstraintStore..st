inspecting
gtInspectorConstraintStore: composite
	<gtInspectorPresentationOrder: 40>
	| labeler |
	labeler := self varNames. substitution skPrintOn: (WriteStream on: #()) names: labeler.	"Run the labelel through the substitution first, so variables always have deterministic, canonical labels for a given state, independent of whether we view the constraints or the substitution first."
	constraints gtInspectorConstraintStore: composite labels: labeler