scheduling
schedule: aSchedule
	<type: #isNotEmpty type: #SKGuardSchedule>
	^ SKGuardSchedule new substitution: self; setSchedule: aSchedule