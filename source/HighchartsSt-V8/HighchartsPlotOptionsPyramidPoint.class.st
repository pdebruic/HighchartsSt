"
Properties for each single point.
"
Class {
	#name : #HighchartsPlotOptionsPyramidPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V8'
}

{ #category : #accessing }
HighchartsPlotOptionsPyramidPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]