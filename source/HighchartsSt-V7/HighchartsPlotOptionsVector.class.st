"
A vector plot is a type of cartesian chart where each point has an X and Y
position, a length and a direction. Vectors are drawn as arrows.
In TypeScript the type option must always be set.
Configuration options for the series are given in three levels:

Options for all series in a chart are defined in the
plotOptions.series object.
Options for all vector series are defined in
plotOptions.vector.
Options for one single series are given in
the series instance array.

Highcharts.chart(´container´, {
    plotOptions: {
        series: {
            // general options for all series
        },
        vector: {
            // shared options for all vector series
        }
    },
    series: [{
        // specific options for this series instance
        type: ´vector´
    }]
});
"
Class {
	#name : #HighchartsPlotOptionsVector,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V7'
}

{ #category : #accessing }
HighchartsPlotOptionsVector >> accessibility [

	"Accessibility options for a series. Requires the accessibility module.
"
	^configurationOptions at: 'accessibility' ifAbsentPut: [HighchartsPlotOptionsVectorAccessibility new]
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> allAreas: aBoolean [

	"Whether all areas of the map defined in mapData should be rendered.
If true, areas which don´t correspond to a data point, are rendered
as null points. If false, those areas are skipped.
Defaults to true."

	configurationOptions at: 'allAreas' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> allowPointSelect: aBoolean [

	"Allow this series´ points to be selected by clicking on the graphic
(columns, point markers, pie slices, map areas etc).
The selected points can be handled by point select and unselect
events, or collectively by the getSelectedPoints function.
And alternative way of selecting points is through dragging.
Defaults to false."

	configurationOptions at: 'allowPointSelect' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> animation [

	"Enable or disable the initial animation when a series is displayed.
The animation can also be set as a configuration object. Please
note that this option only applies to the initial animation of the
series itself. For other animations, see chart.animation and the animation parameter under the API methods.
The following properties are supported:

duration: The duration of the animation in milliseconds.

easing: Can be a string reference to an easing function set on
the Math object or a function. See the Custom easing function
demo below.


Due to poor performance, animation is disabled in old IE browsers
for several chart types.
"
	^configurationOptions at: 'animation' ifAbsentPut: [HighchartsPlotOptionsVectorAnimation new]
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> animationLimit: aNumber [

	"For some series, there is a limit that shuts down initial animation
by default when the total number of points in the chart is too high.
For example, for a column chart and its derivatives, animation does
not run if there is more than 250 points totally. To disable this
cap, set animationLimit to Infinity.
"

	configurationOptions at: 'animationLimit' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> boostBlending: aString [

	"Sets the color blending in the boost module.
Defaults to undefined."

	configurationOptions at: 'boostBlending' put: aString
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> borderColor: aHighchartsColorString [

	"The border color of the map areas.
In styled mode, the border stroke is given in the .highcharts-point
class.
Defaults to '#cccccc'."

	configurationOptions at: 'borderColor' put: aHighchartsColorString
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> borderWidth: aNumber [

	"The border width of each map area.
In styled mode, the border stroke width is given in the
.highcharts-point class.
Defaults to 1."

	configurationOptions at: 'borderWidth' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> className: aString [

	"An additional class name to apply to the series´ graphical elements.
This option does not replace default class names of the graphical
element.
"

	configurationOptions at: 'className' put: aString
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> clip: aBoolean [

	"Disable this option to allow series rendering in the whole plotting
area.
Note: Clipping should be always enabled when
chart.zoomType is set
Defaults to true."

	configurationOptions at: 'clip' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> color: aHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject [

	"The main color of the series. In line type series it applies to the
line and the point markers unless otherwise specified. In bar type
series it applies to the bars unless a color is specified per point.
The default value is pulled from the options.colors array.
In styled mode, the color can be defined by the
colorIndex option. Also, the series
color can be set with the .highcharts-series,
.highcharts-color-{n}, .highcharts-{type}-series or
.highcharts-series-{n} class, or individual classes given by the
className option.
"

	configurationOptions at: 'color' put: aHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> colorAxis: aBoolean [

	"Set this option to false to prevent a series from connecting to
the global color axis. This will cause the series to have its own
legend item.
"

	configurationOptions at: 'colorAxis' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> colorIndex: aNumber [

	"Styled mode only. A specific color index to use for the series, so
its graphic representations are given the class name
highcharts-color-{n}.
"

	configurationOptions at: 'colorIndex' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> connectors [

	"Override Pathfinder connector options for a series. Requires Highcharts Gantt
to be loaded.
"
	^configurationOptions at: 'connectors' ifAbsentPut: [HighchartsPlotOptionsVectorConnectors new]
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> cursor: aStringOrHighchartsCursorValue [

	"You can set the cursor to &quot;pointer&quot; if you have click events attached
to the series, to signal to the user that the points and lines can
be clicked.
In styled mode, the series cursor can be set with the same classes
as listed under series.color.
"

	configurationOptions at: 'cursor' put: aStringOrHighchartsCursorValue
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> dataLabels: aHighchartsDataLabelsOptionsObject [

	"Options for the series data labels, appearing next to each data
point.
Since v6.2.0, multiple data labels can be applied to each single
point by defining them as an array of configs.
In styled mode, the data labels can be styled with the
.highcharts-data-label-box and .highcharts-data-label class names
(see example).
"

	configurationOptions at: 'dataLabels' put: aHighchartsDataLabelsOptionsObject
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> description: aString [

	"Requires the Accessibility module.
A description of the series to add to the screen reader information
about the series.
"

	configurationOptions at: 'description' put: aString
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> dragDrop [

	"The draggable-points module allows points to be moved around or modified in
the chart. In addition to the options mentioned under the dragDrop API
structure, the module fires three events,
point.dragStart,
point.drag and
point.drop.
It requires the modules/draggable-points.js file to be loaded.
"
	^configurationOptions at: 'dragDrop' ifAbsentPut: [HighchartsPlotOptionsVectorDragDrop new]
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> enableMouseTracking: aBoolean [

	"Enable or disable the mouse tracking for a specific series. This
includes point tooltips and click events on graphs and points. For
large datasets it improves performance.
Defaults to true."

	configurationOptions at: 'enableMouseTracking' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> events: anObject [

	"General event handlers for the series items. These event hooks can
also be attached to the series at run time using the
Highcharts.addEvent function.
"

	configurationOptions at: 'events' put: anObject
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> exposeElementToA11y: aBoolean [

	"By default, series are exposed to screen readers as regions. By
enabling this option, the series element itself will be exposed in
the same way as the data points. This is useful if the series is not
used as a grouping entity in the chart, but you still want to attach
a description to the series.
Requires the Accessibility module.
"

	configurationOptions at: 'exposeElementToA11y' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> findNearestPointBy: aString [

	"Determines whether the series should look for the nearest point
in both dimensions or just the x-dimension when hovering the series.
Defaults to ´xy´ for scatter series and ´x´ for most other
series. If the data has duplicate x-values, it is recommended to
set this to ´xy´ to allow hovering over all points.
Applies only to series types using nearest neighbor search (not
direct hover) for tooltip.
Defaults to xy."

	configurationOptions at: 'findNearestPointBy' put: aString
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> getExtremesFromAll: aBoolean [

	"Whether to use the Y extremes of the total chart width or only the
zoomed area when zooming in on parts of the X axis. By default, the
Y axis adjusts to the min and max of the visible data. Cartesian
series only.
Defaults to false."

	configurationOptions at: 'getExtremesFromAll' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> includeInDataExport: aBoolean [

	"Export-data module required. When set to false will prevent the series
data from being included in any form of data export.
Since version 6.0.0 until 7.1.0 the option was existing undocumented
as includeInCSVExport.
"

	configurationOptions at: 'includeInDataExport' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> joinBy: aStringOrArrayOfstring [

	"What property to join the mapData to the value data. For example,
if joinBy is &quot;code&quot;, the mapData items with a specific code is merged
into the data with the same code. For maps loaded from GeoJSON, the
keys may be held in each point´s properties object.
The joinBy option can also be an array of two values, where the first
points to a key in the mapData, and the second points to another
key in the data.
When joinBy is null, the map items are joined by their position in
the array, which performs much better in maps with many data points.
This is the recommended option if you are printing more than a
thousand data points and have a backend that can preprocess the data
into a parallel array of the mapData.
Defaults to hc-key."

	configurationOptions at: 'joinBy' put: aStringOrArrayOfstring
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> keys: anArrayOfstring [

	"An array specifying which option maps to which key in the data point
array. This makes it convenient to work with unstructured data arrays
from different sources.
"

	configurationOptions at: 'keys' put: anArrayOfstring
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> label [

	"Series labels are placed as close to the series as possible in a
natural way, seeking to avoid other series. The goal of this
feature is to make the chart more easily readable, like if a
human designer placed the labels in the optimal position.
The series labels currently work with series types having a
graph or an area.
Requires the series-label.js module.
"
	^configurationOptions at: 'label' ifAbsentPut: [HighchartsPlotOptionsVectorLabel new]
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> lineWidth: aNumber [

	"The line width for each vector arrow.
Defaults to 2."

	configurationOptions at: 'lineWidth' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> linkedTo: aString [

	"The id of another series to link to. Additionally,
the value can be &quot;:previous&quot; to link to the previous series. When
two series are linked, only the first one appears in the legend.
Toggling the visibility of this also toggles the linked series.
"

	configurationOptions at: 'linkedTo' put: aString
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> negativeColor: aHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject [

	"The color for the parts of the graph or points that are below the
threshold.
"

	configurationOptions at: 'negativeColor' put: aHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> opacity: aNumber [

	"Opacity of a series parts: line, fill (e.g. area) and dataLabels.
Defaults to 1."

	configurationOptions at: 'opacity' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> point [

	"Properties for each single point.
"
	^configurationOptions at: 'point' ifAbsentPut: [HighchartsPlotOptionsVectorPoint new]
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> pointDescriptionFormatter: aFunction [

	"Same as
accessibility.pointDescriptionFormatter,
but for an individual series. Overrides the chart wide configuration.
"

	configurationOptions at: 'pointDescriptionFormatter' put: aFunction
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> pointInterval: aNumber [

	"If no x values are given for the points in a series, pointInterval
defines the interval of the x values. For example, if a series
contains one value every decade starting from year 0, set
pointInterval to 10. In true datetime axes, the pointInterval
is set in milliseconds.
It can be also be combined with pointIntervalUnit to draw irregular
time intervals.
Please note that this options applies to the series data, not the
interval of the axis ticks, which is independent.
Defaults to 1."

	configurationOptions at: 'pointInterval' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> pointIntervalUnit: aString [

	"On datetime series, this allows for setting the
pointInterval to irregular time
units, day, month and year. A day is usually the same as 24
hours, but pointIntervalUnit also takes the DST crossover into
consideration when dealing with local time. Combine this option with
pointInterval to draw weeks, quarters, 6 months, 10 years etc.
Please note that this options applies to the series data, not the
interval of the axis ticks, which is independent.
"

	configurationOptions at: 'pointIntervalUnit' put: aString
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> pointStart: aNumber [

	"If no x values are given for the points in a series, pointStart
defines on what value to start. For example, if a series contains one
yearly value starting from 1945, set pointStart to 1945.
Defaults to 0."

	configurationOptions at: 'pointStart' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> rotationOrigin: aString [

	"What part of the vector it should be rotated around. Can be one of
start, center and end. When start, the vectors will start from
the given [x, y] position, and when end the vectors will end in the
[x, y] position.
Defaults to center."

	configurationOptions at: 'rotationOrigin' put: aString
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> selected: aBoolean [

	"Whether to select the series initially. If showCheckbox is true,
the checkbox next to the series name in the legend will be checked
for a selected series.
Defaults to false."

	configurationOptions at: 'selected' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> showCheckbox: aBoolean [

	"If true, a checkbox is displayed next to the legend item to allow
selecting the series. The state of the checkbox is determined by
the selected option.
Defaults to false."

	configurationOptions at: 'showCheckbox' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> showInLegend: aBoolean [

	"Whether to display this particular series or series type in the
legend. The default value is true for standalone series, false
for linked series.
Defaults to true."

	configurationOptions at: 'showInLegend' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> skipKeyboardNavigation: aBoolean [

	"If set to true, the accessibility module will skip past the points
in this series for keyboard navigation.
"

	configurationOptions at: 'skipKeyboardNavigation' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> softThreshold: aBoolean [

	"When this is true, the series will not cause the Y axis to cross
the zero plane (or threshold option)
unless the data actually crosses the plane.
For example, if softThreshold is false, a series of 0, 1, 2,
3 will make the Y axis show negative values according to the
minPadding option. If softThreshold is true, the Y axis starts
at 0.
Defaults to true."

	configurationOptions at: 'softThreshold' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> states: anObject [


	configurationOptions at: 'states' put: anObject
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> stickyTracking: aBoolean [

	"Sticky tracking of mouse events. When true, the mouseOut event
on a series isn´t triggered until the mouse moves over another
series, or out of the plot area. When false, the mouseOut event on
a series is triggered when the mouse leaves the area around the
series´ graph or markers. This also implies the tooltip. When
stickyTracking is false and tooltip.shared is false, the tooltip
will be hidden when moving the mouse between series.
Defaults to false."

	configurationOptions at: 'stickyTracking' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> threshold: aNumber [

	"The threshold, also called zero level or base level. For line type
series this is only used in conjunction with
negativeColor.
Defaults to 0."

	configurationOptions at: 'threshold' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> tooltip [

	"A configuration object for the tooltip rendering of each single
series. Properties are inherited from tooltip.
Overridable properties are headerFormat, pointFormat,
yDecimals, xDateFormat, yPrefix and ySuffix. Unlike other
series, in a scatter plot the series.name by default shows in the
headerFormat and point.x and point.y in the pointFormat.
"
	^configurationOptions at: 'tooltip' ifAbsentPut: [HighchartsPlotOptionsVectorTooltip new]
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> turboThreshold: aNumber [

	"When a series contains a data array that is longer than this, only
one dimensional arrays of numbers, or two dimensional arrays with
x and y values are allowed. Also, only the first point is tested,
and the rest are assumed to be the same format. This saves expensive
data checking and indexing in long series. Set it to 0 disable.
Defaults to 1000."

	configurationOptions at: 'turboThreshold' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> vectorLength: aNumber [

	"Maximum length of the arrows in the vector plot. The individual arrow
length is computed between 0 and this value.
Defaults to 20."

	configurationOptions at: 'vectorLength' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> visible: aBoolean [

	"Set the initial visibility of the series.
Defaults to true."

	configurationOptions at: 'visible' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> zIndex: aNumber [

	"Define the z index of the series.
"

	configurationOptions at: 'zIndex' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> zoneAxis: aString [

	"Defines the Axis on which the zones are applied.
Defaults to y."

	configurationOptions at: 'zoneAxis' put: aString
]

{ #category : #accessing }
HighchartsPlotOptionsVector >> zones [

	"An array defining zones within a series. Zones can be applied to the
X axis, Y axis or Z axis for bubbles, according to the zoneAxis
option. The zone definitions have to be in ascending order regarding
to the value.
In styled mode, the color zones are styled with the
.highcharts-zone-{n} class, or custom classed from the className
option
(view live demo).
"
	^configurationOptions at: 'zones' ifAbsentPut: [HighchartsPlotOptionsVectorZones new]
]