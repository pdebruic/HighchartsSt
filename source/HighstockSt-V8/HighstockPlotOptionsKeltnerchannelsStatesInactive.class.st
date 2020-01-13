"
The opposite state of a hover for series.
"
Class {
	#name : #HighstockPlotOptionsKeltnerchannelsStatesInactive,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockPlotOptionsKeltnerchannelsStatesInactive >> animation [

	"The animation for entering the inactive state.
"
	^ configurationOptions at: 'animation' ifAbsentPut: [ HighstockPlotOptionsKeltnerchannelsStatesInactiveAnimation new ]
]

{ #category : #accessing }
HighstockPlotOptionsKeltnerchannelsStatesInactive >> opacity: aNumber [

	"Opacity of series elements (dataLabels, line, area). Set to 1
to disable inactive state.
Defaults to 0.2."

	configurationOptions at: 'opacity' put: aNumber
]