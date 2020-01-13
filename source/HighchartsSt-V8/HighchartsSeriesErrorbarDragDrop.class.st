"
The draggable-points module allows points to be moved around or modified in
the chart. In addition to the options mentioned under the dragDrop API
structure, the module fires three events,
point.dragStart,
point.drag and
point.drop.
It requires the modules/draggable-points.js file to be loaded.
"
Class {
	#name : #HighchartsSeriesErrorbarDragDrop,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V8'
}

{ #category : #accessing }
HighchartsSeriesErrorbarDragDrop >> dragHandle [

	"Options for the drag handles.
"
	^ configurationOptions at: 'dragHandle' ifAbsentPut: [ HighchartsSeriesErrorbarDragDropDragHandle new ]
]

{ #category : #accessing }
HighchartsSeriesErrorbarDragDrop >> dragMaxX: aNumber [

	"Set the maximum X value the points can be moved to.
"

	configurationOptions at: 'dragMaxX' put: aNumber
]

{ #category : #accessing }
HighchartsSeriesErrorbarDragDrop >> dragMaxY: aNumber [

	"Set the maximum Y value the points can be moved to.
"

	configurationOptions at: 'dragMaxY' put: aNumber
]

{ #category : #accessing }
HighchartsSeriesErrorbarDragDrop >> dragMinX: aNumber [

	"Set the minimum X value the points can be moved to.
"

	configurationOptions at: 'dragMinX' put: aNumber
]

{ #category : #accessing }
HighchartsSeriesErrorbarDragDrop >> dragMinY: aNumber [

	"Set the minimum Y value the points can be moved to.
"

	configurationOptions at: 'dragMinY' put: aNumber
]

{ #category : #accessing }
HighchartsSeriesErrorbarDragDrop >> dragPrecisionX: aNumber [

	"The X precision value to drag to for this series. Set to 0 to disable. By
default this is disabled, except for category axes, where the default is 1.
Defaults to 0."

	configurationOptions at: 'dragPrecisionX' put: aNumber
]

{ #category : #accessing }
HighchartsSeriesErrorbarDragDrop >> dragPrecisionY: aNumber [

	"The Y precision value to drag to for this series. Set to 0 to disable. By
default this is disabled, except for category axes, where the default is 1.
Defaults to 0."

	configurationOptions at: 'dragPrecisionY' put: aNumber
]

{ #category : #accessing }
HighchartsSeriesErrorbarDragDrop >> dragSensitivity: aNumber [

	"The amount of pixels to drag the pointer before it counts as a drag
operation. This prevents drag/drop to fire when just clicking or selecting
points.
Defaults to 2."

	configurationOptions at: 'dragSensitivity' put: aNumber
]

{ #category : #accessing }
HighchartsSeriesErrorbarDragDrop >> draggableHigh: aBoolean [

	"Allow high value to be dragged individually.
Defaults to true."

	configurationOptions at: 'draggableHigh' put: aBoolean
]

{ #category : #accessing }
HighchartsSeriesErrorbarDragDrop >> draggableLow: aBoolean [

	"Allow low value to be dragged individually.
Defaults to true."

	configurationOptions at: 'draggableLow' put: aBoolean
]

{ #category : #accessing }
HighchartsSeriesErrorbarDragDrop >> draggableQ1: aBoolean [

	"Allow Q1 value to be dragged individually.
Defaults to true."

	configurationOptions at: 'draggableQ1' put: aBoolean
]

{ #category : #accessing }
HighchartsSeriesErrorbarDragDrop >> draggableQ3: aBoolean [

	"Allow Q3 value to be dragged individually.
Defaults to true."

	configurationOptions at: 'draggableQ3' put: aBoolean
]

{ #category : #accessing }
HighchartsSeriesErrorbarDragDrop >> draggableX: aBoolean [

	"Enable dragging in the X dimension.
"

	configurationOptions at: 'draggableX' put: aBoolean
]

{ #category : #accessing }
HighchartsSeriesErrorbarDragDrop >> draggableY: aBoolean [

	"Enable dragging in the Y dimension. Note that this is not supported for
TreeGrid axes (the default axis type in Gantt charts).
"

	configurationOptions at: 'draggableY' put: aBoolean
]

{ #category : #accessing }
HighchartsSeriesErrorbarDragDrop >> groupBy: aString [

	"Group the points by a property. Points with the same property value will be
grouped together when moving.
"

	configurationOptions at: 'groupBy' put: aString
]

{ #category : #accessing }
HighchartsSeriesErrorbarDragDrop >> guideBox [

	"Style options for the guide box. The guide box has one state by default, the
default state.
"
	^ configurationOptions at: 'guideBox' ifAbsentPut: [ HighchartsSeriesErrorbarDragDropGuideBox new ]
]

{ #category : #accessing }
HighchartsSeriesErrorbarDragDrop >> liveRedraw: aBoolean [

	"Update points as they are dragged. If false, a guide box is drawn to
illustrate the new point size.
Defaults to true."

	configurationOptions at: 'liveRedraw' put: aBoolean
]