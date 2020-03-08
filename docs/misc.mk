Garbage Collection History

The design of the Go GC has changed over the years:

    Go 1.0, Stop the world mark sweep collector based heavily on tcmalloc.
    Go 1.2, Precise collector, wouldn't mistake big numbers (or big strings of text) for pointers.
    Go 1.3, Fully precise tracking of all stack values.
    Go 1.4, Mark and sweep now parallel, but still stop the world.
    Go 1.5, New GC design, focusing on latency over throughput.
    Go 1.6, GC improvements, handling larger heaps with lower latency.
    Go 1.7, GC improvements, handling larger number of idle goroutines, substantial stack size fluctuation, or large package-level variables.
    Go 1.8, GC improvements, collection pauses should be significantly shorter than they were in Go 1.7, usually under 100 microseconds and often as low as 10 microseconds.
    Go 1.9, Large object allocation performance is significantly improved in applications using large (>50GB) heaps containing many large objects.
    Go 1.10, Many applications should experience significantly lower allocation latency and overall performance overhead when the garbage collector is active.

