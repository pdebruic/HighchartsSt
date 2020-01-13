"
This option defines the point to which the shape will be connected.
It can be either the point which exists in the series - it is
referenced by the point´s id - or a new point with defined x, y
properties and optionally axes.
"
Class {
	#name : #HighstockAnnotationsShapesPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockAnnotationsShapesPoint >> x: aNumber [

	"The x position of the point. Units can be either in axis
or chart pixel coordinates.
"

	configurationOptions at: 'x' put: aNumber
]

{ #category : #accessing }
HighstockAnnotationsShapesPoint >> xAxis: aNumberOrstring [

	"This number defines which xAxis the point is connected to. It
refers to either the axis id or the index of the axis in the
xAxis array. If the option is not configured or the axis is not
found the point´s x coordinate refers to the chart pixels.
"

	configurationOptions at: 'xAxis' put: aNumberOrstring
]

{ #category : #accessing }
HighstockAnnotationsShapesPoint >> y: aNumber [

	"The y position of the point. Units can be either in axis
or chart pixel coordinates.
"

	configurationOptions at: 'y' put: aNumber
]

{ #category : #accessing }
HighstockAnnotationsShapesPoint >> yAxis: aNumberOrstring [

	"This number defines which yAxis the point is connected to. It
refers to either the axis id or the index of the axis in the
yAxis array. If the option is not configured or the axis is not
found the point´s y coordinate refers to the chart pixels.
"

	configurationOptions at: 'yAxis' put: aNumberOrstring
]