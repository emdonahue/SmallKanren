merging
consolidate: aConstraint
	"If no constraints have outright failed, then given that unification constraint terms must be fully ground, there can be no constraints on either the current var or any sub vars (as there are none) so the unification is the only operation necessary."