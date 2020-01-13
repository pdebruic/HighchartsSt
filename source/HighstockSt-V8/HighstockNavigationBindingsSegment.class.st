"
A segment annotation bindings. Includes start and one event in steps
array.
"
Class {
	#name : #HighstockNavigationBindingsSegment,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockNavigationBindingsSegment >> start: anObject [


	configurationOptions at: 'start' put: anObject
]