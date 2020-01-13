"
Accessibility options for an axis. Requires the accessibility module.
"
Class {
	#name : #HighchartsXAxisAccessibility,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V8'
}

{ #category : #accessing }
HighchartsXAxisAccessibility >> description: aString [

	"Description for an axis to expose to screen reader users.
"

	configurationOptions at: 'description' put: aString
]

{ #category : #accessing }
HighchartsXAxisAccessibility >> enabled: aBoolean [

	"Enable axis accessibility features, including axis information in the
screen reader information region. If this is disabled on the xAxis, the
x values are not exposed to screen readers for the individual data points
by default.
"

	configurationOptions at: 'enabled' put: aBoolean
]

{ #category : #accessing }
HighchartsXAxisAccessibility >> rangeDescription: aString [

	"Range description for an axis. Overrides the default range description.
Set to empty to disable range description for this axis.
"

	configurationOptions at: 'rangeDescription' put: aString
]