"
Properties for each single point.
"
Class {
	#name : #HighstockPlotOptionsZigzagPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockPlotOptionsZigzagPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]