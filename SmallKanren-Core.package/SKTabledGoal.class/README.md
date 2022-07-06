Goal representing a tabled relation. When run, it produces a tabled stream that produces only the unique values of the goal (duplicates will fail), and memoizes all values produced. Subsequent calls to the goal constructor will return values from the cache.

Input arguments represent the memoization key and can be thought of as inputs to a function. Subsequent calls with unifying input arguments will return values from the cache.

Output arguments can be thought of as the function output(s). They are not used to perform cache lookups.