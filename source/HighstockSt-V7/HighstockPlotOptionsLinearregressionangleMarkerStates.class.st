"
States for a single point marker.
"
Class {
	#name : #HighstockPlotOptionsLinearregressionangleMarkerStates,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockPlotOptionsLinearregressionangleMarkerStates >> hover [

	"The hover state for a single point marker.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighstockPlotOptionsLinearregressionangleMarkerStatesHover new]
]

{ #category : #accessing }
HighstockPlotOptionsLinearregressionangleMarkerStates >> inactive [

	^configurationOptions at: 'inactive' ifAbsentPut: [HighstockPlotOptionsLinearregressionangleMarkerStatesInactive new]
]

{ #category : #accessing }
HighstockPlotOptionsLinearregressionangleMarkerStates >> normal [

	"The normal state of a single point marker. Currently only
used for setting animation when returning to normal state
from hover.
"
	^configurationOptions at: 'normal' ifAbsentPut: [HighstockPlotOptionsLinearregressionangleMarkerStatesNormal new]
]

{ #category : #accessing }
HighstockPlotOptionsLinearregressionangleMarkerStates >> select [

	"The appearance of the point marker when selected. In order to
allow a point to be selected, set the
series.allowPointSelect option to true.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighstockPlotOptionsLinearregressionangleMarkerStatesSelect new]
]