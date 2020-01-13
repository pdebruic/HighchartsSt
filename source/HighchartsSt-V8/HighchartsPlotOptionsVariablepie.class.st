"
A variable pie series is a two dimensional series type, where each point
renders an Y and Z value.  Each point is drawn as a pie slice where the
size (arc) of the slice relates to the Y value and the radius of pie
slice relates to the Z value. Requires highcharts-more.js.
In TypeScript the type option must always be set.
Configuration options for the series are given in three levels:

Options for all series in a chart are defined in the
plotOptions.series object.
Options for all variablepie series are defined in
plotOptions.variablepie.
Options for one single series are given in
the series instance array.

Highcharts.chart(´container´, {
    plotOptions: {
        series: {
            // general options for all series
        },
        variablepie: {
            // shared options for all variablepie series
        }
    },
    series: [{
        // specific options for this series instance
        type: ´variablepie´
    }]
});
"
Class {
	#name : #HighchartsPlotOptionsVariablepie,
	#superclass : #HighchartsComponent,
	#category : #'HighchartsSt-V8'
}

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> accessibility [

	"Accessibility options for a series.
"
	^ configurationOptions at: 'accessibility' ifAbsentPut: [ HighchartsPlotOptionsVariablepieAccessibility new ]
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> allAreas: aBoolean [

	"Whether all areas of the map defined in mapData should be rendered.
If true, areas which don´t correspond to a data point, are rendered
as null points. If false, those areas are skipped.
Defaults to true."

	configurationOptions at: 'allAreas' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> allowPointSelect: aBoolean [

	"Allow this series´ points to be selected by clicking on the graphic
(columns, point markers, pie slices, map areas etc).
The selected points can be handled by point select and unselect
events, or collectively by the getSelectedPoints function.
And alternative way of selecting points is through dragging.
Defaults to false."

	configurationOptions at: 'allowPointSelect' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> animation [

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
	^ configurationOptions at: 'animation' ifAbsentPut: [ HighchartsPlotOptionsVariablepieAnimation new ]
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> boostBlending: aString [

	"Sets the color blending in the boost module.
Defaults to undefined."

	configurationOptions at: 'boostBlending' put: aString
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> borderColor: aHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject [

	"The color of the border surrounding each slice. When null, the
border takes the same color as the slice fill. This can be used
together with a borderWidth to fill drawing gaps created by
antialiazing artefacts in borderless pies.
In styled mode, the border stroke is given in the .highcharts-point
class.
Defaults to #ffffff."

	configurationOptions at: 'borderColor' put: aHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> borderWidth: aNumber [

	"The width of the border surrounding each slice.
When setting the border width to 0, there may be small gaps between
the slices due to SVG antialiasing artefacts. To work around this,
keep the border width at 0.5 or 1, but set the borderColor to
null instead.
In styled mode, the border stroke width is given in the
.highcharts-point class.
Defaults to 1."

	configurationOptions at: 'borderWidth' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> center: anArrayOfnumberOrstringOrNilnumberOrstringOrNil [

	"The center of the pie chart relative to the plot area. Can be
percentages or pixel values. The default behaviour (as of 3.0) is to
center the pie so that all slices and data labels are within the plot
area. As a consequence, the pie may actually jump around in a chart
with dynamic values, as the data labels move. In that case, the
center should be explicitly set, for example to [&quot;50&quot;, &quot;50&quot;].
Defaults to [null, null]."

	configurationOptions at: 'center' put: anArrayOfnumberOrstringOrNilnumberOrstringOrNil
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> className: aString [

	"An additional class name to apply to the series´ graphical elements.
This option does not replace default class names of the graphical
element.
"

	configurationOptions at: 'className' put: aString
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> clip: aBoolean [

	"Disable this option to allow series rendering in the whole plotting
area.
Note: Clipping should be always enabled when
chart.zoomType is set
Defaults to false."

	configurationOptions at: 'clip' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> color: aHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject [

	"The color of the pie series. A pie series is represented as an empty
circle if the total sum of its values is 0. Use this property to
define the color of its border.
In styled mode, the color can be defined by the
colorIndex option. Also, the series
color can be set with the .highcharts-series,
.highcharts-color-{n}, .highcharts-{type}-series or
.highcharts-series-{n} class, or individual classes given by the
className option.
Defaults to #cccccc."

	configurationOptions at: 'color' put: aHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> colorAxis: aNumberOrstringOrboolean [

	"When using dual or multiple color axes, this number defines which
colorAxis the particular series is connected to. It refers to
either the
{@link #colorAxis.id|axis id}
or the index of the axis in the colorAxis array, with 0 being the
first. Set this option to false to prevent a series from connecting
to the default color axis.
Since v7.2.0 the option can also be an axis id or an axis index
instead of a boolean flag.
Defaults to 0."

	configurationOptions at: 'colorAxis' put: aNumberOrstringOrboolean
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> colorIndex: aNumber [

	"Styled mode only. A specific color index to use for the series, so
its graphic representations are given the class name
highcharts-color-{n}.
"

	configurationOptions at: 'colorIndex' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> colorKey: aString [

	"Determines what data value should be used to calculate point color
if colorAxis is used. Requires to set min and max if some
custom point property is used or if approximation for data grouping
is set to ´sum´.
Defaults to y."

	configurationOptions at: 'colorKey' put: aString
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> colors: anArrayOfHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject [

	"A series specific or series type specific color set to use instead
of the global colors.
"

	configurationOptions at: 'colors' put: anArrayOfHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> compare: aString [

	"Compare the values of the series against the first non-null, non-
zero value in the visible range. The y axis will show percentage
or absolute change depending on whether compare is set to &quot;percent&quot;
or &quot;value&quot;. When this is applied to multiple series, it allows
comparing the development of the series against each other. Adds
a change field to every point object.
"

	configurationOptions at: 'compare' put: aString
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> compareBase: aNumber [

	"When compare is percent, this option
dictates whether to use 0 or 100 as the base of comparison.
Defaults to 0."

	configurationOptions at: 'compareBase' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> compareStart: aBoolean [

	"Defines if comparison should start from the first point within the visible
range or should start from the first point before the range.
In other words, this flag determines if first point within the visible range
will have 0 (compareStart=true) or should have been already calculated
according to the previous point (compareStart=false).
Defaults to false."

	configurationOptions at: 'compareStart' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> connectors [

	"Override Pathfinder connector options for a series. Requires Highcharts Gantt
to be loaded.
"
	^ configurationOptions at: 'connectors' ifAbsentPut: [ HighchartsPlotOptionsVariablepieConnectors new ]
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> cursor: aStringOrHighchartsCursorValue [

	"You can set the cursor to &quot;pointer&quot; if you have click events attached
to the series, to signal to the user that the points and lines can
be clicked.
In styled mode, the series cursor can be set with the same classes
as listed under series.color.
"

	configurationOptions at: 'cursor' put: aStringOrHighchartsCursorValue
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> dataGrouping [

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
	^ configurationOptions at: 'dataGrouping' ifAbsentPut: [ HighchartsPlotOptionsVariablepieDataGrouping new ]
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> dataLabels [

	"Options for the series data labels, appearing next to each data
point.
Since v6.2.0, multiple data labels can be applied to each single
point by defining them as an array of configs.
In styled mode, the data labels can be styled with the
.highcharts-data-label-box and .highcharts-data-label class names
(see example).
"
	^ configurationOptions at: 'dataLabels' ifAbsentPut: [ HighchartsPlotOptionsVariablepieDataLabels new ]
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> depth: aNumber [

	"The thickness of a 3D pie.
Defaults to 0."

	configurationOptions at: 'depth' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> description: aString [

	"A description of the series to add to the screen reader information
about the series.
"

	configurationOptions at: 'description' put: aString
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> enableMouseTracking: aBoolean [

	"Enable or disable the mouse tracking for a specific series. This
includes point tooltips and click events on graphs and points. For
large datasets it improves performance.
Defaults to true."

	configurationOptions at: 'enableMouseTracking' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> endAngle: aNumber [

	"The end angle of the pie in degrees where 0 is top and 90 is right.
Defaults to startAngle plus 360.
"

	configurationOptions at: 'endAngle' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> events: anObject [

	"General event handlers for the series items. These event hooks can
also be attached to the series at run time using the
Highcharts.addEvent function.
"

	configurationOptions at: 'events' put: anObject
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> fillColor: aHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject [

	"If the total sum of the pie´s values is 0, the series is represented
as an empty circle . The fillColor option defines the color of that
circle. Use pie.borderWidth to set
the border thickness.
Defaults to undefined."

	configurationOptions at: 'fillColor' put: aHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> gapSize: aNumber [

	"Defines when to display a gap in the graph, together with the
gapUnit option.
In case when dataGrouping is enabled, points can be grouped into a
larger time span. This can make the grouped points to have a greater
distance than the absolute value of gapSize property, which will result
in disappearing graph completely. To prevent this situation the mentioned
distance between grouped points is used instead of previously defined
gapSize.
In practice, this option is most often used to visualize gaps in
time series. In a stock chart, intraday data is available for daytime
hours, while gaps will appear in nights and weekends.
Defaults to 0."

	configurationOptions at: 'gapSize' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> gapUnit: aString [

	"Together with gapSize, this option defines
where to draw gaps in the graph.
When the gapUnit is relative (default), a gap size of 5 means
that if the distance between two points is greater than five times
that of the two closest points, the graph will be broken.
When the gapUnit is value, the gap is based on absolute axis values,
which on a datetime axis is milliseconds. This also applies to the
navigator series that inherits gap options from the base series.
Defaults to relative."

	configurationOptions at: 'gapUnit' put: aString
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> ignoreHiddenPoint: aBoolean [

	"Equivalent to chart.ignoreHiddenSeries,
this option tells whether the series shall be redrawn as if the
hidden point were null.
The default value changed from false to true with Highcharts
3.0.
Defaults to true."

	configurationOptions at: 'ignoreHiddenPoint' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> includeInDataExport: aBoolean [

	"When set to false will prevent the series data from being included in
any form of data export.
Since version 6.0.0 until 7.1.0 the option was existing undocumented
as includeInCSVExport.
"

	configurationOptions at: 'includeInDataExport' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> innerSize: aNumberOrstring [

	"The size of the inner diameter for the pie. A size greater than 0
renders a donut chart. Can be a percentage or pixel value.
Percentages are relative to the pie size. Pixel values are given as
integers.
Note: in Highcharts &lt; 4.1.2, the percentage was relative to the plot
area, not the pie size.
Defaults to 0."

	configurationOptions at: 'innerSize' put: aNumberOrstring
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> joinBy: aStringOrArrayOfstring [

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
HighchartsPlotOptionsVariablepie >> keys: anArrayOfstring [

	"An array specifying which option maps to which key in the data point
array. This makes it convenient to work with unstructured data arrays
from different sources.
"

	configurationOptions at: 'keys' put: anArrayOfstring
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> lastPrice [

	"The line marks the last price from all points.
"
	^ configurationOptions at: 'lastPrice' ifAbsentPut: [ HighchartsPlotOptionsVariablepieLastPrice new ]
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> lastVisiblePrice [

	"The line marks the last price from visible range of points.
"
	^ configurationOptions at: 'lastVisiblePrice' ifAbsentPut: [ HighchartsPlotOptionsVariablepieLastVisiblePrice new ]
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> linecap: aHighchartsSeriesLinecapValue [

	"The SVG value used for the stroke-linecap and stroke-linejoin
of a line graph. Round means that lines are rounded in the ends and
bends.
Defaults to round."

	configurationOptions at: 'linecap' put: aHighchartsSeriesLinecapValue
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> linkedTo: aString [

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
HighchartsPlotOptionsVariablepie >> maxPointSize: aNumberOrstring [

	"The maximum size of the points´ radius related to chart´s plotArea.
If a number is set, it applies in pixels.
Defaults to 100%."

	configurationOptions at: 'maxPointSize' put: aNumberOrstring
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> minPointSize: aNumberOrstring [

	"The minimum size of the points´ radius related to chart´s plotArea.
If a number is set, it applies in pixels.
Defaults to 10%."

	configurationOptions at: 'minPointSize' put: aNumberOrstring
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> minSize: aNumberOrstring [

	"The minimum size for a pie in response to auto margins. The pie will
try to shrink to make room for data labels in side the plot area,
 but only to this size.
Defaults to 80."

	configurationOptions at: 'minSize' put: aNumberOrstring
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> navigatorOptions: aHighchartsPlotSeriesOptions [

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
HighchartsPlotOptionsVariablepie >> opacity: aNumber [

	"Opacity of a series parts: line, fill (e.g. area) and dataLabels.
Defaults to 1."

	configurationOptions at: 'opacity' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> point [

	"Properties for each single point.
"
	^ configurationOptions at: 'point' ifAbsentPut: [ HighchartsPlotOptionsVariablepiePoint new ]
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> pointDescriptionFormatter: aFunction [

	"Same as
accessibility.pointDescriptionFormatter,
but for an individual series. Overrides the chart wide configuration.
"

	configurationOptions at: 'pointDescriptionFormatter' put: aFunction
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> pointRange: aNumber [

	"The width of each point on the x axis. For example in a column chart
with one value each day, the pointRange would be 1 day (= 24 * 3600

1000 milliseconds). This is normally computed automatically, but
this option can be used to override the automatic value.
Defaults to 0."

	configurationOptions at: 'pointRange' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> selected: aBoolean [

	"Whether to select the series initially. If showCheckbox is true,
the checkbox next to the series name in the legend will be checked
for a selected series.
Defaults to false."

	configurationOptions at: 'selected' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> shadow: aBooleanOrHighchartsShadowOptionsObject [

	"Whether to apply a drop shadow to the graph line. Since 2.3 the
shadow can be an object configuration containing color, offsetX,
offsetY, opacity and width.
Defaults to false."

	configurationOptions at: 'shadow' put: aBooleanOrHighchartsShadowOptionsObject
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> showCheckbox: aBoolean [

	"If true, a checkbox is displayed next to the legend item to allow
selecting the series. The state of the checkbox is determined by
the selected option.
Defaults to false."

	configurationOptions at: 'showCheckbox' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> showInLegend: aBoolean [

	"Whether to display this particular series or series type in the
legend. Since 2.1, pies are not shown in the legend by default.
Defaults to false."

	configurationOptions at: 'showInLegend' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> showInNavigator: aBoolean [

	"Whether or not to show the series in the navigator. Takes precedence
over navigator.baseSeries if defined.
"

	configurationOptions at: 'showInNavigator' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> size: aNumberOrstringOrNil [

	"The diameter of the pie relative to the plot area. Can be a
percentage or pixel value. Pixel values are given as integers. The
default behaviour (as of 3.0) is to scale to the plot area and give
room for data labels within the plot area.
slicedOffset is also included in the
default size calculation. As a consequence, the size of the pie may
vary when points are updated and data labels more around. In that
case it is best to set a fixed value, for example &quot;75&quot;.
Defaults to nil."

	configurationOptions at: 'size' put: aNumberOrstringOrNil
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> sizeBy: aHighchartsVariablePieSizeByValue [

	"Whether the pie slice´s value should be represented by the area or
the radius of the slice. Can be either area or radius. The
default, area, corresponds best to the human perception of the size
of each pie slice.
Defaults to area."

	configurationOptions at: 'sizeBy' put: aHighchartsVariablePieSizeByValue
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> skipKeyboardNavigation: aBoolean [

	"If set to true, the accessibility module will skip past the points
in this series for keyboard navigation.
"

	configurationOptions at: 'skipKeyboardNavigation' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> slicedOffset: aNumber [

	"If a point is sliced, moved out from the center, how many pixels
should it be moved?.
Defaults to 10."

	configurationOptions at: 'slicedOffset' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> startAngle: aNumber [

	"The start angle of the pie slices in degrees where 0 is top and 90
right.
Defaults to 0."

	configurationOptions at: 'startAngle' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> states: anObject [


	configurationOptions at: 'states' put: anObject
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> stickyTracking: aBoolean [

	"Sticky tracking of mouse events. When true, the mouseOut event
on a series isn´t triggered until the mouse moves over another
series, or out of the plot area. When false, the mouseOut event on
a series is triggered when the mouse leaves the area around the
series´  graph or markers. This also implies the tooltip. When
stickyTracking is false and tooltip.shared is false, the tooltip
will be hidden when moving the mouse between series.
Defaults to false."

	configurationOptions at: 'stickyTracking' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> tooltip [

	"A configuration object for the tooltip rendering of each single
series. Properties are inherited from tooltip, but only
the following properties can be defined on a series level.
"
	^ configurationOptions at: 'tooltip' ifAbsentPut: [ HighchartsPlotOptionsVariablepieTooltip new ]
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> useOhlcData: aBoolean [

	"The parameter allows setting line series type and use OHLC indicators. Data
in OHLC format is required.
"

	configurationOptions at: 'useOhlcData' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> visible: aBoolean [

	"Set the initial visibility of the series.
Defaults to true."

	configurationOptions at: 'visible' put: aBoolean
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> zIndex: aNumber [

	"Define the z index of the series.
"

	configurationOptions at: 'zIndex' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> zMax: aNumber [

	"The maximum possible z value for the point´s radius calculation. If
the point´s Z value is bigger than zMax, the slice will be drawn
according to the zMax value
Defaults to undefined."

	configurationOptions at: 'zMax' put: aNumber
]

{ #category : #accessing }
HighchartsPlotOptionsVariablepie >> zMin: aNumber [

	"The minimum possible z value for the point´s radius calculation. If
the point´s Z value is smaller than zMin, the slice will be drawn
according to the zMin value.
Defaults to undefined."

	configurationOptions at: 'zMin' put: aNumber
]