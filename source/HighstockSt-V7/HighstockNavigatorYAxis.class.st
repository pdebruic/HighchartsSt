"
Options for the navigator Y axis. Default series options
for the navigator yAxis are:
yAxis: {
    gridLineWidth: 0,
    startOnTick: false,
    endOnTick: false,
    minPadding: 0.1,
    maxPadding: 0.1,
    labels: {
        enabled: false
    },
    title: {
        text: null
    },
    tickWidth: 0
}
"
Class {
	#name : #HighstockNavigatorYAxis,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockNavigatorYAxis >> accessibility [

	"Accessibility options for an axis. Requires the accessibility module.
"
	^configurationOptions at: 'accessibility' ifAbsentPut: [HighstockNavigatorYAxisAccessibility new]
]

{ #category : #accessing }
HighstockNavigatorYAxis >> alignTicks: aBoolean [

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
HighstockNavigatorYAxis >> allowDecimals: aBoolean [

	"Whether to allow decimals in this axis´ ticks. When counting
integers, like persons or hits on a web page, decimals should
be avoided in the labels.
Defaults to true."

	configurationOptions at: 'allowDecimals' put: aBoolean
]

{ #category : #accessing }
HighstockNavigatorYAxis >> alternateGridColor: aHighchartsColorString [

	"When using an alternate grid color, a band is painted across the
plot area between every other grid line.
"

	configurationOptions at: 'alternateGridColor' put: aHighchartsColorString
]

{ #category : #accessing }
HighstockNavigatorYAxis >> angle: aNumber [

	"In a polar chart, this is the angle of the Y axis in degrees, where
0 is up and 90 is right. The angle determines the position of the
axis line and the labels, though the coordinate system is unaffected.
Defaults to 0."

	configurationOptions at: 'angle' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxis >> breaks [

	"An array defining breaks in the axis, the sections defined will be
left out and all the points shifted closer to each other.
"
	^configurationOptions at: 'breaks' ifAbsentPut: [HighstockNavigatorYAxisBreaks new]
]

{ #category : #accessing }
HighstockNavigatorYAxis >> ceiling: aNumber [

	"The highest allowed value for automatically computed axis extremes.
"

	configurationOptions at: 'ceiling' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxis >> className: aString [

	"A class name that opens for styling the axis by CSS, especially in
Highcharts styled mode. The class name is applied to group elements
for the grid, axis elements and labels.
Defaults to highcharts-navigator-yaxis."

	configurationOptions at: 'className' put: aString
]

{ #category : #accessing }
HighstockNavigatorYAxis >> crosshair [

	"Configure a crosshair that follows either the mouse pointer or the
hovered point.
In styled mode, the crosshairs are styled in the
.highcharts-crosshair, .highcharts-crosshair-thin or
.highcharts-xaxis-category classes.
Defaults to false."
	^configurationOptions at: 'crosshair' ifAbsentPut: [HighstockNavigatorYAxisCrosshair new]
]

{ #category : #accessing }
HighstockNavigatorYAxis >> dateTimeLabelFormats [

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
	^configurationOptions at: 'dateTimeLabelFormats' ifAbsentPut: [HighstockNavigatorYAxisDateTimeLabelFormats new]
]

{ #category : #accessing }
HighstockNavigatorYAxis >> endOnTick: aBoolean [

	"Whether to force the axis to end on a tick. Use this option with
the maxPadding option to control the axis end.
Defaults to false."

	configurationOptions at: 'endOnTick' put: aBoolean
]

{ #category : #accessing }
HighstockNavigatorYAxis >> events: anObject [

	"Event handlers for the axis.
"

	configurationOptions at: 'events' put: anObject
]

{ #category : #accessing }
HighstockNavigatorYAxis >> floor: aNumber [

	"The lowest allowed value for automatically computed axis extremes.
"

	configurationOptions at: 'floor' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxis >> gridLineColor: aHighchartsColorString [

	"Color of the grid lines extending the ticks across the plot area.
In styled mode, the stroke is given in the .highcharts-grid-line
class.
Defaults to #e6e6e6."

	configurationOptions at: 'gridLineColor' put: aHighchartsColorString
]

{ #category : #accessing }
HighstockNavigatorYAxis >> gridLineDashStyle: aHighchartsDashStyleValue [

	"The dash or dot style of the grid lines. For possible values, see
this demonstration.
Defaults to Solid."

	configurationOptions at: 'gridLineDashStyle' put: aHighchartsDashStyleValue
]

{ #category : #accessing }
HighstockNavigatorYAxis >> gridLineInterpolation: aString [

	"Polar charts only. Whether the grid lines should draw as a polygon
with straight lines between categories, or as circles. Can be either
circle or polygon.
"

	configurationOptions at: 'gridLineInterpolation' put: aString
]

{ #category : #accessing }
HighstockNavigatorYAxis >> gridLineWidth: aNumber [

	"The width of the grid lines extending the ticks across the plot area.
In styled mode, the stroke width is given in the
.highcharts-grid-line class.
Defaults to 0."

	configurationOptions at: 'gridLineWidth' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxis >> gridZIndex: aNumber [

	"The Z index of the grid lines.
Defaults to 1."

	configurationOptions at: 'gridZIndex' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxis >> id: aString [

	"An id for the axis. This can be used after render time to get
a pointer to the axis object through chart.get().
"

	configurationOptions at: 'id' put: aString
]

{ #category : #accessing }
HighstockNavigatorYAxis >> labels [

	"The axis labels show the number or category for each tick.
"
	^configurationOptions at: 'labels' ifAbsentPut: [HighstockNavigatorYAxisLabels new]
]

{ #category : #accessing }
HighstockNavigatorYAxis >> lineColor: aHighchartsColorString [

	"The color of the line marking the axis itself.
In styled mode, the line stroke is given in the
.highcharts-axis-line or .highcharts-xaxis-line class.
Defaults to #ccd6eb."

	configurationOptions at: 'lineColor' put: aHighchartsColorString
]

{ #category : #accessing }
HighstockNavigatorYAxis >> lineWidth: aNumber [

	"The width of the line marking the axis itself.
In styled mode, the stroke width is given in the
.highcharts-axis-line or .highcharts-xaxis-line class.
Defaults to 0."

	configurationOptions at: 'lineWidth' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxis >> margin: anObject [

	"If there are multiple axes on the same side of the chart, the pixel
margin between the axes. Defaults to 0 on vertical axes, 15 on
horizontal axes.
"

	configurationOptions at: 'margin' put: anObject
]

{ #category : #accessing }
HighstockNavigatorYAxis >> max: aNumberOrNil [

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
HighstockNavigatorYAxis >> maxColor: aHighchartsColorString [

	"Solid gauge only. Unless stops are set, the color
to represent the maximum value of the Y axis.
Defaults to #003399."

	configurationOptions at: 'maxColor' put: aHighchartsColorString
]

{ #category : #accessing }
HighstockNavigatorYAxis >> maxPadding: aNumber [

	"Padding of the max value relative to the length of the axis. A
padding of 0.05 will make a 100px axis 5px longer. This is useful
when you don´t want the highest data value to appear on the edge
of the plot area. When the axis´ max option is set or a max extreme
is set using axis.setExtremes(), the maxPadding will be ignored.
Defaults to 0.1."

	configurationOptions at: 'maxPadding' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxis >> min: aNumberOrNil [

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
HighstockNavigatorYAxis >> minColor: aHighchartsColorString [

	"Solid gauge only. Unless stops are set, the color
to represent the minimum value of the Y axis.
Defaults to #e6ebf5."

	configurationOptions at: 'minColor' put: aHighchartsColorString
]

{ #category : #accessing }
HighstockNavigatorYAxis >> minPadding: aNumber [

	"Padding of the min value relative to the length of the axis. A
padding of 0.05 will make a 100px axis 5px longer. This is useful
when you don´t want the lowest data value to appear on the edge
of the plot area. When the axis´ min option is set or a max extreme
is set using axis.setExtremes(), the maxPadding will be ignored.
Defaults to 0.1."

	configurationOptions at: 'minPadding' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxis >> minTickInterval: aNumber [

	"The minimum tick interval allowed in axis values. For example on
zooming in on an axis with daily data, this can be used to prevent
the axis from showing hours. Defaults to the closest distance between
two points on the axis.
"

	configurationOptions at: 'minTickInterval' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxis >> minorGridLineColor: aHighchartsColorString [

	"Color of the minor, secondary grid lines.
In styled mode, the stroke width is given in the
.highcharts-minor-grid-line class.
Defaults to #f2f2f2."

	configurationOptions at: 'minorGridLineColor' put: aHighchartsColorString
]

{ #category : #accessing }
HighstockNavigatorYAxis >> minorGridLineDashStyle: aHighchartsDashStyleValue [

	"The dash or dot style of the minor grid lines. For possible values,
see this demonstration.
Defaults to Solid."

	configurationOptions at: 'minorGridLineDashStyle' put: aHighchartsDashStyleValue
]

{ #category : #accessing }
HighstockNavigatorYAxis >> minorGridLineWidth: aNumber [

	"Width of the minor, secondary grid lines.
In styled mode, the stroke width is given in the
.highcharts-grid-line class.
Defaults to 1."

	configurationOptions at: 'minorGridLineWidth' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxis >> minorTickColor: aHighchartsColorString [

	"Color for the minor tick marks.
Defaults to #999999."

	configurationOptions at: 'minorTickColor' put: aHighchartsColorString
]

{ #category : #accessing }
HighstockNavigatorYAxis >> minorTickInterval: aNumberOrstringOrNil [

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
HighstockNavigatorYAxis >> minorTickLength: aNumber [

	"The pixel length of the minor tick marks.
Defaults to 2."

	configurationOptions at: 'minorTickLength' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxis >> minorTickPosition: aString [

	"The position of the minor tick marks relative to the axis line.
 Can be one of inside and outside.
Defaults to outside."

	configurationOptions at: 'minorTickPosition' put: aString
]

{ #category : #accessing }
HighstockNavigatorYAxis >> minorTickWidth: aNumber [

	"The pixel width of the minor tick mark.
Defaults to 0."

	configurationOptions at: 'minorTickWidth' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxis >> minorTicks: aBoolean [

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
HighstockNavigatorYAxis >> offset: aNumber [

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
HighstockNavigatorYAxis >> opposite: aBoolean [

	"Whether to display the axis on the opposite side of the normal. The
normal is on the left side for vertical axes and bottom for
horizontal, so the opposite sides will be right and top respectively.
This is typically used with dual or multiple axes.
Defaults to false."

	configurationOptions at: 'opposite' put: aBoolean
]

{ #category : #accessing }
HighstockNavigatorYAxis >> pane: aNumber [

	"Refers to the index in the panes array. Used for circular
gauges and polar charts. When the option is not set then first pane
will be used.
"

	configurationOptions at: 'pane' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxis >> plotBands [

	"An array of objects defining plot bands on the Y axis.
"
	^configurationOptions at: 'plotBands' ifAbsentPut: [HighstockNavigatorYAxisPlotBands new]
]

{ #category : #accessing }
HighstockNavigatorYAxis >> plotLines [

	"An array of objects representing plot lines on the X axis
"
	^configurationOptions at: 'plotLines' ifAbsentPut: [HighstockNavigatorYAxisPlotLines new]
]

{ #category : #accessing }
HighstockNavigatorYAxis >> reversed: aBoolean [

	"Whether to reverse the axis so that the highest number is closest
to the origin.
Defaults to false."

	configurationOptions at: 'reversed' put: aBoolean
]

{ #category : #accessing }
HighstockNavigatorYAxis >> reversedStacks: aBoolean [

	"If true, the first series in a stack will be drawn on top in a
positive, non-reversed Y axis. If false, the first series is in
the base of the stack.
Defaults to true."

	configurationOptions at: 'reversedStacks' put: aBoolean
]

{ #category : #accessing }
HighstockNavigatorYAxis >> showFirstLabel: aBoolean [

	"Whether to show the first tick label.
Defaults to true."

	configurationOptions at: 'showFirstLabel' put: aBoolean
]

{ #category : #accessing }
HighstockNavigatorYAxis >> showLastLabel: aBoolean [

	"Whether to show the last tick label. Defaults to true on cartesian
charts, and false on polar charts.
Defaults to true."

	configurationOptions at: 'showLastLabel' put: aBoolean
]

{ #category : #accessing }
HighstockNavigatorYAxis >> softMax: aNumber [

	"A soft maximum for the axis. If the series data maximum is less
than this, the axis will stay at this maximum, but if the series
data maximum is higher, the axis will flex to show all data.
Note: The series.softThreshold option takes precedence over this
option.
"

	configurationOptions at: 'softMax' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxis >> softMin: aNumber [

	"A soft minimum for the axis. If the series data minimum is greater
than this, the axis will stay at this minimum, but if the series
data minimum is lower, the axis will flex to show all data.
Note: The series.softThreshold option takes precedence over this
option.
"

	configurationOptions at: 'softMin' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxis >> stackLabels [

	"The stack labels show the total value for each bar in a stacked
column or bar chart. The label will be placed on top of positive
columns and below negative columns. In case of an inverted column
chart or a bar chart the label is placed to the right of positive
bars and to the left of negative bars.
"
	^configurationOptions at: 'stackLabels' ifAbsentPut: [HighstockNavigatorYAxisStackLabels new]
]

{ #category : #accessing }
HighstockNavigatorYAxis >> startOfWeek: aNumber [

	"For datetime axes, this decides where to put the tick between weeks.
 0 = Sunday, 1 = Monday.
Defaults to 1."

	configurationOptions at: 'startOfWeek' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxis >> startOnTick: aBoolean [

	"Whether to force the axis to start on a tick. Use this option with
the maxPadding option to control the axis start.
Defaults to false."

	configurationOptions at: 'startOnTick' put: aBoolean
]

{ #category : #accessing }
HighstockNavigatorYAxis >> stops: anArrayOfArrayOfnumberHighchartsColorString [

	"Solid gauge series only. Color stops for the solid gauge. Use this
in cases where a linear gradient between a minColor and maxColor
is not sufficient. The stops is an array of tuples, where the first
item is a float between 0 and 1 assigning the relative position in
the gradient, and the second item is the color.
For solid gauges, the Y axis also inherits the concept of
data classes
from the Highmaps color axis.
"

	configurationOptions at: 'stops' put: anArrayOfArrayOfnumberHighchartsColorString
]

{ #category : #accessing }
HighstockNavigatorYAxis >> tickAmount: aNumber [

	"The amount of ticks to draw on the axis. This opens up for aligning
the ticks of multiple charts or panes within a chart. This option
overrides the tickPixelInterval option.
This option only has an effect on linear axes. Datetime, logarithmic
or category axes are not affected.
"

	configurationOptions at: 'tickAmount' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxis >> tickColor: aHighchartsColorString [

	"Color for the main tick marks.
In styled mode, the stroke is given in the .highcharts-tick
class.
Defaults to #ccd6eb."

	configurationOptions at: 'tickColor' put: aHighchartsColorString
]

{ #category : #accessing }
HighstockNavigatorYAxis >> tickInterval: aNumber [

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
HighstockNavigatorYAxis >> tickLength: aNumber [

	"The pixel length of the main tick marks.
Defaults to 0."

	configurationOptions at: 'tickLength' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxis >> tickPixelInterval: aNumber [

	"If tickInterval is null this option sets the approximate pixel
interval of the tick marks. Not applicable to categorized axis.
The tick interval is also influenced by the minTickInterval option, that, by default prevents ticks from
being denser than the data points.
Defaults to 72."

	configurationOptions at: 'tickPixelInterval' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxis >> tickPosition: aString [

	"The position of the major tick marks relative to the axis line.
Can be one of inside and outside.
Defaults to outside."

	configurationOptions at: 'tickPosition' put: aString
]

{ #category : #accessing }
HighstockNavigatorYAxis >> tickPositioner: aHighchartsAxisTickPositionerCallbackFunction [

	"A callback function returning array defining where the ticks are
laid out on the axis. This overrides the default behaviour of
tickPixelInterval and tickInterval. The automatic tick positions are accessible
through this.tickPositions and can be modified by the callback.
"

	configurationOptions at: 'tickPositioner' put: aHighchartsAxisTickPositionerCallbackFunction
]

{ #category : #accessing }
HighstockNavigatorYAxis >> tickPositions: anArrayOfnumber [

	"An array defining where the ticks are laid out on the axis. This
overrides the default behaviour of tickPixelInterval and tickInterval.
"

	configurationOptions at: 'tickPositions' put: anArrayOfnumber
]

{ #category : #accessing }
HighstockNavigatorYAxis >> tickWidth: aNumber [

	"The pixel width of the major tick marks.
Defaults to 0."

	configurationOptions at: 'tickWidth' put: aNumber
]

{ #category : #accessing }
HighstockNavigatorYAxis >> title [

	"The axis title, showing next to the axis line.
"
	^configurationOptions at: 'title' ifAbsentPut: [HighstockNavigatorYAxisTitle new]
]

{ #category : #accessing }
HighstockNavigatorYAxis >> tooltipValueFormat: aString [

	"Parallel coordinates only. Format that will be used for point.y
and available in tooltip.pointFormat as
{point.formattedValue}. If not set, {point.formattedValue}
will use other options, in this order:

yAxis.labels.format will be used if
set

If yAxis is a category, then category name will be displayed

If yAxis is a datetime, then value will use the same format as
yAxis labels

If yAxis is linear/logarithmic type, then simple value will be
used
Defaults to undefined."

	configurationOptions at: 'tooltipValueFormat' put: aString
]

{ #category : #accessing }
HighstockNavigatorYAxis >> visible: aBoolean [

	"Whether axis, including axis title, line, ticks and labels, should
be visible.
Defaults to true."

	configurationOptions at: 'visible' put: aBoolean
]