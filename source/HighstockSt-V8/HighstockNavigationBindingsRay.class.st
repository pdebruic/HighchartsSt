"
A ray annotation bindings. Includes start and one event in steps
array.
"
Class {
	#name : #HighstockNavigationBindingsRay,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockNavigationBindingsRay >> start: anObject [


	configurationOptions at: 'start' put: anObject
]