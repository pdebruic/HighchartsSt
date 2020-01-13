"
Properties for each single point.
"
Class {
	#name : #HighstockSeriesLinearregressioninterceptPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockSeriesLinearregressioninterceptPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]