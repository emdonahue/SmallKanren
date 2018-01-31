running
oro: v1 oro: v2 oro: v3
	^ v2 === false & (v3 === false) & (v1 === false) | (v2 === true & (v1 === true)) | (v3 === true & (v1 === true))