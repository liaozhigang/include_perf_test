# include_perf_test

Test the performance impact of including bucket header files vs. including precise header file in c++.

The result is:

1. bucket header including would increase the compilation time. In my case, it is 20 secs. vs. 33 secs, including both configuration time and build time.
2. with precompiled headers support, the compilation time is almost the same. It is 21 secs vs 21 secs.

This is tested under MS build tools 2019.
