"
Bottom line options.
"
Class {
	#name : #HighstockPlotOptionsPriceenvelopesBottomLine,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockPlotOptionsPriceenvelopesBottomLine >> styles [

	^ configurationOptions at: 'styles' ifAbsentPut: [ HighstockPlotOptionsPriceenvelopesBottomLineStyles new ]
]