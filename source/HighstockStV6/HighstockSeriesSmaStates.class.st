"
A wrapper object for all the series options in specific states.
"
Class {
	#name : #HighstockSeriesSmaStates,
	#superclass : #HighchartsComponent,
	#category : 'HighstockStV6'
}

{ #category : #accessing }
HighstockSeriesSmaStates >> hover [

	"Options for the hovered series. These settings override the normal
state options when a series is moused over or touched.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighstockSeriesSmaStatesHover new]
]

{ #category : #accessing }
HighstockSeriesSmaStates >> normal [

	"Overrides for the normal state.
"
	^configurationOptions at: 'normal' ifAbsentPut: [HighstockSeriesSmaStatesNormal new]
]

{ #category : #accessing }
HighstockSeriesSmaStates >> select [

	"Specific options for point in selected states, after being selected
by allowPointSelect or
programmatically.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighstockSeriesSmaStatesSelect new]
]
