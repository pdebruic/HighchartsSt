"
The axis labels show the number or category for each tick.
"
Class {
	#name : #HighstockNavigatorYAxisLabels,
	#superclass : #HighchartsComponent,
	#category : 'HighstockStV6'
}

{ #category : #accessing }
HighstockNavigatorYAxisLabels >> align: aString [

	"What part of the string the given position is anchored to. Can
be one of &quot;left&quot;, &quot;center&quot; or &quot;right&quot;. The exact position
also depends on the labels.x setting.
Angular gauges and solid gauges defaults to center.
"

	configurationOptions at: 'align' put: aString
]

{ #category : #accessing }
HighstockNavigatorYAxisLabels >> autoRotation: anArrayOfNumber [

	"For horizontal axes, the allowed degrees of label rotation
to prevent overlapping labels. If there is enough space,
labels are not rotated. As the chart gets narrower, it
will start rotating the labels -45 degrees, then remove
every second label and try again with rotations 0 and -45 etc.
Set it to false to disable rotation, which will
cause the labels to word-wrap if possible.
Defaults to [-45]."

	configurationOptions at: 'autoRotation' put: anArrayOfNumber
]

{ #category : #accessing }
HighstockNavigatorYAxisLabels >> autoRotationLimit: aNumber [

	"When each category width is more than this many pixels, we don´t
apply auto rotation. Instead, we lay out the axis label with word
wrap. A lower limit makes sense when the label contains multiple
short words that don´t extend the available horizontal space for
each label.
Defaults to 80."

	configurationOptions at: 'autoRotationLimit' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxisLabels >> distance: aNumber [

	"Angular gauges and solid gauges only. The label´s pixel distance
from the perimeter of the plot area.
Defaults to -25."

	configurationOptions at: 'distance' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxisLabels >> enabled: aBoolean [

	"Enable or disable the axis labels.
Defaults to false."

	configurationOptions at: 'enabled' put: aBoolean
]

{ #category : #accessing }
HighstockNavigatorYAxisLabels >> format: aString [

	"A format string for the axis label.
Defaults to {value}."

	configurationOptions at: 'format' put: aString
]

{ #category : #accessing }
HighstockNavigatorYAxisLabels >> formatter: aFunction [

	"Callback JavaScript function to format the label. The value
is given by this.value. Additional properties for this are
axis, chart, isFirst and isLast. The value of the default
label formatter can be retrieved by calling
this.axis.defaultLabelFormatter.call(this) within the function.
Defaults to:
function() {
    return this.value;
}
"

	configurationOptions at: 'formatter' put: aFunction
]

{ #category : #accessing }
HighstockNavigatorYAxisLabels >> maxStaggerLines: aNumber [

	"Horizontal axis only. When staggerLines is not set, maxStaggerLines
defines how many lines the axis is allowed to add to automatically
avoid overlapping X labels. Set to 1 to disable overlap detection.
Defaults to 5."

	configurationOptions at: 'maxStaggerLines' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxisLabels >> overflow: aString [

	"How to handle overflowing labels on horizontal axis. Can be
undefined, false or &quot;justify&quot;. By default it aligns inside
the chart area. If &quot;justify&quot;, labels will not render outside
the plot area. If false, it will not be aligned at all.
If there is room to move it, it will be aligned to the edge,
else it will be removed.
"

	configurationOptions at: 'overflow' put: aString
]

{ #category : #accessing }
HighstockNavigatorYAxisLabels >> padding: aNumber [

	"The pixel padding for axis labels, to ensure white space between
them.
Defaults to 5."

	configurationOptions at: 'padding' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxisLabels >> position3d: aString [

	"Defines how the labels are be repositioned according to the 3D chart
orientation.

´offset´: Maintain a fixed horizontal/vertical distance from the
   tick marks, despite the chart orientation. This is the backwards
   compatible behavior, and causes skewing of X and Z axes.
´chart´: Preserve 3D position relative to the chart.
This looks nice, but hard to read if the text isn´t
forward-facing.
´flap´: Rotated text along the axis to compensate for the chart
   orientation. This tries to maintain text as legible as possible on
   all orientations.
´ortho´: Rotated text along the axis direction so that the labels
   are orthogonal to the axis. This is very similar to ´flap´, but
   prevents skewing the labels (X and Y scaling are still present).
Defaults to offset."

	configurationOptions at: 'position3d' put: aString
]

{ #category : #accessing }
HighstockNavigatorYAxisLabels >> reserveSpace: aBoolean [

	"Whether to reserve space for the labels. This can be turned off
when for example the labels are rendered inside the plot area
instead of outside.
Defaults to true."

	configurationOptions at: 'reserveSpace' put: aBoolean
]

{ #category : #accessing }
HighstockNavigatorYAxisLabels >> rotation: aNumber [

	"Rotation of the labels in degrees.
Defaults to 0."

	configurationOptions at: 'rotation' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxisLabels >> skew3d: aBoolean [

	"If enabled, the axis labels will skewed to follow the perspective. 
This will fix overlapping labels and titles, but texts become less
legible due to the distortion.
The final appearance depends heavily on labels.position3d.
Defaults to false."

	configurationOptions at: 'skew3d' put: aBoolean
]

{ #category : #accessing }
HighstockNavigatorYAxisLabels >> staggerLines: aNumber [

	"Horizontal axes only. The number of lines to spread the labels
over to make room or tighter labels.
Defaults to null."

	configurationOptions at: 'staggerLines' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxisLabels >> step: aNumber [

	"To show only every n´th label on the axis, set the step to n.
Setting the step to 2 shows every other label.
By default, the step is calculated automatically to avoid
overlap. To prevent this, set it to 1. This usually only
happens on a category axis, and is often a sign that you have
chosen the wrong axis type.
Read more at
Axis docs
=&gt; What axis should I use?
Defaults to null."

	configurationOptions at: 'step' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxisLabels >> style [

	"CSS styles for the label. Use whiteSpace: ´nowrap´ to prevent
wrapping of category labels. Use textOverflow: ´none´ to
prevent ellipsis (dots).
In styled mode, the labels are styled with the
.highcharts-axis-labels class.
"
	^configurationOptions at: 'style' ifAbsentPut: [HighstockNavigatorYAxisLabelsStyle new]
]

{ #category : #accessing }
HighstockNavigatorYAxisLabels >> useHTML: aBoolean [

	"Whether to use HTML to render the labels.
Defaults to false."

	configurationOptions at: 'useHTML' put: aBoolean
]

{ #category : #accessing }
HighstockNavigatorYAxisLabels >> x: aNumber [

	"The x position offset of the label relative to the tick position
on the axis. Defaults to -15 for left axis, 15 for right axis.
Defaults to -8."

	configurationOptions at: 'x' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxisLabels >> y: aNumber [

	"The y position offset of the label relative to the tick position
on the axis.
Defaults to null."

	configurationOptions at: 'y' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxisLabels >> zIndex: aNumber [

	"The Z index for the axis labels.
Defaults to 7."

	configurationOptions at: 'zIndex' put: aNumber
]
