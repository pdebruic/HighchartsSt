accessing
pointFor: datum on: aCanvas

	| point |

	point := aCanvas highcharts newPoint.
	point name: datum name.
	
	self configureXAxisOf: point accordingTo: datum.
	self configureYAxisOf: point accordingTo: datum.
	self configureRangeOf: point accordingTo: datum.
	^ point