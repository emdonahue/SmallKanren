extending
extend: aVar with: aVal
	^ self copy 
		substitution: (substitution extend: aVar with: aVal);
		setSchedule: (schedule collect: [ :g | g removeExternals: {aVar} ])