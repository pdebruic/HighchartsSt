"
Properties for each single point.
"
Class {
	#name : #HighchartsPlotOptionsDumbbellPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V8'
}

{ #category : #accessing }
HighchartsPlotOptionsDumbbellPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]