rendering
renderContentOn: html

	html script:
		(html d3 
			json: [:json | self seasidePackagesOn: json ]
			onComplete: (JSStream on: 'buildradialtree')).