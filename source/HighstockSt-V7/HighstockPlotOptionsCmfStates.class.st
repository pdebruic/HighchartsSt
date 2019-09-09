Class {
	#name : #HighstockPlotOptionsCmfStates,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockPlotOptionsCmfStates >> hover [

	"Options for the hovered series. These settings override the
normal state options when a series is moused over or touched.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighstockPlotOptionsCmfStatesHover new]
]

{ #category : #accessing }
HighstockPlotOptionsCmfStates >> inactive [

	"The opposite state of a hover for series.
"
	^configurationOptions at: 'inactive' ifAbsentPut: [HighstockPlotOptionsCmfStatesInactive new]
]

{ #category : #accessing }
HighstockPlotOptionsCmfStates >> normal [

	"The normal state of a series, or for point items in column, pie
and similar series. Currently only used for setting animation
when returning to normal state from hover.
"
	^configurationOptions at: 'normal' ifAbsentPut: [HighstockPlotOptionsCmfStatesNormal new]
]

{ #category : #accessing }
HighstockPlotOptionsCmfStates >> select [

	"Specific options for point in selected states, after being
selected by
allowPointSelect
or programmatically.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighstockPlotOptionsCmfStatesSelect new]
]