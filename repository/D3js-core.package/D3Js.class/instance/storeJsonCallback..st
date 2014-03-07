private
storeJsonCallback: aCallback
	 ^ (self urlForXHRAction: [ self requestContext respond: [:response |
		response
			doNotCache;
			contentType: WAMimeType applicationJson;
			nextPutAll: (WAJsonCanvas builder
				render: aCallback)]])