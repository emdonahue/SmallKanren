accessing
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec 
				baseline: 'Cons' with: [ spec repository: 'github://emdonahue/Cons' ];
				baseline: 'Contracts' with: [ spec repository: 'github://emdonahue/Contracts' ];			
				package: 'SmallKanren-Core' with: [ spec requires: #('Cons') ];
				package: 'SmallKanren-Tests' with: [ spec requires: #('SmallKanren-Core' 'Cons' 'Contracts') ] ]