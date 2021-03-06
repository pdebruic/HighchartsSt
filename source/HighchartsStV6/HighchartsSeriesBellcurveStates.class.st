"
A wrapper object for all the series options in specific states.
"
Class {
	#name : #HighchartsSeriesBellcurveStates,
	#superclass : #HighchartsComponent,
	#category : 'HighchartsStV6'
}

{ #category : #accessing }
HighchartsSeriesBellcurveStates >> hover [

	"Options for the hovered series. These settings override the normal
state options when a series is moused over or touched.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighchartsSeriesBellcurveStatesHover new]
]

{ #category : #accessing }
HighchartsSeriesBellcurveStates >> normal [

	"Overrides for the normal state.
"
	^configurationOptions at: 'normal' ifAbsentPut: [HighchartsSeriesBellcurveStatesNormal new]
]

{ #category : #accessing }
HighchartsSeriesBellcurveStates >> select [

	"Specific options for point in selected states, after being selected
by allowPointSelect or
programmatically.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighchartsSeriesBellcurveStatesSelect new]
]
