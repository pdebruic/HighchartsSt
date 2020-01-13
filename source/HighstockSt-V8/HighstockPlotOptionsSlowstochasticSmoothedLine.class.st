"
Smoothed line options.
"
Class {
	#name : #HighstockPlotOptionsSlowstochasticSmoothedLine,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockPlotOptionsSlowstochasticSmoothedLine >> styles [

	"Styles for a smoothed line.
"
	^ configurationOptions at: 'styles' ifAbsentPut: [ HighstockPlotOptionsSlowstochasticSmoothedLineStyles new ]
]