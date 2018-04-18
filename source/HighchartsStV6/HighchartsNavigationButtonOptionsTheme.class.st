"
A configuration object for the button theme. The object accepts
SVG properties like stroke-width, stroke and fill. Tri-state
button styles are supported by the states.hover and states.select
objects.
"
Class {
	#name : #HighchartsNavigationButtonOptionsTheme,
	#superclass : #HighchartsComponent,
	#category : 'HighchartsStV6'
}

{ #category : #accessing }
HighchartsNavigationButtonOptionsTheme >> fill: aString [

	"The default fill exists only to capture hover events.
Defaults to #ffffff."

	configurationOptions at: 'fill' put: aString
]

{ #category : #accessing }
HighchartsNavigationButtonOptionsTheme >> padding: aNumber [


	configurationOptions at: 'padding' put: aNumber
]

{ #category : #accessing }
HighchartsNavigationButtonOptionsTheme >> stroke: aString [


	configurationOptions at: 'stroke' put: aString
]