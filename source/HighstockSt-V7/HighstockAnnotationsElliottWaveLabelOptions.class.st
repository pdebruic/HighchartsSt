"
Options for annotation´s labels. Each label inherits options
from the labelOptions object. An option from the labelOptions
can be overwritten by config for a specific label.
"
Class {
	#name : #HighstockAnnotationsElliottWaveLabelOptions,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockAnnotationsElliottWaveLabelOptions >> align: aString [

	"The alignment of the annotation´s label. If right,
the right side of the label should be touching the point.
Defaults to center."

	configurationOptions at: 'align' put: aString
]

{ #category : #accessing }
HighstockAnnotationsElliottWaveLabelOptions >> allowOverlap: aBoolean [

	"Whether to allow the annotation´s labels to overlap.
To make the labels less sensitive for overlapping,
the can be set to 0.
Defaults to true."

	configurationOptions at: 'allowOverlap' put: aBoolean
]

{ #category : #accessing }
HighstockAnnotationsElliottWaveLabelOptions >> backgroundColor: aString [

	"The background color or gradient for the annotation´s label.
Defaults to none."

	configurationOptions at: 'backgroundColor' put: aString
]

{ #category : #accessing }
HighstockAnnotationsElliottWaveLabelOptions >> borderColor: aColor [

	"The border color for the annotation´s label.
Defaults to black."

	configurationOptions at: 'borderColor' put: aColor
]

{ #category : #accessing }
HighstockAnnotationsElliottWaveLabelOptions >> borderRadius: aNumber [

	"The border radius in pixels for the annotaiton´s label.
Defaults to 3."

	configurationOptions at: 'borderRadius' put: aNumber
]

{ #category : #accessing }
HighstockAnnotationsElliottWaveLabelOptions >> borderWidth: aNumber [

	"The border width in pixels for the annotation´s label
Defaults to 0."

	configurationOptions at: 'borderWidth' put: aNumber
]

{ #category : #accessing }
HighstockAnnotationsElliottWaveLabelOptions >> className: aString [

	"A class name for styling by CSS.
Defaults to ."

	configurationOptions at: 'className' put: aString
]

{ #category : #accessing }
HighstockAnnotationsElliottWaveLabelOptions >> crop: aBoolean [

	"Whether to hide the annotation´s label
that is outside the plot area.
Defaults to true."

	configurationOptions at: 'crop' put: aBoolean
]

{ #category : #accessing }
HighstockAnnotationsElliottWaveLabelOptions >> distance: aNumber [

	"The label´s pixel distance from the point.
Defaults to undefined."

	configurationOptions at: 'distance' put: aNumber
]

{ #category : #accessing }
HighstockAnnotationsElliottWaveLabelOptions >> format: aString [

	"A format string for the data label.
Defaults to undefined."

	configurationOptions at: 'format' put: aString
]

{ #category : #accessing }
HighstockAnnotationsElliottWaveLabelOptions >> formatter: aFunction [

	"Callback JavaScript function to format
the annotation´s label. Note that if a format or text
are defined, the format or text take precedence and
the formatter is ignored. This refers to a * point object.
Defaults to function () {
 return defined(this.y) ? this.y : 'Annotation label';
}."

	configurationOptions at: 'formatter' put: aFunction
]

{ #category : #accessing }
HighstockAnnotationsElliottWaveLabelOptions >> overflow: aString [

	"How to handle the annotation´s label that flow
outside the plot area. The justify option aligns the label
inside the plot area.
Defaults to none."

	configurationOptions at: 'overflow' put: aString
]

{ #category : #accessing }
HighstockAnnotationsElliottWaveLabelOptions >> padding: aNumber [

	"When either the borderWidth or the backgroundColor is set,
this is the padding within the box.
Defaults to 5."

	configurationOptions at: 'padding' put: aNumber
]

{ #category : #accessing }
HighstockAnnotationsElliottWaveLabelOptions >> shadow: aBooleanOrObject [

	"The shadow of the box. The shadow can be
an object configuration containing
color, offsetX, offsetY, opacity and width.
Defaults to false."

	configurationOptions at: 'shadow' put: aBooleanOrObject
]

{ #category : #accessing }
HighstockAnnotationsElliottWaveLabelOptions >> shape: aString [

	"The name of a symbol to use for the border around the label.
Symbols are predefined functions on the Renderer object.
Defaults to callout."

	configurationOptions at: 'shape' put: aString
]

{ #category : #accessing }
HighstockAnnotationsElliottWaveLabelOptions >> style [

	"Styles for the annotation´s label.
"
	^configurationOptions at: 'style' ifAbsentPut: [HighstockAnnotationsElliottWaveLabelOptionsStyle new]
]

{ #category : #accessing }
HighstockAnnotationsElliottWaveLabelOptions >> text: aString [

	"Alias for the format option.
Defaults to undefined."

	configurationOptions at: 'text' put: aString
]

{ #category : #accessing }
HighstockAnnotationsElliottWaveLabelOptions >> type: aString [


	configurationOptions at: 'type' put: aString
]

{ #category : #accessing }
HighstockAnnotationsElliottWaveLabelOptions >> useHTML: aBoolean [

	"Whether to use HTML
to render the annotation´s label.
Defaults to false."

	configurationOptions at: 'useHTML' put: aBoolean
]

{ #category : #accessing }
HighstockAnnotationsElliottWaveLabelOptions >> verticalAlign: aHighchartsVerticalAlignValue [

	"The vertical alignment of the annotation´s label.
Defaults to bottom."

	configurationOptions at: 'verticalAlign' put: aHighchartsVerticalAlignValue
]

{ #category : #accessing }
HighstockAnnotationsElliottWaveLabelOptions >> x: aNumber [

	"The x position offset of the label relative to the point.
Note that if a distance is defined, the distance takes
precedence over x and y options.
Defaults to 0."

	configurationOptions at: 'x' put: aNumber
]

{ #category : #accessing }
HighstockAnnotationsElliottWaveLabelOptions >> y: aNumber [

	"The y position offset of the label relative to the point.
Note that if a distance is defined, the distance takes
precedence over x and y options.
Defaults to -5."

	configurationOptions at: 'y' put: aNumber
]