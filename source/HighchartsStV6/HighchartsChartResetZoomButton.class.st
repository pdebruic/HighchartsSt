"
The button that appears after a selection zoom, allowing the user
to reset zoom.
"
Class {
	#name : #HighchartsChartResetZoomButton,
	#superclass : #HighchartsComponent,
	#category : 'HighchartsStV6'
}

{ #category : #accessing }
HighchartsChartResetZoomButton >> position [

	"The position of the button.
"
	^configurationOptions at: 'position' ifAbsentPut: [HighchartsChartResetZoomButtonPosition new]
]

{ #category : #accessing }
HighchartsChartResetZoomButton >> relativeTo: aString [

	"What frame the button should be placed related to. Can be either
plot or chart
Defaults to plot."

	configurationOptions at: 'relativeTo' put: aString
]

{ #category : #accessing }
HighchartsChartResetZoomButton >> theme [

	"A collection of attributes for the button. The object takes SVG
attributes like fill, stroke, stroke-width or r, the border
radius. The theme also supports style, a collection of CSS properties
for the text. Equivalent attributes for the hover state are given
in theme.states.hover.
"
	^configurationOptions at: 'theme' ifAbsentPut: [HighchartsChartResetZoomButtonTheme new]
]
