as yet unclassified
updateRoot: aRoot
	super updateRoot: aRoot.
	aRoot addStyle: 'body {
  font: 10px sans-serif;
}

.axis path, .axis line {
  fill: none;
  stroke: #000;
  shape-rendering: crispEdges;
}

.point {
  fill: steelblue;
  stroke: #000;
}'
		