Project: Line Art

On my honor, I have neither given nor received any aid on this assignment.
Ellie Stuckey

In this project, the task was to draw a parabola, an ellipse, and a hyperbola using straight lines. 
For the parabola task, I used the equation x^2 to model my curve. I knew that using the derivative, 
the task would be easy because it would take away the folding. Instead, I used the bottom of the 
canvas as my guide line where each point was folded onto the random point. In order to do the 
animation, I used two halves of the parabola, but one parabola could have easily been used. To find
the points, for the parabola, I took the midpoint of the two points and the slope of the line. The 
fold will be perpendicular to the original line, so I took the negative reciprocal of the original 
slope. Knowing the slope and a point on the line, I could use the slope intercept equation to find 
where the line would intersect with x = 0 to find the y intercept. I can then plug x values into the
equation to find the points at far ends, or in this case, x = 0. The line between the two points was
then plotted and the loop continued until the x value got too big, where it would return to a small 
number. The graph is upside down because mathematically, the coordinate system is different. 

For the hyperbola task, a circle was drawn at the center of the screen(the axis was moved so that the
origin is in the center of the canvas) and a random point P was drawn somewhere on the canvas outside
of the circle. The counter starts at the leftmost point of the circle and takes every x value at delta
and determines the 2 y values associated with the point (using the equation of a circle centered at
(0, 0). It then uses the same method as the parabola to find the midpoint and slope to graph the lines.

For the ellipse, the code works similarly except the point P is inside the circle instead of having it 
outside of the circle. The result is an ellipse.

I would like to thank Nicole Johnson for continuously breaking my code so I could make it work properly.

