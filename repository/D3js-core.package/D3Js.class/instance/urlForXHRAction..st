private
urlForXHRAction: aBlock
	"Answer an action URL that will evaluate aBlock when it is requested."

	^ renderContext actionUrl withField: (renderContext callbacks store: (JSAjaxCallback on: aBlock))
