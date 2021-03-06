"
A wrapper object for all the series options in specific states.
"
Class {
	#name : #HighchartsSeriesPieStates,
	#superclass : #HighchartsComponent,
	#category : 'HighchartsStV6'
}

{ #category : #accessing }
HighchartsSeriesPieStates >> hover [

	"Options for the hovered series. These settings override the normal
state options when a series is moused over or touched.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighchartsSeriesPieStatesHover new]
]

{ #category : #accessing }
HighchartsSeriesPieStates >> normal [

	"Overrides for the normal state.
"
	^configurationOptions at: 'normal' ifAbsentPut: [HighchartsSeriesPieStatesNormal new]
]

{ #category : #accessing }
HighchartsSeriesPieStates >> select [

	"Specific options for point in selected states, after being selected
by allowPointSelect or
programmatically.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighchartsSeriesPieStatesSelect new]
]
