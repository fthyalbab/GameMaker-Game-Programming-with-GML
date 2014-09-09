// Gets the percent of a value between a minimum and maximum value.

/* arguments
argument0 -- the minimum value
argument1 -- the maximum value
argument2 -- the value being tested.
*/

var minimum, maximum, test_value;

minimum = argument0;
maximum = argument1;
test_value = argument2;

// To avoid errors zero division errors, if argument0 and argument1 are the same, 0 is returned.
if (minimum == maximum)
{
    return 0;
}

// Returns the difference of the value and the minimum divided by the difference of the maximum and the minimum.
return (test_value - minimum) / (maximum - minimum);
