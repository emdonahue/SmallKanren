running
ando: v1 ando: v2 ando: v3
	^ v2 === true & (v3 === true) & (v1 === true) | (v2 === false & (v1 === false)) | (v3 === false & (v1 === false))