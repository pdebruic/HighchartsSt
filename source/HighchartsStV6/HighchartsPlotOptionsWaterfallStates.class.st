"
A wrapper object for all the series options in specific states.
"
Class {
	#name : #HighchartsPlotOptionsWaterfallStates,
	#superclass : #HighchartsComponent,
	#category : 'HighchartsStV6'
}

{ #category : #accessing }
HighchartsPlotOptionsWaterfallStates >> hover [

	"Options for the hovered series. These settings override the normal
state options when a series is moused over or touched.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighchartsPlotOptionsWaterfallStatesHover new]
]

{ #category : #accessing }
HighchartsPlotOptionsWaterfallStates >> normal [

	"Overrides for the normal state.
"
	^configurationOptions at: 'normal' ifAbsentPut: [HighchartsPlotOptionsWaterfallStatesNormal new]
]

{ #category : #accessing }
HighchartsPlotOptionsWaterfallStates >> select [

	"Specific options for point in selected states, after being selected
by allowPointSelect or
programmatically.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighchartsPlotOptionsWaterfallStatesSelect new]
]
