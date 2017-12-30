debugging
, aSKDisequalityGoal
	"Returns a conjoined diseuality of the constraints represented by these two goals. Used for testing, not live code."

	^ SKDisjoinedDisequalities new
		constraint: aSKDisequalityGoal asConstraint;
		next: self asConstraint