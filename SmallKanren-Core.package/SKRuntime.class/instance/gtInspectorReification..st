inspecting
gtInspectorReification: composite
	<gtInspectorPresentationOrder: 40>
	<todo>
	"make this not delegated, like query. do the processing here"
	stream ifNil: [ ^ self ].
	stream gtInspectorReification: composite.