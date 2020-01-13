"
Properties for each single point.
"
Class {
	#name : #HighchartsPlotOptionsSunburstPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V8'
}

{ #category : #accessing }
HighchartsPlotOptionsSunburstPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]