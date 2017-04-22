#!/bin/bash

env JAVA_OPTS="-XX:+UnlockCommercialFeatures -XX:+FlightRecorder -XX:+UnlockDiagnosticVMOptions -XX:+DebugNonSafepoints -XX:FlightRecorderOptions=defaultrecording=true,dumponexit=true,dumponexitpath=profiles/order-book.jfr" sbt "project chapter2" "runMain highperfscala.benchmarks.ThroughputBenchmark src/main/resources/historical_data 200000"
