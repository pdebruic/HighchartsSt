"
Flags are used to mark events in stock charts. They can be added on the
timeline, or attached to a specific series.
"
Class {
	#name : #HighstockPlotOptionsFlags,
	#superclass : #HighchartsComponent,
	#category : 'HighstockStV6'
}

{ #category : #accessing }
HighstockPlotOptionsFlags >> allAreas: aBoolean [

	"Whether all areas of the map defined in mapData should be rendered.
If true, areas which don´t correspond to a data point, are rendered
as null points. If false, those areas are skipped.
Defaults to true."

	configurationOptions at: 'allAreas' put: aBoolean
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> allowPointSelect: aBoolean [

	"Allow this series´ points to be selected by clicking on the graphic 
(columns, point markers, pie slices, map areas etc).
Defaults to false."

	configurationOptions at: 'allowPointSelect' put: aBoolean
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> animationLimit: aNumber [

	"For some series, there is a limit that shuts down initial animation
by default when the total number of points in the chart is too high.
For example, for a column chart and its derivatives, animation doesn´t
run if there is more than 250 points totally. To disable this cap, set
animationLimit to Infinity.
"

	configurationOptions at: 'animationLimit' put: aNumber
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> boostThreshold: aNumber [

	"Set the point threshold for when a series should enter boost mode.
Setting it to e.g. 2000 will cause the series to enter boost mode when there
are 2000 or more points in the series.
To disable boosting on the series, set the boostThreshold to 0. Setting it
to 1 will force boosting.
Requires modules/boost.js.
Defaults to 5000."

	configurationOptions at: 'boostThreshold' put: aNumber
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> className: aString [

	"A class name to apply to the series´ graphical elements.
"

	configurationOptions at: 'className' put: aString
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> color: aColor [

	"The main color of the series. In line type series it applies to the
line and the point markers unless otherwise specified. In bar type
series it applies to the bars unless a color is specified per point.
The default value is pulled from the options.colors array.
In styled mode, the color can be defined by the
colorIndex option. Also, the series
color can be set with the .highcharts-series, .highcharts-color-{n},
.highcharts-{type}-series or .highcharts-series-{n} class, or
individual classes given by the className option.
"

	configurationOptions at: 'color' put: aColor
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> colorAxis: aBoolean [

	"Set this option to false to prevent a series from connecting to
the global color axis. This will cause the series to have its own
legend item.
Defaults to undefined."

	configurationOptions at: 'colorAxis' put: aBoolean
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> colorIndex: aNumber [

	"Styled mode only. A specific color index to use for the series, so its
graphic representations are given the class name highcharts-color-
{n}.
"

	configurationOptions at: 'colorIndex' put: aNumber
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> colors: anArrayOfColor [

	"A series specific or series type specific color set to apply instead
of the global colors when colorByPoint is true.
"

	configurationOptions at: 'colors' put: anArrayOfColor
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> compare: aString [

	"Compare the values of the series against the first non-null, non-
zero value in the visible range. The y axis will show percentage
or absolute change depending on whether compare is set to &quot;percent&quot;
or &quot;value&quot;. When this is applied to multiple series, it allows
comparing the development of the series against each other.
Defaults to undefined."

	configurationOptions at: 'compare' put: aString
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> compareBase: aNumber [

	"When compare is percent, this option
dictates whether to use 0 or 100 as the base of comparison.
Defaults to 0."

	configurationOptions at: 'compareBase' put: aNumber
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> compareStart: aBoolean [

	"Defines if comparisson should start from the first point within the visible
range or should start from the first point before the range.
In other words, this flag determines if first point within the visible range
will have 0 (compareStart=true) or should have been already calculated
according to the previous point (compareStart=false).
Defaults to false."

	configurationOptions at: 'compareStart' put: aBoolean
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> crisp: aBoolean [

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
HighstockPlotOptionsFlags >> cropThreshold: aNumber [

	"When the series contains less points than the crop threshold, all
points are drawn, event if the points fall outside the visible plot
area at the current zoom. The advantage of drawing all points (including
markers and columns), is that animation is performed on updates.
On the other hand, when the series contains more points than the
crop threshold, the series data is cropped to only contain points
that fall within the plot area. The advantage of cropping away invisible
points is to increase performance on large series. .
Defaults to 50."

	configurationOptions at: 'cropThreshold' put: aNumber
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> cursor: aString [

	"You can set the cursor to &quot;pointer&quot; if you have click events attached
to the series, to signal to the user that the points and lines can
be clicked.
"

	configurationOptions at: 'cursor' put: aString
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> dataLabels [

	"Options for the series data labels, appearing next to each data
point.
In styled mode, the data labels can be styled wtih the .highcharts-data-label-box and .highcharts-data-label class names (see example).
"
	^configurationOptions at: 'dataLabels' ifAbsentPut: [HighstockPlotOptionsFlagsDataLabels new]
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> depth: aNumber [

	"Depth of the columns in a 3D column chart. Requires highcharts-3d.
js.
Defaults to 25."

	configurationOptions at: 'depth' put: aNumber
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> description: aString [

	"Requires the Accessibility module.
A description of the series to add to the screen reader information
about the series.
Defaults to undefined."

	configurationOptions at: 'description' put: aString
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> edgeColor: aColor [

	"3D columns only. The color of the edges. Similar to borderColor,
 except it defaults to the same color as the column.
"

	configurationOptions at: 'edgeColor' put: aColor
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> edgeWidth: aNumber [

	"3D columns only. The width of the colored edges.
Defaults to 1."

	configurationOptions at: 'edgeWidth' put: aNumber
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> enableMouseTracking: aBoolean [

	"Enable or disable the mouse tracking for a specific series. This
includes point tooltips and click events on graphs and points. For
large datasets it improves performance.
Defaults to true."

	configurationOptions at: 'enableMouseTracking' put: aBoolean
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> events [

	"General event handlers for the series items. These event hooks can also
be attached to the series at run time using the Highcharts.addEvent
function.
"
	^configurationOptions at: 'events' ifAbsentPut: [HighstockPlotOptionsFlagsEvents new]
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> events: anObject [

	"General event handlers for the series items. These event hooks can also
be attached to the series at run time using the Highcharts.addEvent
function.
"

	configurationOptions at: 'events' put: anObject
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> exposeElementToA11y: aBoolean [

	"By default, series are exposed to screen readers as regions. By enabling
this option, the series element itself will be exposed in the same
way as the data points. This is useful if the series is not used
as a grouping entity in the chart, but you still want to attach a
description to the series.
Requires the Accessibility module.
Defaults to undefined."

	configurationOptions at: 'exposeElementToA11y' put: aBoolean
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> fillColor: aString [

	"The fill color for the flags.
Defaults to #ffffff."

	configurationOptions at: 'fillColor' put: aString
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> findNearestPointBy: aString [

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
HighstockPlotOptionsFlags >> getExtremesFromAll: aBoolean [

	"Whether to use the Y extremes of the total chart width or only the
zoomed area when zooming in on parts of the X axis. By default, the
Y axis adjusts to the min and max of the visible data. Cartesian
series only.
Defaults to false."

	configurationOptions at: 'getExtremesFromAll' put: aBoolean
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> groupPadding: aNumber [

	"Padding between each value groups, in x axis units.
Defaults to 0.2."

	configurationOptions at: 'groupPadding' put: aNumber
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> groupZPadding: aNumber [

	"The spacing between columns on the Z Axis in a 3D chart. Requires
highcharts-3d.js.
Defaults to 1."

	configurationOptions at: 'groupZPadding' put: aNumber
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> grouping: aBoolean [

	"Whether to group non-stacked columns or to let them render independent
of each other. Non-grouped columns will be laid out individually
and overlap each other.
Defaults to true."

	configurationOptions at: 'grouping' put: aBoolean
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> joinBy: aStringOrArrayOfString [

	"What property to join the mapData to the value data. For example,
if joinBy is &quot;code&quot;, the mapData items with a specific code is merged
into the data with the same code. For maps loaded from GeoJSON, the
keys may be held in each point´s properties object.
The joinBy option can also be an array of two values, where the first
points to a key in the mapData, and the second points to another
key in the data.
When joinBy is null, the map items are joined by their position
in the array, which performs much better in maps with many data points.
This is the recommended option if you are printing more than a thousand
data points and have a backend that can preprocess the data into
a parallel array of the mapData.
"

	configurationOptions at: 'joinBy' put: aStringOrArrayOfString
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> keys: anArrayOfString [

	"An array specifying which option maps to which key in the data point
array. This makes it convenient to work with unstructured data arrays
from different sources.
"

	configurationOptions at: 'keys' put: anArrayOfString
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> label [

	"Series labels are placed as close to the series as possible in a
natural way, seeking to avoid other series. The goal of this
feature is to make the chart more easily readable, like if a
human designer placed the labels in the optimal position.
The series labels currently work with series types having a
graph or an area.
Requires the series-label.js module.
"
	^configurationOptions at: 'label' ifAbsentPut: [HighstockPlotOptionsFlagsLabel new]
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> lineColor: aColor [

	"The color of the line/border of the flag.
In styled mode, the stroke is set in the .highcharts-flag-series
.highcharts-point rule.
Defaults to #000000."

	configurationOptions at: 'lineColor' put: aColor
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> lineWidth: aNumber [

	"The pixel width of the flag´s line/border.
Defaults to 1."

	configurationOptions at: 'lineWidth' put: aNumber
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> linkedTo: aString [

	"The id of another series to link to. Additionally,
the value can be &quot;:previous&quot; to link to the previous series. When
two series are linked, only the first one appears in the legend.
Toggling the visibility of this also toggles the linked series.
"

	configurationOptions at: 'linkedTo' put: aString
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> maxPointWidth: aNumber [

	"The maximum allowed pixel width for a column, translated to the height
of a bar in a bar chart. This prevents the columns from becoming
too wide when there is a small number of points in the chart.
Defaults to null."

	configurationOptions at: 'maxPointWidth' put: aNumber
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> minPointLength: aNumber [

	"The minimal height for a column or width for a bar. By default,
0 values are not shown. To visualize a 0 (or close to zero) point,
set the minimal point length to a pixel value like 3. In stacked
column charts, minPointLength might not be respected for tightly
packed values.
Defaults to 0."

	configurationOptions at: 'minPointLength' put: aNumber
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> navigatorOptions: anObject [

	"Options for the corresponding navigator series if showInNavigator
is true for this series. Available options are the same as any
series, documented at plotOptions and
series.
These options are merged with options in navigator.series, and will take precedence if the same option is defined both
places.
Defaults to undefined."

	configurationOptions at: 'navigatorOptions' put: anObject
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> negativeColor: aColor [

	"The color for the parts of the graph or points that are below the
threshold.
Defaults to null."

	configurationOptions at: 'negativeColor' put: aColor
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> onKey: aString [

	"In case the flag is placed on a series, on what point key to place
it. Line and columns have one key, y. In range or OHLC-type series,
however, the flag can optionally be placed on the open, high,
 low or close key.
Defaults to y."

	configurationOptions at: 'onKey' put: aString
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> onSeries: aString [

	"The id of the series that the flags should be drawn on. If no id
is given, the flags are drawn on the x axis.
Defaults to undefined."

	configurationOptions at: 'onSeries' put: aString
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> point [

	"Properties for each single point.
"
	^configurationOptions at: 'point' ifAbsentPut: [HighstockPlotOptionsFlagsPoint new]
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> pointDescriptionFormatter: aFunction [

	"Same as accessibility.pointDescriptionFormatter, but for an individual series. Overrides
the chart wide configuration.
"

	configurationOptions at: 'pointDescriptionFormatter' put: aFunction
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> pointInterval: aNumber [

	"If no x values are given for the points in a series, pointInterval
defines the interval of the x values. For example, if a series contains
one value every decade starting from year 0, set pointInterval to
10. In true datetime axes, the pointInterval is set in
milliseconds.
It can be also be combined with pointIntervalUnit to draw irregular
time intervals.
Defaults to 1."

	configurationOptions at: 'pointInterval' put: aNumber
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> pointIntervalUnit: aString [

	"On datetime series, this allows for setting the
pointInterval to irregular time 
units, day, month and year. A day is usually the same as 24 hours,
but pointIntervalUnit also takes the DST crossover into consideration
when dealing with local time. Combine this option with pointInterval
to draw weeks, quarters, 6 months, 10 years etc.
"

	configurationOptions at: 'pointIntervalUnit' put: aString
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> pointPlacement: aStringOrNumber [

	"Possible values: null, &quot;on&quot;, &quot;between&quot;.
In a column chart, when pointPlacement is &quot;on&quot;, the point will
not create any padding of the X axis. In a polar column chart this
means that the first column points directly north. If the pointPlacement
is &quot;between&quot;, the columns will be laid out between ticks. This
is useful for example for visualising an amount between two points
in time or in a certain sector of a polar chart.
Since Highcharts 3.0.2, the point placement can also be numeric,
where 0 is on the axis value, -0.5 is between this value and the
previous, and 0.5 is between this value and the next. Unlike the
textual options, numeric point placement options won´t affect axis
padding.
Note that pointPlacement needs a pointRange to work. For column series this is computed, but for
line-type series it needs to be set.
Defaults to null in cartesian charts, &quot;between&quot; in polar charts.
Defaults to null."

	configurationOptions at: 'pointPlacement' put: aStringOrNumber
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> pointRange: aString [

	"The id of the series that the flags should be drawn on. If no id
is given, the flags are drawn on the x axis.
Defaults to undefined."

	configurationOptions at: 'pointRange' put: aString
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> pointStart: aNumber [

	"If no x values are given for the points in a series, pointStart defines
on what value to start. For example, if a series contains one yearly
value starting from 1945, set pointStart to 1945.
Defaults to 0."

	configurationOptions at: 'pointStart' put: aNumber
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> selected: aBoolean [

	"Whether to select the series initially. If showCheckbox is true,
the checkbox next to the series name in the legend will be checked for a
selected series.
Defaults to false."

	configurationOptions at: 'selected' put: aBoolean
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> shadow: aBooleanOrObject [

	"Whether to apply a drop shadow to the graph line. Since 2.3 the shadow
can be an object configuration containing color, offsetX, offsetY,
 opacity and width.
Defaults to false."

	configurationOptions at: 'shadow' put: aBooleanOrObject
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> shape: aString [

	"The shape of the marker. Can be one of &quot;flag&quot;, &quot;circlepin&quot;, &quot;squarepin&quot;,
or an image on the format url(/path-to-image.jpg). Individual
shapes can also be set for each point.
Defaults to flag."

	configurationOptions at: 'shape' put: aString
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> showCheckbox: aBoolean [

	"If true, a checkbox is displayed next to the legend item to allow
selecting the series. The state of the checkbox is determined by
the selected option.
Defaults to false."

	configurationOptions at: 'showCheckbox' put: aBoolean
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> showInLegend: aBoolean [

	"Whether to display this particular series or series type in the legend.
The default value is true for standalone series, false for linked
series.
Defaults to true."

	configurationOptions at: 'showInLegend' put: aBoolean
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> showInNavigator: aBoolean [

	"Whether or not to show the series in the navigator. Takes precedence
over navigator.baseSeries if defined.
Defaults to undefined."

	configurationOptions at: 'showInNavigator' put: aBoolean
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> skipKeyboardNavigation: aBoolean [

	"If set to True, the accessibility module will skip past the points
in this series for keyboard navigation.
"

	configurationOptions at: 'skipKeyboardNavigation' put: aBoolean
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> softThreshold: aBoolean [

	"When this is true, the series will not cause the Y axis to cross
the zero plane (or threshold option)
unless the data actually crosses the plane.
For example, if softThreshold is false, a series of 0, 1, 2,
3 will make the Y axis show negative values according to the minPadding
option. If softThreshold is true, the Y axis starts at 0.
Defaults to false."

	configurationOptions at: 'softThreshold' put: aBoolean
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> stackDistance: aNumber [

	"When multiple flags in the same series fall on the same value, this
number determines the vertical offset between them.
Defaults to 12."

	configurationOptions at: 'stackDistance' put: aNumber
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> stacking: aString [

	"Whether to stack the values of each series on top of each other.
Possible values are null to disable, &quot;normal&quot; to stack by value or
&quot;percent&quot;. When stacking is enabled, data must be sorted in ascending
X order. A special stacking option is with the streamgraph series type,
where the stacking option is set to &quot;stream&quot;.
Defaults to null."

	configurationOptions at: 'stacking' put: aString
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> states [

	"A wrapper object for all the series options in specific states.
"
	^configurationOptions at: 'states' ifAbsentPut: [HighstockPlotOptionsFlagsStates new]
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> states: aPlotOptionsseriesstates [

	"A wrapper object for all the series options in specific states.
"

	configurationOptions at: 'states' put: aPlotOptionsseriesstates
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> stickyTracking: aBoolean [

	"Sticky tracking of mouse events. When true, the mouseOut event
on a series isn´t triggered until the mouse moves over another series,
or out of the plot area. When false, the mouseOut event on a
series is triggered when the mouse leaves the area around the series´
graph or markers. This also implies the tooltip when not shared. When
stickyTracking is false and tooltip.shared is false, the tooltip will
be hidden when moving the mouse between series. Defaults to true for line
and area type series, but to false for columns, pies etc.
Defaults to false."

	configurationOptions at: 'stickyTracking' put: aBoolean
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> style [

	"The text styles of the flag.
In styled mode, the styles are set in the .highcharts-flag-
series .highcharts-point rule.
Defaults to { 'fontSize': '11px', 'fontWeight': 'bold' }."
	^configurationOptions at: 'style' ifAbsentPut: [HighstockPlotOptionsFlagsStyle new]
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> textAlign: aString [

	"Text alignment for the text inside the flag.
Defaults to center."

	configurationOptions at: 'textAlign' put: aString
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> threshold: aNumber [

	"The Y axis value to serve as the base for the columns, for distinguishing
between values above and below a threshold. If null, the columns
extend from the padding Y axis minimum.
Defaults to nil."

	configurationOptions at: 'threshold' put: aNumber
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> title: aString [

	"The text to display on each flag. This can be defined on series level,
 or individually for each point. Defaults to &quot;A&quot;.
Defaults to 'A'."

	configurationOptions at: 'title' put: aString
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> tooltip [

	"Specific tooltip options for flag series. Flag series tooltips are
different from most other types in that a flag doesn´t have a data
value, so the tooltip rather displays the text option for each
point.
"
	^configurationOptions at: 'tooltip' ifAbsentPut: [HighstockPlotOptionsFlagsTooltip new]
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> useHTML: aBoolean [

	"Whether to use HTML to render the flag texts. Using HTML allows for
advanced formatting, images and reliable bi-directional text rendering.
Note that exported images won´t respect the HTML, and that HTML
won´t respect Z-index settings.
Defaults to false."

	configurationOptions at: 'useHTML' put: aBoolean
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> visible: aBoolean [

	"Set the initial visibility of the series.
Defaults to true."

	configurationOptions at: 'visible' put: aBoolean
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> y: aNumber [

	"The y position of the top left corner of the flag relative to either
the series (if onSeries is defined), or the x axis. Defaults to
-30.
Defaults to -30."

	configurationOptions at: 'y' put: aNumber
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> zIndex: aNumber [

	"Define the z index of the series.
"

	configurationOptions at: 'zIndex' put: aNumber
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> zoneAxis: aString [

	"Defines the Axis on which the zones are applied.
Defaults to y."

	configurationOptions at: 'zoneAxis' put: aString
]

{ #category : #accessing }
HighstockPlotOptionsFlags >> zones [

	"An array defining zones within a series. Zones can be applied to
the X axis, Y axis or Z axis for bubbles, according to the zoneAxis
option.
In styled mode, the color zones are styled with the .highcharts-
zone-{n} class, or custom classed from the className option (view
live demo).
"
	^configurationOptions at: 'zones' ifAbsentPut: [HighstockPlotOptionsFlagsZones new]
]
