tests
testReification
	<script>
	| cons one notOne isSymbol absentoOne |
	cons := SKVar tag: #cons.
	one := SKVar tag: #one.
	notOne := SKVar tag: #notOne.
	isSymbol := SKVar tag: #isSymbol.
	absentoOne := SKVar tag: #absentoOne.
	(notOne =/= one & isSymbol isSymbolo & (absentoOne absento: one) & (cons === (one cons: notOne)) & (one === 1)) runner inspect