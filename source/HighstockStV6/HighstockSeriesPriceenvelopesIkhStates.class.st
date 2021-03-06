"
A wrapper object for all the series options in specific states.
"
Class {
	#name : #HighstockSeriesPriceenvelopesIkhStates,
	#superclass : #HighchartsComponent,
	#category : 'HighstockStV6'
}

{ #category : #accessing }
HighstockSeriesPriceenvelopesIkhStates >> hover [

	"Options for the hovered series. These settings override the normal
state options when a series is moused over or touched.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighstockSeriesPriceenvelopesIkhStatesHover new]
]

{ #category : #accessing }
HighstockSeriesPriceenvelopesIkhStates >> normal [

	"Overrides for the normal state.
"
	^configurationOptions at: 'normal' ifAbsentPut: [HighstockSeriesPriceenvelopesIkhStatesNormal new]
]

{ #category : #accessing }
HighstockSeriesPriceenvelopesIkhStates >> select [

	"Specific options for point in selected states, after being selected
by allowPointSelect or
programmatically.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighstockSeriesPriceenvelopesIkhStatesSelect new]
]
