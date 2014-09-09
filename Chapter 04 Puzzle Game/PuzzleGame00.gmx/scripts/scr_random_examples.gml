// Returns a color based on the hue, saturation, and value

// Should return a bright red
// Arguments should range from 0 to 255.
color_rgb = make_color_hsv(125, 243, 255);

color_hsv = make_color_hsv(32, 23, 155);

// Returns a value between 0 and the given argument.
// 0 is inclusive, meaning the returned value could be 0.
// The argument is exclusive meaning the returned value will never be equivilant.
a = random(12.4);

// Returns a value between the first and second argument.
// The first argument is inclusive; the second argument is exclusive.
b = random_range(23, 192);

// Returns a random integer between 0 and the given argument.
// In the case of irandom, the argument is inclusive.
c = irandom(32);

// Returns a random integer between the two supplied, inclusive values.
d = irandom_range(43, 993);

// Returns one of the 16 or less provided arguments.
// The arguments can be string, reals, object ids, etc.
e = choose("one", "two", "three", "four", "five");
