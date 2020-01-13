"
Properties for each single point.
"
Class {
	#name : #HighstockPlotOptionsChaikinPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockPlotOptionsChaikinPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]