#!/bin/bash

sbt 'project chapter2' 'set javaOptions := Seq("-Xms1G")' 'runMain highperfscala.benchmarks.FirstLatencyBenchmark src/main/resources/historical_data 450000'
