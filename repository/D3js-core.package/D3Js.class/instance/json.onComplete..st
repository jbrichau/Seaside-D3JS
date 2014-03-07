private
json: aCallback onComplete: aJSObject
	self call: 'json' with: (self storeJsonCallback: aCallback) with: aJSObject