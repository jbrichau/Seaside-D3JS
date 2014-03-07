rendering
renderContentOn: html
	html unorderedList: [ 
		html listItem: [ 
			html anchor
				callback:[self call: D3JSRadialTreeExample new];
				with: 'Radial Reingold–Tilford Tree'
			 ].
		html listItem: [ 
			html anchor
				callback:[self call: D3JSAreaChartExample new];
				with: 'Area chart'
			 ].
		html listItem: [ 
			html anchor
				callback:[self call: D3JSScatterPlotExample new];
				with: 'Scatterplot'
			 ]
		 ]