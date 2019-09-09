"
The X axis or category axis. Normally this is the horizontal axis,
though if the chart is inverted this is the vertical axis. In case of
multiple axes, the xAxis node is an array of configuration objects.
See the Axis class for programmatic
access to the axis.
"
Class {
	#name : #HighchartsXAxis,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V7'
}

{ #category : #accessing }
HighchartsXAxis >> accessibility [

	"Accessibility options for an axis. Requires the accessibility module.
"
	^configurationOptions at: 'accessibility' ifAbsentPut: [HighchartsXAxisAccessibility new]
]

{ #category : #accessing }
HighchartsXAxis >> alignTicks: aBoolean [

	"When using multiple axis, the ticks of two or more opposite axes
will automatically be aligned by adding ticks to the axis or axes
with the least ticks, as if tickAmount were specified.
This can be prevented by setting alignTicks to false. If the grid
lines look messy, it´s a good idea to hide them for the secondary
axis by setting gridLineWidth to 0.
If startOnTick or endOnTick in an Axis options are set to false,
then the alignTicks will be disabled for the Axis.
Disabled for logarithmic axes.
Defaults to true."

	configurationOptions at: 'alignTicks' put: aBoolean
]

{ #category : #accessing }
HighchartsXAxis >> allowDecimals: aBoolean [

	"Whether to allow decimals in this axis´ ticks. When counting
integers, like persons or hits on a web page, decimals should
be avoided in the labels.
Defaults to true."

	configurationOptions at: 'allowDecimals' put: aBoolean
]

{ #category : #accessing }
HighchartsXAxis >> alternateGridColor: aHighchartsColorString [

	"When using an alternate grid color, a band is painted across the
plot area between every other grid line.
"

	configurationOptions at: 'alternateGridColor' put: aHighchartsColorString
]

{ #category : #accessing }
HighchartsXAxis >> breaks [

	"An array defining breaks in the axis, the sections defined will be
left out and all the points shifted closer to each other.
"
	^configurationOptions at: 'breaks' ifAbsentPut: [HighchartsXAxisBreaks new]
]

{ #category : #accessing }
HighchartsXAxis >> categories: anArrayOfstring [

	"If categories are present for the xAxis, names are used instead of
numbers for that axis. Since Highcharts 3.0, categories can also
be extracted by giving each point a name and setting
axis type to category. However, if you have multiple
series, best practice remains defining the categories array.
Example:
categories: ['Apples', 'Bananas', 'Oranges']
"

	configurationOptions at: 'categories' put: anArrayOfstring
]

{ #category : #accessing }
HighchartsXAxis >> ceiling: aNumber [

	"The highest allowed value for automatically computed axis extremes.
"

	configurationOptions at: 'ceiling' put: aNumber
]

{ #category : #accessing }
HighchartsXAxis >> className: aString [

	"A class name that opens for styling the axis by CSS, especially in
Highcharts styled mode. The class name is applied to group elements
for the grid, axis elements and labels.
"

	configurationOptions at: 'className' put: aString
]

{ #category : #accessing }
HighchartsXAxis >> crosshair [

	"Configure a crosshair that follows either the mouse pointer or the
hovered point.
In styled mode, the crosshairs are styled in the
.highcharts-crosshair, .highcharts-crosshair-thin or
.highcharts-xaxis-category classes.
Defaults to false."
	^configurationOptions at: 'crosshair' ifAbsentPut: [HighchartsXAxisCrosshair new]
]

{ #category : #accessing }
HighchartsXAxis >> dateTimeLabelFormats [

	"For a datetime axis, the scale will automatically adjust to the
appropriate unit. This member gives the default string
representations used for each unit. For intermediate values,
different units may be used, for example the day unit can be used
on midnight and hour unit be used for intermediate values on the
same axis. For an overview of the replacement codes, see
dateFormat. Defaults to:
{
    millisecond: 'H:M:S.L',
    second: 'H:M:S',
    minute: 'H:M',
    hour: 'H:M',
    day: 'e. b',
    week: 'e. b',
    month: 'b \'y',
    year: 'Y'
}
"
	^configurationOptions at: 'dateTimeLabelFormats' ifAbsentPut: [HighchartsXAxisDateTimeLabelFormats new]
]

{ #category : #accessing }
HighchartsXAxis >> endOnTick: aBoolean [

	"Whether to force the axis to end on a tick. Use this option with
the maxPadding option to control the axis end.
Defaults to false."

	configurationOptions at: 'endOnTick' put: aBoolean
]

{ #category : #accessing }
HighchartsXAxis >> events: anObject [

	"Event handlers for the axis.
"

	configurationOptions at: 'events' put: anObject
]

{ #category : #accessing }
HighchartsXAxis >> floor: aNumber [

	"The lowest allowed value for automatically computed axis extremes.
"

	configurationOptions at: 'floor' put: aNumber
]

{ #category : #accessing }
HighchartsXAxis >> gridLineColor: aHighchartsColorString [

	"Color of the grid lines extending the ticks across the plot area.
In styled mode, the stroke is given in the .highcharts-grid-line
class.
Defaults to #e6e6e6."

	configurationOptions at: 'gridLineColor' put: aHighchartsColorString
]

{ #category : #accessing }
HighchartsXAxis >> gridLineDashStyle: aHighchartsDashStyleValue [

	"The dash or dot style of the grid lines. For possible values, see
this demonstration.
Defaults to Solid."

	configurationOptions at: 'gridLineDashStyle' put: aHighchartsDashStyleValue
]

{ #category : #accessing }
HighchartsXAxis >> gridLineWidth: aNumber [

	"The width of the grid lines extending the ticks across the plot area.
In styled mode, the stroke width is given in the
.highcharts-grid-line class.
Defaults to 0."

	configurationOptions at: 'gridLineWidth' put: aNumber
]

{ #category : #accessing }
HighchartsXAxis >> gridZIndex: aNumber [

	"The Z index of the grid lines.
Defaults to 1."

	configurationOptions at: 'gridZIndex' put: aNumber
]

{ #category : #accessing }
HighchartsXAxis >> id: aString [

	"An id for the axis. This can be used after render time to get
a pointer to the axis object through chart.get().
"

	configurationOptions at: 'id' put: aString
]

{ #category : #accessing }
HighchartsXAxis >> labels [

	"The axis labels show the number or category for each tick.
"
	^configurationOptions at: 'labels' ifAbsentPut: [HighchartsXAxisLabels new]
]

{ #category : #accessing }
HighchartsXAxis >> lineColor: aHighchartsColorString [

	"The color of the line marking the axis itself.
In styled mode, the line stroke is given in the
.highcharts-axis-line or .highcharts-xaxis-line class.
Defaults to #ccd6eb."

	configurationOptions at: 'lineColor' put: aHighchartsColorString
]

{ #category : #accessing }
HighchartsXAxis >> lineWidth: aNumber [

	"The width of the line marking the axis itself.
In styled mode, the stroke width is given in the
.highcharts-axis-line or .highcharts-xaxis-line class.
Defaults to 1."

	configurationOptions at: 'lineWidth' put: aNumber
]

{ #category : #accessing }
HighchartsXAxis >> linkedTo: aNumber [

	"Index of another axis that this axis is linked to. When an axis is
linked to a master axis, it will take the same extremes as
the master, but as assigned by min or max or by setExtremes.
It can be used to show additional info, or to ease reading the
chart by duplicating the scales.
"

	configurationOptions at: 'linkedTo' put: aNumber
]

{ #category : #accessing }
HighchartsXAxis >> margin: anObject [

	"If there are multiple axes on the same side of the chart, the pixel
margin between the axes. Defaults to 0 on vertical axes, 15 on
horizontal axes.
"

	configurationOptions at: 'margin' put: anObject
]

{ #category : #accessing }
HighchartsXAxis >> max: aNumberOrNil [

	"The maximum value of the axis. If null, the max value is
automatically calculated.
If the endOnTick option is true, the max value
might be rounded up.
If a tickAmount is set, the axis may be extended
beyond the set max in order to reach the given number of ticks. The
same may happen in a chart with multiple axes, determined by chart.
alignTicks, where a tickAmount is applied internally.
"

	configurationOptions at: 'max' put: aNumberOrNil
]

{ #category : #accessing }
HighchartsXAxis >> maxPadding: aNumber [

	"Padding of the max value relative to the length of the axis. A
padding of 0.05 will make a 100px axis 5px longer. This is useful
when you don´t want the highest data value to appear on the edge
of the plot area. When the axis´ max option is set or a max extreme
is set using axis.setExtremes(), the maxPadding will be ignored.
Defaults to 0.01."

	configurationOptions at: 'maxPadding' put: aNumber
]

{ #category : #accessing }
HighchartsXAxis >> maxZoom: aNumber [

	"Deprecated. Use minRange instead.
"

	configurationOptions at: 'maxZoom' put: aNumber
]

{ #category : #accessing }
HighchartsXAxis >> min: aNumberOrNil [

	"The minimum value of the axis. If null the min value is
automatically calculated.
If the startOnTick option is true (default),
the min value might be rounded down.
The automatically calculated minimum value is also affected by
floor, softMin,
minPadding, minRange
as well as series.threshold
and series.softThreshold.
"

	configurationOptions at: 'min' put: aNumberOrNil
]

{ #category : #accessing }
HighchartsXAxis >> minPadding: aNumber [

	"Padding of the min value relative to the length of the axis. A
padding of 0.05 will make a 100px axis 5px longer. This is useful
when you don´t want the lowest data value to appear on the edge
of the plot area. When the axis´ min option is set or a min extreme
is set using axis.setExtremes(), the minPadding will be ignored.
Defaults to 0.01."

	configurationOptions at: 'minPadding' put: aNumber
]

{ #category : #accessing }
HighchartsXAxis >> minRange: aNumber [

	"The minimum range to display on this axis. The entire axis will not
be allowed to span over a smaller interval than this. For example,
for a datetime axis the main unit is milliseconds. If minRange is
set to 3600000, you can´t zoom in more than to one hour.
The default minRange for the x axis is five times the smallest
interval between any of the data points.
On a logarithmic axis, the unit for the minimum range is the power.
So a minRange of 1 means that the axis can be zoomed to 10-100,
100-1000, 1000-10000 etc.
Note that the minPadding, maxPadding, startOnTick and
endOnTick settings also affect how the extremes of the axis
are computed.
"

	configurationOptions at: 'minRange' put: aNumber
]

{ #category : #accessing }
HighchartsXAxis >> minTickInterval: aNumber [

	"The minimum tick interval allowed in axis values. For example on
zooming in on an axis with daily data, this can be used to prevent
the axis from showing hours. Defaults to the closest distance between
two points on the axis.
"

	configurationOptions at: 'minTickInterval' put: aNumber
]

{ #category : #accessing }
HighchartsXAxis >> minorGridLineColor: aHighchartsColorString [

	"Color of the minor, secondary grid lines.
In styled mode, the stroke width is given in the
.highcharts-minor-grid-line class.
Defaults to #f2f2f2."

	configurationOptions at: 'minorGridLineColor' put: aHighchartsColorString
]

{ #category : #accessing }
HighchartsXAxis >> minorGridLineDashStyle: aHighchartsDashStyleValue [

	"The dash or dot style of the minor grid lines. For possible values,
see this demonstration.
Defaults to Solid."

	configurationOptions at: 'minorGridLineDashStyle' put: aHighchartsDashStyleValue
]

{ #category : #accessing }
HighchartsXAxis >> minorGridLineWidth: aNumber [

	"Width of the minor, secondary grid lines.
In styled mode, the stroke width is given in the
.highcharts-grid-line class.
Defaults to 1."

	configurationOptions at: 'minorGridLineWidth' put: aNumber
]

{ #category : #accessing }
HighchartsXAxis >> minorTickColor: aHighchartsColorString [

	"Color for the minor tick marks.
Defaults to #999999."

	configurationOptions at: 'minorTickColor' put: aHighchartsColorString
]

{ #category : #accessing }
HighchartsXAxis >> minorTickInterval: aNumberOrstringOrNil [

	"Specific tick interval in axis units for the minor ticks. On a linear
axis, if &quot;auto&quot;, the minor tick interval is calculated as a fifth
of the tickInterval. If null or undefined, minor ticks are not
shown.
On logarithmic axes, the unit is the power of the value. For example,
setting the minorTickInterval to 1 puts one tick on each of 0.1, 1,
10, 100 etc. Setting the minorTickInterval to 0.1 produces 9 ticks
between 1 and 10, 10 and 100 etc.
If user settings dictate minor ticks to become too dense, they don´t
make sense, and will be ignored to prevent performance problems.
"

	configurationOptions at: 'minorTickInterval' put: aNumberOrstringOrNil
]

{ #category : #accessing }
HighchartsXAxis >> minorTickLength: aNumber [

	"The pixel length of the minor tick marks.
Defaults to 2."

	configurationOptions at: 'minorTickLength' put: aNumber
]

{ #category : #accessing }
HighchartsXAxis >> minorTickPosition: aString [

	"The position of the minor tick marks relative to the axis line.
 Can be one of inside and outside.
Defaults to outside."

	configurationOptions at: 'minorTickPosition' put: aString
]

{ #category : #accessing }
HighchartsXAxis >> minorTickWidth: aNumber [

	"The pixel width of the minor tick mark.
Defaults to 0."

	configurationOptions at: 'minorTickWidth' put: aNumber
]

{ #category : #accessing }
HighchartsXAxis >> minorTicks: aBoolean [

	"Enable or disable minor ticks. Unless
minorTickInterval is set, the tick
interval is calculated as a fifth of the tickInterval.
On a logarithmic axis, minor ticks are laid out based on a best
guess, attempting to enter approximately 5 minor ticks between
each major tick.
Prior to v6.0.0, ticks were unabled in auto layout by setting
minorTickInterval to &quot;auto&quot;.
Defaults to false."

	configurationOptions at: 'minorTicks' put: aBoolean
]

{ #category : #accessing }
HighchartsXAxis >> offset: aNumber [

	"The distance in pixels from the plot area to the axis line.
A positive offset moves the axis with it´s line, labels and ticks
away from the plot area. This is typically used when two or more
axes are displayed on the same side of the plot. With multiple
axes the offset is dynamically adjusted to avoid collision, this
can be overridden by setting offset explicitly.
Defaults to 0."

	configurationOptions at: 'offset' put: aNumber
]

{ #category : #accessing }
HighchartsXAxis >> opposite: aBoolean [

	"Whether to display the axis on the opposite side of the normal. The
normal is on the left side for vertical axes and bottom for
horizontal, so the opposite sides will be right and top respectively.
This is typically used with dual or multiple axes.
Defaults to false."

	configurationOptions at: 'opposite' put: aBoolean
]

{ #category : #accessing }
HighchartsXAxis >> pane: aNumber [

	"Refers to the index in the panes array. Used for circular
gauges and polar charts. When the option is not set then first pane
will be used.
"

	configurationOptions at: 'pane' put: aNumber
]

{ #category : #accessing }
HighchartsXAxis >> plotBands [

	"An array of colored bands stretching across the plot area marking an
interval on the axis.
In styled mode, the plot bands are styled by the .highcharts-plot-band
class in addition to the className option.
"
	^configurationOptions at: 'plotBands' ifAbsentPut: [HighchartsXAxisPlotBands new]
]

{ #category : #accessing }
HighchartsXAxis >> plotLines [

	"An array of lines stretching across the plot area, marking a specific
value on one of the axes.
In styled mode, the plot lines are styled by the
.highcharts-plot-line class in addition to the className option.
"
	^configurationOptions at: 'plotLines' ifAbsentPut: [HighchartsXAxisPlotLines new]
]

{ #category : #accessing }
HighchartsXAxis >> reversed: aBoolean [

	"Whether to reverse the axis so that the highest number is closest
to the origin. If the chart is inverted, the x axis is reversed by
default.
Defaults to false."

	configurationOptions at: 'reversed' put: aBoolean
]

{ #category : #accessing }
HighchartsXAxis >> reversedStacks: aBoolean [

	"This option determines how stacks should be ordered within a group.
For example reversed xAxis also reverses stacks, so first series
comes last in a group. To keep order like for non-reversed xAxis
enable this option.
Defaults to false."

	configurationOptions at: 'reversedStacks' put: aBoolean
]

{ #category : #accessing }
HighchartsXAxis >> showEmpty: aBoolean [

	"Whether to show the axis line and title when the axis has no data.
Defaults to true."

	configurationOptions at: 'showEmpty' put: aBoolean
]

{ #category : #accessing }
HighchartsXAxis >> showFirstLabel: aBoolean [

	"Whether to show the first tick label.
Defaults to true."

	configurationOptions at: 'showFirstLabel' put: aBoolean
]

{ #category : #accessing }
HighchartsXAxis >> showLastLabel: aBoolean [

	"Whether to show the last tick label. Defaults to true on cartesian
charts, and false on polar charts.
Defaults to true."

	configurationOptions at: 'showLastLabel' put: aBoolean
]

{ #category : #accessing }
HighchartsXAxis >> softMax: aNumber [

	"A soft maximum for the axis. If the series data maximum is less than
this, the axis will stay at this maximum, but if the series data
maximum is higher, the axis will flex to show all data.
"

	configurationOptions at: 'softMax' put: aNumber
]

{ #category : #accessing }
HighchartsXAxis >> softMin: aNumber [

	"A soft minimum for the axis. If the series data minimum is greater
than this, the axis will stay at this minimum, but if the series
data minimum is lower, the axis will flex to show all data.
"

	configurationOptions at: 'softMin' put: aNumber
]

{ #category : #accessing }
HighchartsXAxis >> startOfWeek: aNumber [

	"For datetime axes, this decides where to put the tick between weeks.
 0 = Sunday, 1 = Monday.
Defaults to 1."

	configurationOptions at: 'startOfWeek' put: aNumber
]

{ #category : #accessing }
HighchartsXAxis >> startOnTick: aBoolean [

	"Whether to force the axis to start on a tick. Use this option with
the minPadding option to control the axis start.
Defaults to false."

	configurationOptions at: 'startOnTick' put: aBoolean
]

{ #category : #accessing }
HighchartsXAxis >> tickAmount: aNumber [

	"The amount of ticks to draw on the axis. This opens up for aligning
the ticks of multiple charts or panes within a chart. This option
overrides the tickPixelInterval option.
This option only has an effect on linear axes. Datetime, logarithmic
or category axes are not affected.
"

	configurationOptions at: 'tickAmount' put: aNumber
]

{ #category : #accessing }
HighchartsXAxis >> tickColor: aHighchartsColorString [

	"Color for the main tick marks.
In styled mode, the stroke is given in the .highcharts-tick
class.
Defaults to #ccd6eb."

	configurationOptions at: 'tickColor' put: aHighchartsColorString
]

{ #category : #accessing }
HighchartsXAxis >> tickInterval: aNumber [

	"The interval of the tick marks in axis units. When undefined, the
tick interval is computed to approximately follow the
tickPixelInterval on linear and datetime
axes. On categorized axes, a undefined tickInterval will default to
1, one category. Note that datetime axes are based on milliseconds,
so for example an interval of one day is expressed as
24 * 3600 * 1000.
On logarithmic axes, the tickInterval is based on powers, so a
tickInterval of 1 means one tick on each of 0.1, 1, 10, 100 etc. A
tickInterval of 2 means a tick of 0.1, 10, 1000 etc. A tickInterval
of 0.2 puts a tick on 0.1, 0.2, 0.4, 0.6, 0.8, 1, 2, 4, 6, 8, 10, 20,
40 etc.
If the tickInterval is too dense for labels to be drawn, Highcharts
may remove ticks.
If the chart has multiple axes, the alignTicks
option may interfere with the tickInterval setting.
"

	configurationOptions at: 'tickInterval' put: aNumber
]

{ #category : #accessing }
HighchartsXAxis >> tickLength: aNumber [

	"The pixel length of the main tick marks.
Defaults to 10."

	configurationOptions at: 'tickLength' put: aNumber
]

{ #category : #accessing }
HighchartsXAxis >> tickPixelInterval: aNumber [

	"If tickInterval is null this option sets the approximate pixel
interval of the tick marks. Not applicable to categorized axis.
The tick interval is also influenced by the minTickInterval option, that, by default prevents ticks from
being denser than the data points.
Defaults to 100."

	configurationOptions at: 'tickPixelInterval' put: aNumber
]

{ #category : #accessing }
HighchartsXAxis >> tickPosition: aString [

	"The position of the major tick marks relative to the axis line.
Can be one of inside and outside.
Defaults to outside."

	configurationOptions at: 'tickPosition' put: aString
]

{ #category : #accessing }
HighchartsXAxis >> tickPositioner: aHighchartsAxisTickPositionerCallbackFunction [

	"A callback function returning array defining where the ticks are
laid out on the axis. This overrides the default behaviour of
tickPixelInterval and tickInterval. The automatic tick positions are accessible
through this.tickPositions and can be modified by the callback.
"

	configurationOptions at: 'tickPositioner' put: aHighchartsAxisTickPositionerCallbackFunction
]

{ #category : #accessing }
HighchartsXAxis >> tickPositions: anArrayOfnumber [

	"An array defining where the ticks are laid out on the axis. This
overrides the default behaviour of tickPixelInterval and tickInterval.
"

	configurationOptions at: 'tickPositions' put: anArrayOfnumber
]

{ #category : #accessing }
HighchartsXAxis >> tickWidth: anUndefinedOrnumber [

	"The pixel width of the major tick marks. Defaults to 0 on category
axes, otherwise 1.
In styled mode, the stroke width is given in the .highcharts-tick
class.
"

	configurationOptions at: 'tickWidth' put: anUndefinedOrnumber
]

{ #category : #accessing }
HighchartsXAxis >> tickmarkPlacement: aString [

	"For categorized axes only. If on the tick mark is placed in the
center of the category, if between the tick mark is placed between
categories. The default is between if the tickInterval is 1, else
on.
Defaults to between."

	configurationOptions at: 'tickmarkPlacement' put: aString
]

{ #category : #accessing }
HighchartsXAxis >> title [

	"The axis title, showing next to the axis line.
"
	^configurationOptions at: 'title' ifAbsentPut: [HighchartsXAxisTitle new]
]

{ #category : #accessing }
HighchartsXAxis >> type: aHighchartsAxisTypeValue [

	"The type of axis. Can be one of linear, logarithmic, datetime
or category. In a datetime axis, the numbers are given in
milliseconds, and tick marks are placed on appropriate values like
full hours or days. In a category axis, the
point names of the chart´s series are used
for categories, if not a categories array is
defined.
Defaults to linear."

	configurationOptions at: 'type' put: aHighchartsAxisTypeValue
]

{ #category : #accessing }
HighchartsXAxis >> uniqueNames: aBoolean [

	"Applies only when the axis type is category. When uniqueNames
is true, points are placed on the X axis according to their names.
If the same point name is repeated in the same or another series,
the point is placed on the same X position as other points of the
same name. When uniqueNames is false, the points are laid out in
increasing X positions regardless of their names, and the X axis
category will take the name of the last point in each position.
Defaults to true."

	configurationOptions at: 'uniqueNames' put: aBoolean
]

{ #category : #accessing }
HighchartsXAxis >> units: anArrayOfArrayOfstringArrayOfnumberOrNil [

	"Datetime axis only. An array determining what time intervals the
ticks are allowed to fall on. Each array item is an array where the
first value is the time unit and the second value another array of
allowed multiples. Defaults to:
units: [[
    'millisecond', // unit name
    [1, 2, 5, 10, 20, 25, 50, 100, 200, 500] // allowed multiples
], [
    'second',
    [1, 2, 5, 10, 15, 30]
], [
    'minute',
    [1, 2, 5, 10, 15, 30]
], [
    'hour',
    [1, 2, 3, 4, 6, 8, 12]
], [
    'day',
    [1]
], [
    'week',
    [1]
], [
    'month',
    [1, 3, 6]
], [
    'year',
    null
]]
"

	configurationOptions at: 'units' put: anArrayOfArrayOfstringArrayOfnumberOrNil
]

{ #category : #accessing }
HighchartsXAxis >> visible: aBoolean [

	"Whether axis, including axis title, line, ticks and labels, should
be visible.
Defaults to true."

	configurationOptions at: 'visible' put: aBoolean
]