inspecting
gtInspectorConstraints: composite
	composite table
		title: 'Constraints';
		column: 'Variable' evaluated: [ :a | a key ];
		column: 'Value' evaluated: [ :a | (a value skReify: self) ];
		selectionAct: [ :x | x selection value value inspect ] entitled: 'Inspect';
		display: hashmap associations asArray