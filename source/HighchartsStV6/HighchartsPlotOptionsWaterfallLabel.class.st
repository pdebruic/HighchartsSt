"
Series labels are placed as close to the series as possible in a
natural way, seeking to avoid other series. The goal of this
feature is to make the chart more easily readable, like if a
human designer placed the labels in the optimal position.
The series labels currently work with series types having a
graph or an area.
Requires the series-label.js module.
"
Class {
	#name : #HighchartsPlotOptionsWaterfallLabel,
	#superclass : #HighchartsComponent,
	#category : 'HighchartsStV6'
}

{ #category : #accessing }
HighchartsPlotOptionsWaterfallLabel >> boxesToAvoid: anArrayOfObject [

	"An array of boxes to avoid when laying out the labels. Each 
item has a left, right, top and bottom property.
"

	configurationOptions at: 'boxesToAvoid' put: anArrayOfObject
]

{ #category : #accessing }
HighchartsPlotOptionsWaterfallLabel >> connectorAllowed: aBoolean [

	"Allow labels to be placed distant to the graph if necessary,
and draw a connector line to the graph.
Defaults to true."

	configurationOptions at: 'connectorAllowed' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsWaterfallLabel >> connectorNeighbourDistance: aNumber [

	"If the label is closer than this to a neighbour graph, draw a
connector.
Defaults to 24."

	configurationOptions at: 'connectorNeighbourDistance' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsWaterfallLabel >> enabled: aBoolean [

	"Enable the series label per series.
Defaults to true."

	configurationOptions at: 'enabled' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsWaterfallLabel >> maxFontSize: aNumber [

	"For area-like series, allow the font size to vary so that
small areas get a smaller font size. The default applies this
effect to area-like series but not line-like series.
Defaults to nil."

	configurationOptions at: 'maxFontSize' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsWaterfallLabel >> minFontSize: aNumber [

	"For area-like series, allow the font size to vary so that
small areas get a smaller font size. The default applies this
effect to area-like series but not line-like series.
Defaults to nil."

	configurationOptions at: 'minFontSize' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsWaterfallLabel >> onArea: aBoolean [

	"Draw the label on the area of an area series. By default it
is drawn on the area. Set it to false to draw it next to
the graph instead.
Defaults to nil."

	configurationOptions at: 'onArea' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsWaterfallLabel >> style [

	"Styles for the series label. The color defaults to the series
color, or a contrast color if onArea.
"
	^configurationOptions at: 'style' ifAbsentPut: [HighchartsPlotOptionsWaterfallLabelStyle new]
]
