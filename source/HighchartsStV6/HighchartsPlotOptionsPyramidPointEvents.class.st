"
Events for each single point.
"
Class {
	#name : #HighchartsPlotOptionsPyramidPointEvents,
	#superclass : #HighchartsComponent,
	#category : 'HighchartsStV6'
}

{ #category : #accessing }
HighchartsPlotOptionsPyramidPointEvents >> click: aFunction [

	"Fires when a point is clicked. One parameter, event, is passed
to the function, containing common event information.
If the series.allowPointSelect option is true, the default action
for the point´s click event is to toggle the point´s select state.
 Returning false cancels this action.
"

	configurationOptions at: 'click' put: aFunction
]

{ #category : #accessing }
HighchartsPlotOptionsPyramidPointEvents >> legendItemClick: aFunction [

	"Fires when the legend item belonging to the pie point (slice) is
clicked. The this keyword refers to the point itself. One parameter,
event, is passed to the function, containing common event information. The
default action is to toggle the visibility of the point. This can be
prevented by calling event.preventDefault().
"

	configurationOptions at: 'legendItemClick' put: aFunction
]

{ #category : #accessing }
HighchartsPlotOptionsPyramidPointEvents >> mouseOut: aFunction [

	"Fires when the mouse leaves the area close to the point. One parameter,
event, is passed to the function, containing common event information.
"

	configurationOptions at: 'mouseOut' put: aFunction
]

{ #category : #accessing }
HighchartsPlotOptionsPyramidPointEvents >> mouseOver: aFunction [

	"Fires when the mouse enters the area close to the point. One parameter,
event, is passed to the function, containing common event information.
"

	configurationOptions at: 'mouseOver' put: aFunction
]

{ #category : #accessing }
HighchartsPlotOptionsPyramidPointEvents >> remove: aFunction [

	"Fires when the point is removed using the .remove() method. One
parameter, event, is passed to the function. Returning false
cancels the operation.
"

	configurationOptions at: 'remove' put: aFunction
]

{ #category : #accessing }
HighchartsPlotOptionsPyramidPointEvents >> select: aFunction [

	"Fires when the point is selected either programmatically or following
a click on the point. One parameter, event, is passed to the function.
 Returning false cancels the operation.
"

	configurationOptions at: 'select' put: aFunction
]

{ #category : #accessing }
HighchartsPlotOptionsPyramidPointEvents >> unselect: aFunction [

	"Fires when the point is unselected either programmatically or following
a click on the point. One parameter, event, is passed to the function.
 Returning false cancels the operation.
"

	configurationOptions at: 'unselect' put: aFunction
]

{ #category : #accessing }
HighchartsPlotOptionsPyramidPointEvents >> update: aFunction [

	"Fires when the point is updated programmatically through the .update()
method. One parameter, event, is passed to the function. The new
point options can be accessed through event.options. Returning
false cancels the operation.
"

	configurationOptions at: 'update' put: aFunction
]
