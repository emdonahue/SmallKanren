as yet unclassified
run: aState model: aModel
	"Executes when goal is run as a subgoal (non top level), which is uncommon due match being preferred in most cases."
	^ SKIncomplete new
		state: aState;
		goal: [ self expandFreshWithModel: aModel ] asGoal 