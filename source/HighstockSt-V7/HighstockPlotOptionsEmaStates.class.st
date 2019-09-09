Class {
	#name : #HighstockPlotOptionsEmaStates,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockPlotOptionsEmaStates >> hover [

	"Options for the hovered series. These settings override the
normal state options when a series is moused over or touched.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighstockPlotOptionsEmaStatesHover new]
]

{ #category : #accessing }
HighstockPlotOptionsEmaStates >> inactive [

	"The opposite state of a hover for series.
"
	^configurationOptions at: 'inactive' ifAbsentPut: [HighstockPlotOptionsEmaStatesInactive new]
]

{ #category : #accessing }
HighstockPlotOptionsEmaStates >> normal [

	"The normal state of a series, or for point items in column, pie
and similar series. Currently only used for setting animation
when returning to normal state from hover.
"
	^configurationOptions at: 'normal' ifAbsentPut: [HighstockPlotOptionsEmaStatesNormal new]
]

{ #category : #accessing }
HighstockPlotOptionsEmaStates >> select [

	"Specific options for point in selected states, after being
selected by
allowPointSelect
or programmatically.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighstockPlotOptionsEmaStatesSelect new]
]