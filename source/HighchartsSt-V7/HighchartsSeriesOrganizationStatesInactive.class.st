"
The opposite state of a hover for a single point node/link.
"
Class {
	#name : #HighchartsSeriesOrganizationStatesInactive,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V7'
}

{ #category : #accessing }
HighchartsSeriesOrganizationStatesInactive >> animation [

	"Animation when not hovering over the marker.
"
	^configurationOptions at: 'animation' ifAbsentPut: [HighchartsSeriesOrganizationStatesInactiveAnimation new]
]

{ #category : #accessing }
HighchartsSeriesOrganizationStatesInactive >> linkOpacity: aNumber [

	"Opacity for the links between nodes in the sankey diagram in
inactive mode.
Defaults to 0.1."

	configurationOptions at: 'linkOpacity' put: aNumber
]

{ #category : #accessing }
HighchartsSeriesOrganizationStatesInactive >> opacity: aNumber [

	"Opacity of series elements (dataLabels, line, area).
Defaults to 0.1."

	configurationOptions at: 'opacity' put: aNumber
]