as yet unclassified
count: count weight: logWeight add: logTotal
	"Scale the count by the logWeight and add to the logTotal."
	| weightedCount |
	count ifNil: [ ^ logTotal ].
	weightedCount := count ln + logWeight.
	logTotal ifNil: [ ^ weightedCount ].
	^ self log: count ln + logWeight sum: logTotal.