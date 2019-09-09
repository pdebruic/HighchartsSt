"
Options for the bubble legend labels.
"
Class {
	#name : #HighchartsLegendBubbleLegendLabels,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V7'
}

{ #category : #accessing }
HighchartsLegendBubbleLegendLabels >> align: aHighchartsAlignValue [

	"The alignment of the labels compared to the bubble
legend. Can be one of left, center or right.
Defaults to right."

	configurationOptions at: 'align' put: aHighchartsAlignValue
]

{ #category : #accessing }
HighchartsLegendBubbleLegendLabels >> allowOverlap: aBoolean [

	"Whether to allow data labels to overlap.
Defaults to false."

	configurationOptions at: 'allowOverlap' put: aBoolean
]

{ #category : #accessing }
HighchartsLegendBubbleLegendLabels >> className: aString [

	"An additional class name to apply to the bubble legend
label graphical elements. This option does not replace
default class names of the graphical element.
"

	configurationOptions at: 'className' put: aString
]

{ #category : #accessing }
HighchartsLegendBubbleLegendLabels >> format: aString [

	"A format string
for the bubble legend labels. Available variables are the
same as for formatter.
Defaults to ."

	configurationOptions at: 'format' put: aString
]

{ #category : #accessing }
HighchartsLegendBubbleLegendLabels >> formatter: aHighchartsFormatterCallbackFunctionOfHighchartsBubbleLegendFormatterContextObject [

	"Available this properties are:

this.value: The bubble value.

this.radius: The radius of the bubble range.

this.center: The center y position of the range.
"

	configurationOptions at: 'formatter' put: aHighchartsFormatterCallbackFunctionOfHighchartsBubbleLegendFormatterContextObject
]

{ #category : #accessing }
HighchartsLegendBubbleLegendLabels >> style: aHighchartsCSSObject [

	"CSS styles for the labels.
"

	configurationOptions at: 'style' put: aHighchartsCSSObject
]

{ #category : #accessing }
HighchartsLegendBubbleLegendLabels >> x: aNumber [

	"The x position offset of the label relative to the
connector.
Defaults to 0."

	configurationOptions at: 'x' put: aNumber
]

{ #category : #accessing }
HighchartsLegendBubbleLegendLabels >> y: aNumber [

	"The y position offset of the label relative to the
connector.
Defaults to 0."

	configurationOptions at: 'y' put: aNumber
]