*SmallKanren-Core
with: aSKTaggedVar as: anInteger

	^ self copy
		  at: aSKTaggedVar put: anInteger;
		  yourself