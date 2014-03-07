as yet unclassified
register 
	| app |
	WAAdmin register: self asApplicationAt: 'd3js-externalfiles'.
	
	app := WAAdmin register: self asApplicationAt: 'd3js'.
	app addLibrary: D3JSExamplesLibrary.