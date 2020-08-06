disequality
disunify: aDisequality
	"Disequalities use #disunify: to unify their terms and then check for new bindings. This method trampolines control back to subsequent disequality constraints to continue processing until they are all exhausted."
	^ aDisequality disunify: self