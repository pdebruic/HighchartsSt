"
Properties for each single point.
"
Class {
	#name : #HighstockSeriesLinearregressionPoint,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockSeriesLinearregressionPoint >> events: anObject [

	"Events for each single point.
"

	configurationOptions at: 'events' put: anObject
]