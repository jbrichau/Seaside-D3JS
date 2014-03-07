private
seasidePackagesOn: json
	| dict |

	dict := Dictionary new.
	(RPackageOrganizer default packages select:[:p | (p name beginsWith: 'Seaside') and:[(p name includesSubstring: 'Tests') not]]) do:[:p | dict at: p put: p definedClasses].
		
	json object: [ 
		json key: 'name' value: 'Seaside'.
		json key: 'children' value: [  
			json array:[
				dict keysAndValuesDo:[:package :classes |
					json value:[ json object:[
						json key: 'name' value: package name.	
						json key: 'children' value: [ 
							json array: [ classes do:[:cl |
								json value:[ json object: [
												json key: 'name' value: cl name.
												json key: 'size' value: cl selectors size]]]]]]]]]]]