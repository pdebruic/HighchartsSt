Class {
	#name : #HighstockPlotOptionsRsiParams,
	#superclass : #HighchartsComponent,
	#category : 'HighstockStV6'
}

{ #category : #accessing }
HighstockPlotOptionsRsiParams >> decimals: aNumber [

	"Number of maximum decimals that are used in RSI calculations.
Defaults to 4."

	configurationOptions at: 'decimals' put: aNumber
]

{ #category : #accessing }
HighstockPlotOptionsRsiParams >> period: aNumber [

	"The base period for indicator calculations.
Defaults to 14."

	configurationOptions at: 'period' put: aNumber
]
