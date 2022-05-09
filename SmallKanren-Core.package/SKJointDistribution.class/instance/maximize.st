window management
maximize
	^ self copy distributions: (self distributions collect: [ :d | d maximize ]).