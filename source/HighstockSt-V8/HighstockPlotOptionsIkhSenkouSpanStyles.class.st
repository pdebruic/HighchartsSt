Class {
	#name : #HighstockPlotOptionsIkhSenkouSpanStyles,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V8'
}

{ #category : #accessing }
HighstockPlotOptionsIkhSenkouSpanStyles >> fill: aHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject [

	"Color of the area between Senkou Span A and B.
Defaults to rgba(255, 0, 0, 0.5)."

	configurationOptions at: 'fill' put: aHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject
]