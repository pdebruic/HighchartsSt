"
A wrapper object for all the series options in specific states.
"
Class {
	#name : #HighstockSeriesOhlcIkhStates,
	#superclass : #HighchartsComponent,
	#category : 'HighstockStV6'
}

{ #category : #accessing }
HighstockSeriesOhlcIkhStates >> hover [

	"Options for the hovered series. These settings override the normal
state options when a series is moused over or touched.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighstockSeriesOhlcIkhStatesHover new]
]

{ #category : #accessing }
HighstockSeriesOhlcIkhStates >> normal [

	"Overrides for the normal state.
"
	^configurationOptions at: 'normal' ifAbsentPut: [HighstockSeriesOhlcIkhStatesNormal new]
]

{ #category : #accessing }
HighstockSeriesOhlcIkhStates >> select [

	"Specific options for point in selected states, after being selected
by allowPointSelect or
programmatically.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighstockSeriesOhlcIkhStatesSelect new]
]
