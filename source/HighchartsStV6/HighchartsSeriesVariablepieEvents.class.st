"
General event handlers for the series items. These event hooks can also
be attached to the series at run time using the Highcharts.addEvent
function.
"
Class {
	#name : #HighchartsSeriesVariablepieEvents,
	#superclass : #HighchartsComponent,
	#category : 'HighchartsStV6'
}

{ #category : #accessing }
HighchartsSeriesVariablepieEvents >> afterAnimate: aFunction [

	"Fires after the series has finished its initial animation, or in
case animation is disabled, immediately as the series is displayed.
"

	configurationOptions at: 'afterAnimate' put: aFunction
]

{ #category : #accessing }
HighchartsSeriesVariablepieEvents >> checkboxClick: aFunction [

	"Fires when the checkbox next to the point name in the legend is clicked.
One parameter, event, is passed to the function. The state of the
checkbox is found by event.checked. The checked item is found by
event.item. Return false to prevent the default action which is to
toggle the select state of the series.
"

	configurationOptions at: 'checkboxClick' put: aFunction
]

{ #category : #accessing }
HighchartsSeriesVariablepieEvents >> click: aFunction [

	"Fires when the series is clicked. One parameter, event, is passed
to the function, containing common event information. Additionally,
event.point holds a pointer to the nearest point on the graph.
"

	configurationOptions at: 'click' put: aFunction
]

{ #category : #accessing }
HighchartsSeriesVariablepieEvents >> hide: aFunction [

	"Fires when the series is hidden after chart generation time, either
by clicking the legend item or by calling .hide().
"

	configurationOptions at: 'hide' put: aFunction
]

{ #category : #accessing }
HighchartsSeriesVariablepieEvents >> legendItemClick: aFunction [

	"Not applicable to pies, as the legend item is per point. See point.
events.
"

	configurationOptions at: 'legendItemClick' put: aFunction
]

{ #category : #accessing }
HighchartsSeriesVariablepieEvents >> mouseOut: aFunction [

	"Fires when the mouse leaves the graph. One parameter, event, is
passed to the function, containing common event information. If the
stickyTracking option is true, mouseOut
doesn´t happen before the mouse enters another graph or leaves the
plot area.
"

	configurationOptions at: 'mouseOut' put: aFunction
]

{ #category : #accessing }
HighchartsSeriesVariablepieEvents >> mouseOver: aFunction [

	"Fires when the mouse enters the graph. One parameter, event, is
passed to the function, containing common event information.
"

	configurationOptions at: 'mouseOver' put: aFunction
]

{ #category : #accessing }
HighchartsSeriesVariablepieEvents >> show: aFunction [

	"Fires when the series is shown after chart generation time, either
by clicking the legend item or by calling .show().
"

	configurationOptions at: 'show' put: aFunction
]
