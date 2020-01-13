"
Elliott wave (three points) annotation bindings. Includes start and two
events in steps (for second and third points) array.
"
Class {
	#name : #HighstockNavigationBindingsElliott3,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockNavigationBindingsElliott3 >> start: anObject [


	configurationOptions at: 'start' put: anObject
]