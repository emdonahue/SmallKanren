inspecting
gtInspectHistoryIn: aComposite
	"stream isEmptyStream
		ifFalse: [ aComposite text
				title: 'History';
				display: (stream historyFromModel: model) ]"

	"<gtInspectorPresentationOrder: 40>"
	