"
Properties for each single point.
"
Class {
	#name : #HighstockPlotOptionsMacdPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockPlotOptionsMacdPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]