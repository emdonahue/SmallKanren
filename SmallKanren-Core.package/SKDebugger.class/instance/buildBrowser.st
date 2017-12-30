building
buildBrowser
	browser := GLMFinder new.
	browser show: [ :a | self branchesIn: a ]