"
Override Pathfinder connector options for a series. Requires Highcharts Gantt
to be loaded.
"
Class {
	#name : #HighchartsSeriesAreasplinerangeConnectors,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V8'
}

{ #category : #accessing }
HighchartsSeriesAreasplinerangeConnectors >> dashStyle: aString [

	"Set the default dash style for this chart´s connecting lines.
Defaults to solid."

	configurationOptions at: 'dashStyle' put: aString
]

{ #category : #accessing }
HighchartsSeriesAreasplinerangeConnectors >> endMarker [

	"Marker options specific to the end markers for this chart´s
Pathfinder connectors. Overrides the generic marker options.
"
	^ configurationOptions at: 'endMarker' ifAbsentPut: [ HighchartsSeriesAreasplinerangeConnectorsEndMarker new ]
]

{ #category : #accessing }
HighchartsSeriesAreasplinerangeConnectors >> lineColor: aHighchartsColorString [

	"Set the default color for this chart´s Pathfinder connecting lines.
Defaults to the color of the point being connected.
"

	configurationOptions at: 'lineColor' put: aHighchartsColorString
]

{ #category : #accessing }
HighchartsSeriesAreasplinerangeConnectors >> lineWidth: aNumber [

	"Set the default pixel width for this chart´s Pathfinder connecting
lines.
Defaults to 1."

	configurationOptions at: 'lineWidth' put: aNumber
]

{ #category : #accessing }
HighchartsSeriesAreasplinerangeConnectors >> marker [

	"Marker options for this chart´s Pathfinder connectors. Note that
this option is overridden by the startMarker and endMarker
options.
"
	^ configurationOptions at: 'marker' ifAbsentPut: [ HighchartsSeriesAreasplinerangeConnectorsMarker new ]
]

{ #category : #accessing }
HighchartsSeriesAreasplinerangeConnectors >> startMarker [

	"Marker options specific to the start markers for this chart´s
Pathfinder connectors. Overrides the generic marker options.
"
	^ configurationOptions at: 'startMarker' ifAbsentPut: [ HighchartsSeriesAreasplinerangeConnectorsStartMarker new ]
]

{ #category : #accessing }
HighchartsSeriesAreasplinerangeConnectors >> type: aHighchartsPathfinderTypeValue [

	"Set the default pathfinder algorithm to use for this chart. It is
possible to define your own algorithms by adding them to the
Highcharts.Pathfinder.prototype.algorithms object before the chart
has been created.
The default algorithms are as follows:
straight:      Draws a straight line between the connecting
                 points. Does not avoid other points when drawing.
simpleConnect: Finds a path between the points using right angles
                 only. Takes only starting/ending points into
                 account, and will not avoid other points.
fastAvoid:     Finds a path between the points using right angles
                 only. Will attempt to avoid other points, but its
                 focus is performance over accuracy. Works well with
                 less dense datasets.
Default value: straight is used as default for most series types,
while simpleConnect is used as default for Gantt series, to show
dependencies between points.
Defaults to undefined."

	configurationOptions at: 'type' put: aHighchartsPathfinderTypeValue
]