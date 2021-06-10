accessing
pattern 
	| names |
	names := block argumentNames.
	^ ((SKVar tag: names first) cons: (SKVar tag: names second)) cons: (SKVar tag: names third).