"
A collection of attributes for the button. The object takes SVG
attributes like fill, stroke, stroke-width or r, the border
radius. The theme also supports style, a collection of CSS properties
for the text. Equivalent attributes for the hover state are given
in theme.states.hover.
"
Class {
	#name : #HighchartsChartResetZoomButtonTheme,
	#superclass : #HighchartsComponent,
	#category : 'HighchartsStV6'
}

{ #category : #accessing }
HighchartsChartResetZoomButtonTheme >> zIndex: aNumber [

	"The Z index for the reset zoom button.
Defaults to 20."

	configurationOptions at: 'zIndex' put: aNumber
]