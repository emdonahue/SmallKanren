as yet unclassified
checkConstraints: env o: out
	^ [ :sub :typeo :diseq :absento | env === (sub cons: (typeo cons: diseq cons: absento cons) cons) & (self checkTypes: typeo in: env out: out depth: self programLength) ]