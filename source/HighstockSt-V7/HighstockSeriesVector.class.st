"
A vector series. If the type option is not
specified, it is inherited from chart.type.
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
	#name : #HighstockSeriesVector,
	#superclass : #HighchartsComponent,
	#category : #'HighstockSt-V7'
}

{ #category : #accessing }
HighstockSeriesVector >> accessibility [

	"Accessibility options for a series. Requires the accessibility module.
"
	^configurationOptions at: 'accessibility' ifAbsentPut: [HighstockSeriesVectorAccessibility new]
]

{ #category : #accessing }
HighstockSeriesVector >> allAreas: aBoolean [

	"Whether all areas of the map defined in mapData should be rendered.
If true, areas which don´t correspond to a data point, are rendered
as null points. If false, those areas are skipped.
Defaults to true."

	configurationOptions at: 'allAreas' put: aBoolean
]

{ #category : #accessing }
HighstockSeriesVector >> allowPointSelect: aBoolean [

	"Allow this series´ points to be selected by clicking on the graphic
(columns, point markers, pie slices, map areas etc).
The selected points can be handled by point select and unselect
events, or collectively by the getSelectedPoints function.
And alternative way of selecting points is through dragging.
Defaults to false."

	configurationOptions at: 'allowPointSelect' put: aBoolean
]

{ #category : #accessing }
HighstockSeriesVector >> animation [

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
	^configurationOptions at: 'animation' ifAbsentPut: [HighstockSeriesVectorAnimation new]
]

{ #category : #accessing }
HighstockSeriesVector >> animationLimit: aNumber [

	"For some series, there is a limit that shuts down initial animation
by default when the total number of points in the chart is too high.
For example, for a column chart and its derivatives, animation does
not run if there is more than 250 points totally. To disable this
cap, set animationLimit to Infinity.
"

	configurationOptions at: 'animationLimit' put: aNumber
]

{ #category : #accessing }
HighstockSeriesVector >> boostBlending: aString [

	"Sets the color blending in the boost module.
Defaults to undefined."

	configurationOptions at: 'boostBlending' put: aString
]

{ #category : #accessing }
HighstockSeriesVector >> boostThreshold: aNumber [

	"Set the point threshold for when a series should enter boost mode.
Setting it to e.g. 2000 will cause the series to enter boost mode when there
are 2000 or more points in the series.
To disable boosting on the series, set the boostThreshold to 0. Setting it
to 1 will force boosting.
Note that the cropThreshold also affects
this setting. When zooming in on a series that has fewer points than the
cropThreshold, all points are rendered although outside the visible plot
area, and the boostThreshold won´t take effect.
Requires modules/boost.js.
Defaults to 5000."

	configurationOptions at: 'boostThreshold' put: aNumber
]

{ #category : #accessing }
HighstockSeriesVector >> borderColor: aHighchartsColorString [

	"The border color of the map areas.
In styled mode, the border stroke is given in the .highcharts-point
class.
Defaults to '#cccccc'."

	configurationOptions at: 'borderColor' put: aHighchartsColorString
]

{ #category : #accessing }
HighstockSeriesVector >> borderWidth: aNumber [

	"The border width of each map area.
In styled mode, the border stroke width is given in the
.highcharts-point class.
Defaults to 1."

	configurationOptions at: 'borderWidth' put: aNumber
]

{ #category : #accessing }
HighstockSeriesVector >> className: aString [

	"An additional class name to apply to the series´ graphical elements.
This option does not replace default class names of the graphical
element.
"

	configurationOptions at: 'className' put: aString
]

{ #category : #accessing }
HighstockSeriesVector >> clip: aBoolean [

	"Disable this option to allow series rendering in the whole plotting
area.
Note: Clipping should be always enabled when
chart.zoomType is set
Defaults to true."

	configurationOptions at: 'clip' put: aBoolean
]

{ #category : #accessing }
HighstockSeriesVector >> color: aHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject [

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
HighstockSeriesVector >> colorAxis: aBoolean [

	"Set this option to false to prevent a series from connecting to
the global color axis. This will cause the series to have its own
legend item.
"

	configurationOptions at: 'colorAxis' put: aBoolean
]

{ #category : #accessing }
HighstockSeriesVector >> colorIndex: aNumber [

	"Styled mode only. A specific color index to use for the series, so
its graphic representations are given the class name
highcharts-color-{n}.
"

	configurationOptions at: 'colorIndex' put: aNumber
]

{ #category : #accessing }
HighstockSeriesVector >> compare: aString [

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
HighstockSeriesVector >> compareBase: aNumber [

	"When compare is percent, this option
dictates whether to use 0 or 100 as the base of comparison.
Defaults to 0."

	configurationOptions at: 'compareBase' put: aNumber
]

{ #category : #accessing }
HighstockSeriesVector >> compareStart: aBoolean [

	"Defines if comparison should start from the first point within the visible
range or should start from the first point before the range.
In other words, this flag determines if first point within the visible range
will have 0 (compareStart=true) or should have been already calculated
according to the previous point (compareStart=false).
Defaults to false."

	configurationOptions at: 'compareStart' put: aBoolean
]

{ #category : #accessing }
HighstockSeriesVector >> connectNulls: aBoolean [

	"Whether to connect a graph line across null points, or render a gap
between the two points on either side of the null.
Defaults to false."

	configurationOptions at: 'connectNulls' put: aBoolean
]

{ #category : #accessing }
HighstockSeriesVector >> connectors [

	"Override Pathfinder connector options for a series. Requires Highcharts Gantt
to be loaded.
"
	^configurationOptions at: 'connectors' ifAbsentPut: [HighstockSeriesVectorConnectors new]
]

{ #category : #accessing }
HighstockSeriesVector >> cropThreshold: aNumber [

	"When the series contains less points than the crop threshold, all
points are drawn, even if the points fall outside the visible plot
area at the current zoom. The advantage of drawing all points
(including markers and columns), is that animation is performed on
updates. On the other hand, when the series contains more points than
the crop threshold, the series data is cropped to only contain points
that fall within the plot area. The advantage of cropping away
invisible points is to increase performance on large series.
Defaults to 300."

	configurationOptions at: 'cropThreshold' put: aNumber
]

{ #category : #accessing }
HighstockSeriesVector >> cursor: aStringOrHighchartsCursorValue [

	"You can set the cursor to &quot;pointer&quot; if you have click events attached
to the series, to signal to the user that the points and lines can
be clicked.
In styled mode, the series cursor can be set with the same classes
as listed under series.color.
"

	configurationOptions at: 'cursor' put: aStringOrHighchartsCursorValue
]

{ #category : #accessing }
HighstockSeriesVector >> dashStyle: aHighchartsDashStyleValue [

	"A name for the dash style to use for the graph, or for some series
types the outline of each shape.
In styled mode, the
stroke dash-array
can be set with the same classes as listed under
series.color.
Defaults to Solid."

	configurationOptions at: 'dashStyle' put: aHighchartsDashStyleValue
]

{ #category : #accessing }
HighstockSeriesVector >> data [

	"An array of data points for the series. For the vector series type,
points can be given in the following ways:

An array of arrays with 4 values. In this case, the values correspond to
to x,y,length,direction. If the first value is a string, it is applied
as the name of the point, and the x value is inferred.
data: [
    [0, 0, 10, 90],
    [0, 1, 5, 180],
    [1, 1, 2, 270]
]

An array of objects with named values. The following snippet shows only a
few settings, see the complete options set below. If the total number of
data points exceeds the series´
turboThreshold, this option is not
available.
data: [{
    x: 0,
    y: 0,
    name: &quot;Point2&quot;,
    length: 10,
    direction: 90
}, {
    x: 1,
    y: 1,
    name: &quot;Point1&quot;,
    direction: 270
}]
"
	^configurationOptions at: 'data' ifAbsentPut: [HighstockSeriesVectorData new]
]

{ #category : #accessing }
HighstockSeriesVector >> data: anObject [


	configurationOptions at: 'data' put: anObject
]

{ #category : #accessing }
HighstockSeriesVector >> dataGrouping [

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
	^configurationOptions at: 'dataGrouping' ifAbsentPut: [HighstockSeriesVectorDataGrouping new]
]

{ #category : #accessing }
HighstockSeriesVector >> dataLabels: aHighchartsDataLabelsOptionsObject [

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
HighstockSeriesVector >> description: aString [

	"Requires the Accessibility module.
A description of the series to add to the screen reader information
about the series.
"

	configurationOptions at: 'description' put: aString
]

{ #category : #accessing }
HighstockSeriesVector >> dragDrop [

	"The draggable-points module allows points to be moved around or modified in
the chart. In addition to the options mentioned under the dragDrop API
structure, the module fires three events,
point.dragStart,
point.drag and
point.drop.
It requires the modules/draggable-points.js file to be loaded.
"
	^configurationOptions at: 'dragDrop' ifAbsentPut: [HighstockSeriesVectorDragDrop new]
]

{ #category : #accessing }
HighstockSeriesVector >> enableMouseTracking: aBoolean [

	"Enable or disable the mouse tracking for a specific series. This
includes point tooltips and click events on graphs and points. For
large datasets it improves performance.
Defaults to true."

	configurationOptions at: 'enableMouseTracking' put: aBoolean
]

{ #category : #accessing }
HighstockSeriesVector >> events: anObject [

	"General event handlers for the series items. These event hooks can
also be attached to the series at run time using the
Highcharts.addEvent function.
"

	configurationOptions at: 'events' put: anObject
]

{ #category : #accessing }
HighstockSeriesVector >> exposeElementToA11y: aBoolean [

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
HighstockSeriesVector >> findNearestPointBy: aString [

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
HighstockSeriesVector >> gapSize: aNumber [

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
HighstockSeriesVector >> gapUnit: aString [

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
HighstockSeriesVector >> getExtremesFromAll: aBoolean [

	"Whether to use the Y extremes of the total chart width or only the
zoomed area when zooming in on parts of the X axis. By default, the
Y axis adjusts to the min and max of the visible data. Cartesian
series only.
Defaults to false."

	configurationOptions at: 'getExtremesFromAll' put: aBoolean
]

{ #category : #accessing }
HighstockSeriesVector >> id: aString [

	"An id for the series. This can be used after render time to get a pointer
to the series object through chart.get().
"

	configurationOptions at: 'id' put: aString
]

{ #category : #accessing }
HighstockSeriesVector >> includeInDataExport: aBoolean [

	"Export-data module required. When set to false will prevent the series
data from being included in any form of data export.
Since version 6.0.0 until 7.1.0 the option was existing undocumented
as includeInCSVExport.
"

	configurationOptions at: 'includeInDataExport' put: aBoolean
]

{ #category : #accessing }
HighstockSeriesVector >> index: aNumber [

	"The index of the series in the chart, affecting the internal index in the
chart.series array, the visible Z index as well as the order in the
legend.
"

	configurationOptions at: 'index' put: aNumber
]

{ #category : #initialization }
HighstockSeriesVector >> initialize [
	
	super initialize.
	self type: 'vector'
]

{ #category : #accessing }
HighstockSeriesVector >> joinBy: aStringOrArrayOfstring [

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
HighstockSeriesVector >> keys: anArrayOfstring [

	"An array specifying which option maps to which key in the data point
array. This makes it convenient to work with unstructured data arrays
from different sources.
"

	configurationOptions at: 'keys' put: anArrayOfstring
]

{ #category : #accessing }
HighstockSeriesVector >> label [

	"Series labels are placed as close to the series as possible in a
natural way, seeking to avoid other series. The goal of this
feature is to make the chart more easily readable, like if a
human designer placed the labels in the optimal position.
The series labels currently work with series types having a
graph or an area.
Requires the series-label.js module.
"
	^configurationOptions at: 'label' ifAbsentPut: [HighstockSeriesVectorLabel new]
]

{ #category : #accessing }
HighstockSeriesVector >> lastPrice [

	"The line marks the last price from all points.
"
	^configurationOptions at: 'lastPrice' ifAbsentPut: [HighstockSeriesVectorLastPrice new]
]

{ #category : #accessing }
HighstockSeriesVector >> lastVisiblePrice [

	"The line marks the last price from visible range of points.
"
	^configurationOptions at: 'lastVisiblePrice' ifAbsentPut: [HighstockSeriesVectorLastVisiblePrice new]
]

{ #category : #accessing }
HighstockSeriesVector >> legendIndex: aNumber [

	"The sequential index of the series in the legend.
"

	configurationOptions at: 'legendIndex' put: aNumber
]

{ #category : #accessing }
HighstockSeriesVector >> lineWidth: aNumber [

	"The line width for each vector arrow.
Defaults to 2."

	configurationOptions at: 'lineWidth' put: aNumber
]

{ #category : #accessing }
HighstockSeriesVector >> linecap: aHighchartsSeriesLinecapValue [

	"The line cap used for line ends and line joins on the graph.
Defaults to round."

	configurationOptions at: 'linecap' put: aHighchartsSeriesLinecapValue
]

{ #category : #accessing }
HighstockSeriesVector >> linkedTo: aString [

	"The id of another series to link to. Additionally,
the value can be &quot;:previous&quot; to link to the previous series. When
two series are linked, only the first one appears in the legend.
Toggling the visibility of this also toggles the linked series.
"

	configurationOptions at: 'linkedTo' put: aString
]

{ #category : #accessing }
HighstockSeriesVector >> mapData: aHighchartsMapDataObjectOrArrayOfHighchartsMapDataObject [

	"A map data object containing a path definition and optionally additional
properties to join in the data as per the joinBy option.
"

	configurationOptions at: 'mapData' put: aHighchartsMapDataObjectOrArrayOfHighchartsMapDataObject
]

{ #category : #accessing }
HighstockSeriesVector >> marker [

	"Options for the point markers of line-like series. Properties like
fillColor, lineColor and lineWidth define the visual appearance
of the markers. Other series types, like column series, don´t have
markers, but have visual options on the series level instead.
In styled mode, the markers can be styled with the
.highcharts-point, .highcharts-point-hover and
.highcharts-point-select class names.
"
	^configurationOptions at: 'marker' ifAbsentPut: [HighstockSeriesVectorMarker new]
]

{ #category : #accessing }
HighstockSeriesVector >> name: aString [

	"The name of the series as shown in the legend, tooltip etc.
"

	configurationOptions at: 'name' put: aString
]

{ #category : #accessing }
HighstockSeriesVector >> navigatorOptions: aHighchartsPlotSeriesOptions [

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
HighstockSeriesVector >> negativeColor: aHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject [

	"The color for the parts of the graph or points that are below the
threshold.
"

	configurationOptions at: 'negativeColor' put: aHighchartsColorStringOrHighchartsGradientColorObjectOrHighchartsPatternObject
]

{ #category : #accessing }
HighstockSeriesVector >> opacity: aNumber [

	"Opacity of a series parts: line, fill (e.g. area) and dataLabels.
Defaults to 1."

	configurationOptions at: 'opacity' put: aNumber
]

{ #category : #accessing }
HighstockSeriesVector >> point [

	"Properties for each single point.
"
	^configurationOptions at: 'point' ifAbsentPut: [HighstockSeriesVectorPoint new]
]

{ #category : #accessing }
HighstockSeriesVector >> pointDescriptionFormatter: aFunction [

	"Same as
accessibility.pointDescriptionFormatter,
but for an individual series. Overrides the chart wide configuration.
"

	configurationOptions at: 'pointDescriptionFormatter' put: aFunction
]

{ #category : #accessing }
HighstockSeriesVector >> pointInterval: aNumber [

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
HighstockSeriesVector >> pointIntervalUnit: aString [

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
HighstockSeriesVector >> pointPlacement: aStringOrnumber [

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
HighstockSeriesVector >> pointRange: aNumber [

	"The width of each point on the x axis. For example in a column chart
with one value each day, the pointRange would be 1 day (= 24 * 3600

1000 milliseconds). This is normally computed automatically, but
this option can be used to override the automatic value.
Defaults to 0."

	configurationOptions at: 'pointRange' put: aNumber
]

{ #category : #accessing }
HighstockSeriesVector >> pointStart: aNumber [

	"If no x values are given for the points in a series, pointStart
defines on what value to start. For example, if a series contains one
yearly value starting from 1945, set pointStart to 1945.
Defaults to 0."

	configurationOptions at: 'pointStart' put: aNumber
]

{ #category : #accessing }
HighstockSeriesVector >> rotationOrigin: aString [

	"What part of the vector it should be rotated around. Can be one of
start, center and end. When start, the vectors will start from
the given [x, y] position, and when end the vectors will end in the
[x, y] position.
Defaults to center."

	configurationOptions at: 'rotationOrigin' put: aString
]

{ #category : #accessing }
HighstockSeriesVector >> selected: aBoolean [

	"Whether to select the series initially. If showCheckbox is true,
the checkbox next to the series name in the legend will be checked
for a selected series.
Defaults to false."

	configurationOptions at: 'selected' put: aBoolean
]

{ #category : #accessing }
HighstockSeriesVector >> shadow: aBooleanOrHighchartsShadowOptionsObject [

	"Whether to apply a drop shadow to the graph line. Since 2.3 the
shadow can be an object configuration containing color, offsetX,
offsetY, opacity and width.
Defaults to false."

	configurationOptions at: 'shadow' put: aBooleanOrHighchartsShadowOptionsObject
]

{ #category : #accessing }
HighstockSeriesVector >> showCheckbox: aBoolean [

	"If true, a checkbox is displayed next to the legend item to allow
selecting the series. The state of the checkbox is determined by
the selected option.
Defaults to false."

	configurationOptions at: 'showCheckbox' put: aBoolean
]

{ #category : #accessing }
HighstockSeriesVector >> showInLegend: aBoolean [

	"Whether to display this particular series or series type in the
legend. The default value is true for standalone series, false
for linked series.
Defaults to true."

	configurationOptions at: 'showInLegend' put: aBoolean
]

{ #category : #accessing }
HighstockSeriesVector >> showInNavigator: aBoolean [

	"Whether or not to show the series in the navigator. Takes precedence
over navigator.baseSeries if defined.
"

	configurationOptions at: 'showInNavigator' put: aBoolean
]

{ #category : #accessing }
HighstockSeriesVector >> skipKeyboardNavigation: aBoolean [

	"If set to true, the accessibility module will skip past the points
in this series for keyboard navigation.
"

	configurationOptions at: 'skipKeyboardNavigation' put: aBoolean
]

{ #category : #accessing }
HighstockSeriesVector >> softThreshold: aBoolean [

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
HighstockSeriesVector >> stack: aStringOrobject [

	"This option allows grouping series in a stacked chart. The stack option
can be a string or anything else, as long as the grouped series´ stack
options match each other after conversion into a string.
"

	configurationOptions at: 'stack' put: aStringOrobject
]

{ #category : #accessing }
HighstockSeriesVector >> stacking: aString [

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
HighstockSeriesVector >> states: anObject [


	configurationOptions at: 'states' put: anObject
]

{ #category : #accessing }
HighstockSeriesVector >> step: aString [

	"Whether to apply steps to the line. Possible values are left,
center and right.
"

	configurationOptions at: 'step' put: aString
]

{ #category : #accessing }
HighstockSeriesVector >> stickyTracking: aBoolean [

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
HighstockSeriesVector >> threshold: aNumber [

	"The threshold, also called zero level or base level. For line type
series this is only used in conjunction with
negativeColor.
Defaults to 0."

	configurationOptions at: 'threshold' put: aNumber
]

{ #category : #accessing }
HighstockSeriesVector >> tooltip [

	"A configuration object for the tooltip rendering of each single
series. Properties are inherited from tooltip.
Overridable properties are headerFormat, pointFormat,
yDecimals, xDateFormat, yPrefix and ySuffix. Unlike other
series, in a scatter plot the series.name by default shows in the
headerFormat and point.x and point.y in the pointFormat.
"
	^configurationOptions at: 'tooltip' ifAbsentPut: [HighstockSeriesVectorTooltip new]
]

{ #category : #accessing }
HighstockSeriesVector >> turboThreshold: aNumber [

	"When a series contains a data array that is longer than this, only
one dimensional arrays of numbers, or two dimensional arrays with
x and y values are allowed. Also, only the first point is tested,
and the rest are assumed to be the same format. This saves expensive
data checking and indexing in long series. Set it to 0 disable.
Defaults to 1000."

	configurationOptions at: 'turboThreshold' put: aNumber
]

{ #category : #accessing }
HighstockSeriesVector >> type: aString [

	"The type of series, for example line or column. By default, the
series type is inherited from chart.type, so unless the
chart is a combination of series types, there is no need to set it on the
series level.
In TypeScript instead the type option must always be set.
"

	configurationOptions at: 'type' put: aString
]

{ #category : #accessing }
HighstockSeriesVector >> vectorLength: aNumber [

	"Maximum length of the arrows in the vector plot. The individual arrow
length is computed between 0 and this value.
Defaults to 20."

	configurationOptions at: 'vectorLength' put: aNumber
]

{ #category : #accessing }
HighstockSeriesVector >> visible: aBoolean [

	"Set the initial visibility of the series.
Defaults to true."

	configurationOptions at: 'visible' put: aBoolean
]

{ #category : #accessing }
HighstockSeriesVector >> xAxis: aNumberOrstring [

	"When using dual or multiple x axes, this number defines which xAxis the
particular series is connected to. It refers to either the
{@link #xAxis.id|axis id}
or the index of the axis in the xAxis array, with 0 being the first.
Defaults to 0."

	configurationOptions at: 'xAxis' put: aNumberOrstring
]

{ #category : #accessing }
HighstockSeriesVector >> yAxis: aNumberOrstring [

	"When using dual or multiple y axes, this number defines which yAxis the
particular series is connected to. It refers to either the
{@link #yAxis.id|axis id}
or the index of the axis in the yAxis array, with 0 being the first.
Defaults to 0."

	configurationOptions at: 'yAxis' put: aNumberOrstring
]

{ #category : #accessing }
HighstockSeriesVector >> zIndex: aNumber [

	"Define the visual z index of the series.
"

	configurationOptions at: 'zIndex' put: aNumber
]

{ #category : #accessing }
HighstockSeriesVector >> zoneAxis: aString [

	"Defines the Axis on which the zones are applied.
Defaults to y."

	configurationOptions at: 'zoneAxis' put: aString
]

{ #category : #accessing }
HighstockSeriesVector >> zones [

	"An array defining zones within a series. Zones can be applied to the
X axis, Y axis or Z axis for bubbles, according to the zoneAxis
option. The zone definitions have to be in ascending order regarding
to the value.
In styled mode, the color zones are styled with the
.highcharts-zone-{n} class, or custom classed from the className
option
(view live demo).
"
	^configurationOptions at: 'zones' ifAbsentPut: [HighstockSeriesVectorZones new]
]