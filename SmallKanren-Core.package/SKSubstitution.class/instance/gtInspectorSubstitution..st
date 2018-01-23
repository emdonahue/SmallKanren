inspecting
gtInspectorSubstitution: composite 
	"composite table
		title: 'Substitution';
		column: 'Variable' evaluated: [ :a | aLabeler tagOf: a key ];
		column: 'Value' evaluated: [ :a | a value skPrintLabels: aLabeler ];
		selectionAct: [ :x | x selection value value inspect ] entitled: 'Inspect';
		display: hashmap associations asArray"

	<gtInspectorPresentationOrder: 30>
	