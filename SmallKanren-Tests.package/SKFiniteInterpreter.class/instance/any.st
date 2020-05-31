interpreting
any
	"Returns all possible types (lists are returned with free vars to speed matching process."

	^ self nonLists , {(SKVar new cons: SKVar new)}