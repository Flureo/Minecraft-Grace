# Math
This namespace aims to solve complex math problems and make them a lot easier with simple custom functions.

## Finding the square root
By default, Minecraft doesn't provide a way to get the square root of a number. So I've implemented a function to fix that. The first step is to put the number you want to find the square root of into a data storage.
```
/data modify storage math:sqrt number set value <value>
```

Next just run the function.
```
/function utilities:math/sqrt
```

To get the answer you can run this command
```
/data get storage math:sqrt answer
```