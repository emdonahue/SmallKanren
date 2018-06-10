pathing
arc: from to: to
	^ (from === #a & (to === #b)) | (from === #b & (to === #a)) | (from === #b & (to === #d))