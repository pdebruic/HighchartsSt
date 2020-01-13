"
A funnel3d is a 3d version of funnel series type. Funnel charts are
a type of chart often used to visualize stages in a sales project,
where the top are the initial stages with the most clients.
It requires that the highcharts-3d.js, cylinder.js and
funnel3d.js module are loaded.
In TypeScript the type option must always be set.
Configuration options for the series are given in three levels:

Options for all series in a chart are defined in the
plotOptions.series object.
Options for all funnel3d series are defined in
plotOptions.funnel3d.
Options for one single series are given in
the series instance array.

Highcharts.chart(´container´, {
    plotOptions: {
        series: {
            // general options for all series
        },
        funnel3d: {
            // shared options for all funnel3d series
        }
    },
    series: [{
        // specific options for this series instance
        type: ´funnel3d´
    }]
});
"
Class {
	#name : #HighchartsPlotOptionsFunnel3d,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V8'
}

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> accessibility [

	"Accessibility options for a series.
"
	^ configurationOptions at: 'accessibility' ifAbsentPut: [ HighchartsPlotOptionsFunnel3dAccessibility new ]
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> allowPointSelect: aBoolean [

	"Allow this series´ points to be selected by clicking on the graphic
(columns, point markers, pie slices, map areas etc).
The selected points can be handled by point select and unselect
events, or collectively by the getSelectedPoints function.
And alternative way of selecting points is through dragging.
Defaults to false."

	configurationOptions at: 'allowPointSelect' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> animation [

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
Defaults to false."
	^ configurationOptions at: 'animation' ifAbsentPut: [ HighchartsPlotOptionsFunnel3dAnimation new ]
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> animationLimit: aNumber [

	"For some series, there is a limit that shuts down initial animation
by default when the total number of points in the chart is too high.
For example, for a column chart and its derivatives, animation does
not run if there is more than 250 points totally. To disable this
cap, set animationLimit to Infinity.
"

	configurationOptions at: 'animationLimit' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> boostBlending: aString [

	"Sets the color blending in the boost module.
Defaults to undefined."

	configurationOptions at: 'boostBlending' put: aString
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> borderColor: aHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject [

	"The color of the border surrounding each column or bar.
In styled mode, the border stroke can be set with the
.highcharts-point rule.
Defaults to #ffffff."

	configurationOptions at: 'borderColor' put: aHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> borderRadius: aNumber [

	"The corner radius of the border surrounding each column or bar.
Defaults to 0."

	configurationOptions at: 'borderRadius' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> borderWidth: aNumber [

	"The width of the border surrounding each column or bar. Defaults to
1 when there is room for a border, but to 0 when the columns are
so dense that a border would cover the next column.
In styled mode, the stroke width can be set with the
.highcharts-point rule.
Defaults to undefined."

	configurationOptions at: 'borderWidth' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> className: aString [

	"An additional class name to apply to the series´ graphical elements.
This option does not replace default class names of the graphical
element.
"

	configurationOptions at: 'className' put: aString
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> clip: aBoolean [

	"Disable this option to allow series rendering in the whole plotting
area.
Note: Clipping should be always enabled when
chart.zoomType is set
Defaults to true."

	configurationOptions at: 'clip' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> color: aHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject [

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
HighchartsPlotOptionsFunnel3d >> colorByPoint: aBoolean [

	"When using automatic point colors pulled from the global
colors or series-specific
plotOptions.column.colors collections, this option
determines whether the chart should receive one color per series or
one color per point.
In styled mode, the colors or series.colors arrays are not
supported, and instead this option gives the points individual color
class names on the form highcharts-color-{n}.
Defaults to true."

	configurationOptions at: 'colorByPoint' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> colorIndex: aNumber [

	"Styled mode only. A specific color index to use for the series, so
its graphic representations are given the class name
highcharts-color-{n}.
"

	configurationOptions at: 'colorIndex' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> colorKey: aString [

	"Determines what data value should be used to calculate point color
if colorAxis is used. Requires to set min and max if some
custom point property is used or if approximation for data grouping
is set to ´sum´.
Defaults to y."

	configurationOptions at: 'colorKey' put: aString
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> colors: anArrayOfHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject [

	"A series specific or series type specific color set to apply instead
of the global colors when colorByPoint is true.
"

	configurationOptions at: 'colors' put: anArrayOfHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> compareStart: aBoolean [

	"Defines if comparison should start from the first point within the visible
range or should start from the first point before the range.
In other words, this flag determines if first point within the visible range
will have 0 (compareStart=true) or should have been already calculated
according to the previous point (compareStart=false).
Defaults to false."

	configurationOptions at: 'compareStart' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> connectors [

	"Override Pathfinder connector options for a series. Requires Highcharts Gantt
to be loaded.
"
	^ configurationOptions at: 'connectors' ifAbsentPut: [ HighchartsPlotOptionsFunnel3dConnectors new ]
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> crisp: aBoolean [

	"When true, each column edge is rounded to its nearest pixel in order
to render sharp on screen. In some cases, when there are a lot of
densely packed columns, this leads to visible difference in column
widths or distance between columns. In these cases, setting crisp
to false may look better, even though each column is rendered
blurry.
Defaults to true."

	configurationOptions at: 'crisp' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> cropThreshold: aNumber [

	"When the series contains less points than the crop threshold, all
points are drawn, event if the points fall outside the visible plot
area at the current zoom. The advantage of drawing all points
(including markers and columns), is that animation is performed on
updates. On the other hand, when the series contains more points than
the crop threshold, the series data is cropped to only contain points
that fall within the plot area. The advantage of cropping away
invisible points is to increase performance on large series.
Defaults to 50."

	configurationOptions at: 'cropThreshold' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> cursor: aStringOrHighchartsCursorValue [

	"You can set the cursor to &quot;pointer&quot; if you have click events attached
to the series, to signal to the user that the points and lines can
be clicked.
In styled mode, the series cursor can be set with the same classes
as listed under series.color.
"

	configurationOptions at: 'cursor' put: aStringOrHighchartsCursorValue
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> dataGrouping [

	"Data grouping is the concept of sampling the data values into larger
blocks in order to ease readability and increase performance of the
JavaScript charts. Highstock by default applies data grouping when
the points become closer than a certain pixel value, determined by
the groupPixelWidth option.
If data grouping is applied, the grouping information of grouped
points can be read from the Point.dataGroup. If point options other than
the data itself are set, for example name or color or custom properties,
the grouping logic doesn´t know how to group it. In this case the options of
the first point instance are copied over to the group point. This can be
altered through a custom approximation callback function.
"
	^ configurationOptions at: 'dataGrouping' ifAbsentPut: [ HighchartsPlotOptionsFunnel3dDataGrouping new ]
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> dataLabels [

	"Options for the series data labels, appearing next to each data
point.
Since v6.2.0, multiple data labels can be applied to each single
point by defining them as an array of configs.
In styled mode, the data labels can be styled with the
.highcharts-data-label-box and .highcharts-data-label class names
(see example).
"
	^ configurationOptions at: 'dataLabels' ifAbsentPut: [ HighchartsPlotOptionsFunnel3dDataLabels new ]
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> dataSorting [

	"Options for the series data sorting.
"
	^ configurationOptions at: 'dataSorting' ifAbsentPut: [ HighchartsPlotOptionsFunnel3dDataSorting new ]
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> depth: aNumber [

	"Depth of the columns in a 3D column chart.
Defaults to 25."

	configurationOptions at: 'depth' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> description: aString [

	"A description of the series to add to the screen reader information
about the series.
"

	configurationOptions at: 'description' put: aString
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> dragDrop [

	"The draggable-points module allows points to be moved around or modified in
the chart. In addition to the options mentioned under the dragDrop API
structure, the module fires three events,
point.dragStart,
point.drag and
point.drop.
"
	^ configurationOptions at: 'dragDrop' ifAbsentPut: [ HighchartsPlotOptionsFunnel3dDragDrop new ]
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> edgeColor: aHighchartsColorString [

	"3D columns only. The color of the edges. Similar to borderColor, except it
defaults to the same color as the column.
"

	configurationOptions at: 'edgeColor' put: aHighchartsColorString
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> edgeWidth: aNumber [

	"3D columns only. The width of the colored edges.
Defaults to 0."

	configurationOptions at: 'edgeWidth' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> enableMouseTracking: aBoolean [

	"Enable or disable the mouse tracking for a specific series. This
includes point tooltips and click events on graphs and points. For
large datasets it improves performance.
Defaults to true."

	configurationOptions at: 'enableMouseTracking' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> events: anObject [

	"General event handlers for the series items. These event hooks can
also be attached to the series at run time using the
Highcharts.addEvent function.
"

	configurationOptions at: 'events' put: anObject
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> findNearestPointBy: aString [

	"Determines whether the series should look for the nearest point
in both dimensions or just the x-dimension when hovering the series.
Defaults to ´xy´ for scatter series and ´x´ for most other
series. If the data has duplicate x-values, it is recommended to
set this to ´xy´ to allow hovering over all points.
Applies only to series types using nearest neighbor search (not
direct hover) for tooltip.
Defaults to x."

	configurationOptions at: 'findNearestPointBy' put: aString
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> getExtremesFromAll: aBoolean [

	"Whether to use the Y extremes of the total chart width or only the
zoomed area when zooming in on parts of the X axis. By default, the
Y axis adjusts to the min and max of the visible data. Cartesian
series only.
Defaults to false."

	configurationOptions at: 'getExtremesFromAll' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> gradientForSides: aBoolean [

	"By deafult sides fill is set to a gradient through this option being
set to true. Set to false to get solid color for the sides.
Defaults to true."

	configurationOptions at: 'gradientForSides' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> groupPadding: aNumber [

	"Padding between each value groups, in x axis units.
Defaults to 0.2."

	configurationOptions at: 'groupPadding' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> groupZPadding: aNumber [

	"The spacing between columns on the Z Axis in a 3D chart.
Defaults to 1."

	configurationOptions at: 'groupZPadding' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> grouping: aBoolean [

	"Whether to group non-stacked columns or to let them render
independent of each other. Non-grouped columns will be laid out
individually and overlap each other.
Defaults to true."

	configurationOptions at: 'grouping' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> height: aNumberOrstring [

	"The height of the series. If it is a number it defines
the pixel height, if it is a percentage string it is the percentage
of the plot area height.
Defaults to 100%."

	configurationOptions at: 'height' put: aNumberOrstring
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> includeInDataExport: aBoolean [

	"When set to false will prevent the series data from being included in
any form of data export.
Since version 6.0.0 until 7.1.0 the option was existing undocumented
as includeInCSVExport.
"

	configurationOptions at: 'includeInDataExport' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> joinBy: aStringOrArrayOfstring [

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
HighchartsPlotOptionsFunnel3d >> keys: anArrayOfstring [

	"An array specifying which option maps to which key in the data point
array. This makes it convenient to work with unstructured data arrays
from different sources.
"

	configurationOptions at: 'keys' put: anArrayOfstring
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> label [

	"Series labels are placed as close to the series as possible in a
natural way, seeking to avoid other series. The goal of this
feature is to make the chart more easily readable, like if a
human designer placed the labels in the optimal position.
The series labels currently work with series types having a
graph or an area.
"
	^ configurationOptions at: 'label' ifAbsentPut: [ HighchartsPlotOptionsFunnel3dLabel new ]
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> lastPrice [

	"The line marks the last price from all points.
"
	^ configurationOptions at: 'lastPrice' ifAbsentPut: [ HighchartsPlotOptionsFunnel3dLastPrice new ]
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> lastVisiblePrice [

	"The line marks the last price from visible range of points.
"
	^ configurationOptions at: 'lastVisiblePrice' ifAbsentPut: [ HighchartsPlotOptionsFunnel3dLastVisiblePrice new ]
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> linkedTo: aString [

	"The id of another series to link to. Additionally,
the value can be &quot;:previous&quot; to link to the previous series. When
two series are linked, only the first one appears in the legend.
Toggling the visibility of this also toggles the linked series.
If master series uses data sorting and linked series does not have
its own sorting definition, the linked series will be sorted in the
same order as the master one.
"

	configurationOptions at: 'linkedTo' put: aString
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> maxPointWidth: aNumber [

	"The maximum allowed pixel width for a column, translated to the
height of a bar in a bar chart. This prevents the columns from
becoming too wide when there is a small number of points in the
chart.
"

	configurationOptions at: 'maxPointWidth' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> minPointLength: aNumber [

	"The minimal height for a column or width for a bar. By default,
0 values are not shown. To visualize a 0 (or close to zero) point,
set the minimal point length to a pixel value like 3. In stacked
column charts, minPointLength might not be respected for tightly
packed values.
Defaults to 0."

	configurationOptions at: 'minPointLength' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> navigatorOptions: aHighchartsPlotSeriesOptions [

	"Options for the corresponding navigator series if showInNavigator
is true for this series. Available options are the same as any
series, documented at plotOptions and
series.
These options are merged with options in navigator.series, and will take precedence if the same option is
defined both places.
"

	configurationOptions at: 'navigatorOptions' put: aHighchartsPlotSeriesOptions
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> neckHeight: aNumberOrstring [

	"The height of the neck, the lower part of the funnel. A number
defines pixel width, a percentage string defines a percentage
of the plot area height.
Defaults to 25%."

	configurationOptions at: 'neckHeight' put: aNumberOrstring
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> neckWidth: aNumberOrstring [

	"The width of the neck, the lower part of the funnel. A number defines
pixel width, a percentage string defines a percentage of the plot
area width.
Defaults to 30%."

	configurationOptions at: 'neckWidth' put: aNumberOrstring
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> negativeColor: aHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject [

	"The color for the parts of the graph or points that are below the
threshold. Note that zones takes
precedence over the negative color. Using negativeColor is
equivalent to applying a zone with value of 0.
"

	configurationOptions at: 'negativeColor' put: aHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> opacity: aNumber [

	"Opacity of a series parts: line, fill (e.g. area) and dataLabels.
Defaults to 1."

	configurationOptions at: 'opacity' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> point [

	"Properties for each single point.
"
	^ configurationOptions at: 'point' ifAbsentPut: [ HighchartsPlotOptionsFunnel3dPoint new ]
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> pointDescriptionFormatter: aFunction [

	"Same as
accessibility.pointDescriptionFormatter,
but for an individual series. Overrides the chart wide configuration.
"

	configurationOptions at: 'pointDescriptionFormatter' put: aFunction
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> pointInterval: aNumber [

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
HighchartsPlotOptionsFunnel3d >> pointIntervalUnit: aString [

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
HighchartsPlotOptionsFunnel3d >> pointPadding: aNumber [

	"Padding between each column or bar, in x axis units.
Defaults to 0.1."

	configurationOptions at: 'pointPadding' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> pointPlacement: aStringOrnumber [

	"Possible values: &quot;on&quot;, &quot;between&quot;, number.
In a column chart, when pointPlacement is &quot;on&quot;, the point will not
create any padding of the X axis. In a polar column chart this means
that the first column points directly north. If the pointPlacement is
&quot;between&quot;, the columns will be laid out between ticks. This is
useful for example for visualising an amount between two points in
time or in a certain sector of a polar chart.
Since Highcharts 3.0.2, the point placement can also be numeric,
where 0 is on the axis value, -0.5 is between this value and the
previous, and 0.5 is between this value and the next. Unlike the
textual options, numeric point placement options won´t affect axis
padding.
Note that pointPlacement needs a pointRange to work. For column series this is
computed, but for line-type series it needs to be set.
For the xrange series type and gantt charts, if the Y axis is a
category axis, the pointPlacement applies to the Y axis rather than
the (typically datetime) X axis.
Defaults to undefined in cartesian charts, &quot;between&quot; in polar
charts.
"

	configurationOptions at: 'pointPlacement' put: aStringOrnumber
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> pointRange: aNumberOrNil [

	"The X axis range that each point is valid for. This determines the
width of the column. On a categorized axis, the range will be 1
by default (one category unit). On linear and datetime axes, the
range will be computed as the distance between the two closest data
points.
The default null means it is computed automatically, but this
option can be used to override the automatic value.
This option is set by default to 1 if data sorting is enabled.
Defaults to nil."

	configurationOptions at: 'pointRange' put: aNumberOrNil
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> pointStart: aNumber [

	"If no x values are given for the points in a series, pointStart
defines on what value to start. For example, if a series contains one
yearly value starting from 1945, set pointStart to 1945.
Defaults to 0."

	configurationOptions at: 'pointStart' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> pointWidth: aNumber [

	"A pixel value specifying a fixed width for each column or bar. When
null, the width is calculated from the pointPadding and
groupPadding.
"

	configurationOptions at: 'pointWidth' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> reversed: aBoolean [

	"A reversed funnel has the widest area down. A reversed funnel with
no neck width and neck height is a pyramid.
Defaults to false."

	configurationOptions at: 'reversed' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> selected: aBoolean [

	"Whether to select the series initially. If showCheckbox is true,
the checkbox next to the series name in the legend will be checked
for a selected series.
Defaults to false."

	configurationOptions at: 'selected' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> shadow: aBooleanOrHighchartsShadowOptionsObject [

	"Whether to apply a drop shadow to the graph line. Since 2.3 the
shadow can be an object configuration containing color, offsetX,
offsetY, opacity and width.
Defaults to false."

	configurationOptions at: 'shadow' put: aBooleanOrHighchartsShadowOptionsObject
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> showCheckbox: aBoolean [

	"If true, a checkbox is displayed next to the legend item to allow
selecting the series. The state of the checkbox is determined by
the selected option.
Defaults to false."

	configurationOptions at: 'showCheckbox' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> showInLegend: aBoolean [

	"Whether to display this particular series or series type in the
legend. Standalone series are shown in legend by default, and linked
series are not. Since v7.2.0 it is possible to show series that use
colorAxis by setting this option to true.
Defaults to false."

	configurationOptions at: 'showInLegend' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> showInNavigator: aBoolean [

	"Whether or not to show the series in the navigator. Takes precedence
over navigator.baseSeries if defined.
"

	configurationOptions at: 'showInNavigator' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> skipKeyboardNavigation: aBoolean [

	"If set to true, the accessibility module will skip past the points
in this series for keyboard navigation.
"

	configurationOptions at: 'skipKeyboardNavigation' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> softThreshold: aBoolean [

	"When this is true, the series will not cause the Y axis to cross
the zero plane (or threshold option)
unless the data actually crosses the plane.
For example, if softThreshold is false, a series of 0, 1, 2,
3 will make the Y axis show negative values according to the
minPadding option. If softThreshold is true, the Y axis starts
at 0.
Defaults to false."

	configurationOptions at: 'softThreshold' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> stacking: aString [

	"Whether to stack the values of each series on top of each other.
Possible values are undefined to disable, &quot;normal&quot; to stack by
value or &quot;percent&quot;. When stacking is enabled, data must be sorted
in ascending X order. A special stacking option is with the
streamgraph series type, where the stacking option is set to
&quot;stream&quot;. The second one is &quot;overlap&quot;, which only applies to
waterfall series.
"

	configurationOptions at: 'stacking' put: aString
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> states: anObject [


	configurationOptions at: 'states' put: anObject
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> stickyTracking: aBoolean [

	"Sticky tracking of mouse events. When true, the mouseOut event on a
series isn´t triggered until the mouse moves over another series, or
out of the plot area. When false, the mouseOut event on a series is
triggered when the mouse leaves the area around the series´ graph or
markers. This also implies the tooltip when not shared. When
stickyTracking is false and tooltip.shared is false, the tooltip
will be hidden when moving the mouse between series. Defaults to true
for line and area type series, but to false for columns, pies etc.
Note: The boost module will force this option because of
technical limitations.
Defaults to false."

	configurationOptions at: 'stickyTracking' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> threshold: aNumber [

	"The Y axis value to serve as the base for the columns, for
distinguishing between values above and below a threshold. If null,
the columns extend from the padding Y axis minimum.
Defaults to 0."

	configurationOptions at: 'threshold' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> tooltip [

	"A configuration object for the tooltip rendering of each single
series. Properties are inherited from tooltip, but only
the following properties can be defined on a series level.
"
	^ configurationOptions at: 'tooltip' ifAbsentPut: [ HighchartsPlotOptionsFunnel3dTooltip new ]
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> turboThreshold: aNumber [

	"When a series contains a data array that is longer than this, only
one dimensional arrays of numbers, or two dimensional arrays with
x and y values are allowed. Also, only the first point is tested,
and the rest are assumed to be the same format. This saves expensive
data checking and indexing in long series. Set it to 0 disable.
Note:
In boost mode turbo threshold is forced. Only array of numbers or
two dimensional arrays are allowed.
Defaults to 1000."

	configurationOptions at: 'turboThreshold' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> visible: aBoolean [

	"Set the initial visibility of the series.
Defaults to true."

	configurationOptions at: 'visible' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> width: aNumberOrstring [

	"The max width of the series compared to the width of the plot area,
or the pixel width if it is a number.
Defaults to 90%."

	configurationOptions at: 'width' put: aNumberOrstring
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> zIndex: aNumber [

	"Define the z index of the series.
"

	configurationOptions at: 'zIndex' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> zoneAxis: aString [

	"Defines the Axis on which the zones are applied.
Defaults to y."

	configurationOptions at: 'zoneAxis' put: aString
]

{ #category : #accessing }
HighchartsPlotOptionsFunnel3d >> zones [

	"An array defining zones within a series. Zones can be applied to the
X axis, Y axis or Z axis for bubbles, according to the zoneAxis
option. The zone definitions have to be in ascending order regarding
to the value.
In styled mode, the color zones are styled with the
.highcharts-zone-{n} class, or custom classed from the className
option
(view live demo).
"
	^ configurationOptions at: 'zones' ifAbsentPut: [ HighchartsPlotOptionsFunnel3dZones new ]
]