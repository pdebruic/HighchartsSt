"
Properties for each single point.
"
Class {
	#name : #HighchartsPlotOptionsScatterPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V8'
}

{ #category : #accessing }
HighchartsPlotOptionsScatterPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]