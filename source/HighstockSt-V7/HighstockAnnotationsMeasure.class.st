"
A measure annotation.
"
Class {
	#name : #HighstockAnnotationsMeasure,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockAnnotationsMeasure >> controlPointOptions [

	"Options for annotation´s control points. Each control point
inherits options from controlPointOptions object.
Options from the controlPointOptions can be overwritten
by options in a specific control point.
"
	^configurationOptions at: 'controlPointOptions' ifAbsentPut: [HighstockAnnotationsMeasureControlPointOptions new]
]

{ #category : #accessing }
HighstockAnnotationsMeasure >> draggable: aString [

	"Allow an annotation to be draggable by a user. Possible
values are &quot;x&quot;, &quot;xy&quot;, &quot;y&quot; and &quot;&quot; (disabled).
Defaults to xy."

	configurationOptions at: 'draggable' put: aString
]

{ #category : #accessing }
HighstockAnnotationsMeasure >> events: anObject [


	configurationOptions at: 'events' put: anObject
]

{ #category : #accessing }
HighstockAnnotationsMeasure >> typeOptions [

	"Additional options for an annotation with the type.
"
	^configurationOptions at: 'typeOptions' ifAbsentPut: [HighstockAnnotationsMeasureTypeOptions new]
]

{ #category : #accessing }
HighstockAnnotationsMeasure >> visible: aBoolean [

	"Whether the annotation is visible.
Defaults to true."

	configurationOptions at: 'visible' put: aBoolean
]

{ #category : #accessing }
HighstockAnnotationsMeasure >> zIndex: aNumber [

	"The Z index of the annotation.
Defaults to 6."

	configurationOptions at: 'zIndex' put: aNumber
]