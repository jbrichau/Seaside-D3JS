as yet unclassified
renderContentOn: html

	html script:
		(html d3 
			json: [:json | json value: self coordinates ]
			onComplete: (JSStream on: 'buildscatterplot')).