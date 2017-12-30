inspecting
gtInspectorConstraints: composite names: tags
	composite table
		title: 'Constraints';
		column: 'Variable' evaluated: [ :a | tags tagOf: a key ];
		column: 'Value' evaluated: [ :a | (a value skReify: self) skPrintWithNames: tags ];
		selectionAct: [ :x | x selection value value inspect ] entitled: 'Inspect';
		display: hashmap associations asArray