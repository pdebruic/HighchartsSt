"
Overrides for the normal state.
"
Class {
	#name : #HighstockSeriesWmaIkhStatesNormal,
	#superclass : #HighchartsComponent,
	#category : 'HighstockStV6'
}

{ #category : #accessing }
HighstockSeriesWmaIkhStatesNormal >> animation: anObjectOrBoolean [

	"Animation options for the fill color when returning from hover state
to normal state. The animation adds some latency in order to reduce
the effect of flickering when hovering in and out of for example
an uneven coastline.
Defaults to true."

	configurationOptions at: 'animation' put: anObjectOrBoolean
]
