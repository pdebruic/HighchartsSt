"
Options for the point markers of line-like series. Properties like
fillColor, lineColor and lineWidth define the visual appearance
of the markers. Other series types, like column series, don´t have
markers, but have visual options on the series level instead.
In styled mode, the markers can be styled with the .highcharts-point,
.highcharts-point-hover and .highcharts-point-select
class names.
"
Class {
	#name : #HighchartsSeriesSplineMarker,
	#superclass : #HighchartsComponent,
	#category : 'HighchartsStV6'
}

{ #category : #accessing }
HighchartsSeriesSplineMarker >> enabled: aBoolean [

	"Enable or disable the point marker. If null, the markers are hidden
when the data is dense, and shown for more widespread data points.
"

	configurationOptions at: 'enabled' put: aBoolean
]

{ #category : #accessing }
HighchartsSeriesSplineMarker >> fillColor: aColor [

	"The fill color of the point marker. When null, the series´ or
point´s color is used.
Defaults to null."

	configurationOptions at: 'fillColor' put: aColor
]

{ #category : #accessing }
HighchartsSeriesSplineMarker >> height: aNumber [

	"Image markers only. Set the image width explicitly. When using this
option, a width must also be set.
Defaults to null."

	configurationOptions at: 'height' put: aNumber
]

{ #category : #accessing }
HighchartsSeriesSplineMarker >> lineColor: aColor [

	"The color of the point marker´s outline. When null, the series´
or point´s color is used.
Defaults to #ffffff."

	configurationOptions at: 'lineColor' put: aColor
]

{ #category : #accessing }
HighchartsSeriesSplineMarker >> lineWidth: aNumber [

	"The width of the point marker´s outline.
Defaults to 0."

	configurationOptions at: 'lineWidth' put: aNumber
]

{ #category : #accessing }
HighchartsSeriesSplineMarker >> radius: aNumber [

	"The radius of the point marker.
Defaults to 4."

	configurationOptions at: 'radius' put: aNumber
]

{ #category : #accessing }
HighchartsSeriesSplineMarker >> states [

	"States for a single point marker.
"
	^configurationOptions at: 'states' ifAbsentPut: [HighchartsSeriesSplineMarkerStates new]
]

{ #category : #accessing }
HighchartsSeriesSplineMarker >> states: anObject [

	"States for a single point marker.
"

	configurationOptions at: 'states' put: anObject
]

{ #category : #accessing }
HighchartsSeriesSplineMarker >> symbol: aString [

	"A predefined shape or symbol for the marker. When null, the symbol
is pulled from options.symbols. Other possible values are &quot;circle&quot;,
&quot;square&quot;, &quot;diamond&quot;, &quot;triangle&quot; and &quot;triangle-down&quot;.
Additionally, the URL to a graphic can be given on this form:
&quot;url(graphic.png)&quot;. Note that for the image to be applied to exported
charts, its URL needs to be accessible by the export server.
Custom callbacks for symbol path generation can also be added to
Highcharts.SVGRenderer.prototype.symbols. The callback is then
used by its method name, as shown in the demo.
Defaults to null."

	configurationOptions at: 'symbol' put: aString
]

{ #category : #accessing }
HighchartsSeriesSplineMarker >> width: aNumber [

	"Image markers only. Set the image width explicitly. When using this
option, a height must also be set.
Defaults to null."

	configurationOptions at: 'width' put: aNumber
]
