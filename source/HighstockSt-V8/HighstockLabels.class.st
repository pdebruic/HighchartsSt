"
HTML labels that can be positioned anywhere in the chart area.
"
Class {
	#name : #HighstockLabels,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockLabels >> items [

	"An HTML label that can be positioned anywhere in the chart area.
"
	^ configurationOptions at: 'items' ifAbsentPut: [ HighstockLabelsItems new ]
]

{ #category : #accessing }
HighstockLabels >> style: aHighchartsCSSObject [

	"Shared CSS styles for all labels.
Defaults to {'color': '#333333', 'position': 'absolute'}."

	configurationOptions at: 'style' put: aHighchartsCSSObject
]