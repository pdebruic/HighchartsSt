"
An array of data points for the series. For the windbarb series type,
points can be given in the following ways:

An array of arrays with 3 values. In this case, the values correspond
to x,value,direction. If the first value is a string, it is applied as
the name of the point, and the x value is inferred.
data: [
    [Date.UTC(2017, 0, 1, 0), 3.3, 90],
    [Date.UTC(2017, 0, 1, 1), 12.1, 180],
    [Date.UTC(2017, 0, 1, 2), 11.1, 270]
]


An array of objects with named values. The objects are point
configuration objects as seen below. If the total number of data
points exceeds the series´ turboThreshold,
this option is not available.
data: [{
    x: Date.UTC(2017, 0, 1, 0),
    value: 12.1,
    direction: 90
}, {
    x: Date.UTC(2017, 0, 1, 1),
    value: 11.1,
    direction: 270
}]
"
Class {
	#name : #HighstockSeriesWindbarbData,
	#superclass : #HighchartsComponent,
	#category : 'HighstockStV6'
}

{ #category : #accessing }
HighstockSeriesWindbarbData >> color: aColor [

	"Individual color for the point. By default the color is pulled from
the global colors array.
In styled mode, the color option doesn´t take effect. Instead, use 
colorIndex.
Defaults to undefined."

	configurationOptions at: 'color' put: aColor
]

{ #category : #accessing }
HighstockSeriesWindbarbData >> dataLabels: anObject [

	"Individual data label for each point. The options are the same as
the ones for plotOptions.series.dataLabels
"

	configurationOptions at: 'dataLabels' put: anObject
]

{ #category : #accessing }
HighstockSeriesWindbarbData >> description: aString [

	"A description of the point to add to the screen reader information
about the point. Requires the Accessibility module.
Defaults to undefined."

	configurationOptions at: 'description' put: aString
]

{ #category : #accessing }
HighstockSeriesWindbarbData >> direction: aNumber [

	"The wind direction in degrees, where 0 is north (pointing towards south).
"

	configurationOptions at: 'direction' put: aNumber
]

{ #category : #accessing }
HighstockSeriesWindbarbData >> events [

	"Individual point events
"
	^configurationOptions at: 'events' ifAbsentPut: [HighstockSeriesWindbarbDataEvents new]
]

{ #category : #accessing }
HighstockSeriesWindbarbData >> events: anObject [

	"Individual point events
"

	configurationOptions at: 'events' put: anObject
]

{ #category : #accessing }
HighstockSeriesWindbarbData >> id: aString [

	"An id for the point. This can be used after render time to get a
pointer to the point object through chart.get().
Defaults to null."

	configurationOptions at: 'id' put: aString
]

{ #category : #accessing }
HighstockSeriesWindbarbData >> labelrank: aNumber [

	"The rank for this point´s data label in case of collision. If two
data labels are about to overlap, only the one with the highest labelrank
will be drawn.
"

	configurationOptions at: 'labelrank' put: aNumber
]

{ #category : #accessing }
HighstockSeriesWindbarbData >> marker [

	^configurationOptions at: 'marker' ifAbsentPut: [HighstockSeriesWindbarbDataMarker new]
]

{ #category : #accessing }
HighstockSeriesWindbarbData >> name: aString [

	"The name of the point as shown in the legend, tooltip, dataLabel
etc.
"

	configurationOptions at: 'name' put: aString
]

{ #category : #accessing }
HighstockSeriesWindbarbData >> selected: aBoolean [

	"Whether the data point is selected initially.
Defaults to false."

	configurationOptions at: 'selected' put: aBoolean
]

{ #category : #accessing }
HighstockSeriesWindbarbData >> value: aNumber [

	"The wind speed in meters per second.
"

	configurationOptions at: 'value' put: aNumber
]

{ #category : #accessing }
HighstockSeriesWindbarbData >> x: aNumber [

	"The x value of the point. For datetime axes, the X value is the timestamp
in milliseconds since 1970.
"

	configurationOptions at: 'x' put: aNumber
]

{ #category : #accessing }
HighstockSeriesWindbarbData >> y: aNumber [

	"The y value of the point.
Defaults to null."

	configurationOptions at: 'y' put: aNumber
]
