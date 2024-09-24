#!/usr/bin/env bash
(python ./test/run_test.py ./test/topology.sql ./test/topology-expected) || exit 1
(python ./test/run_test.py ./test/face.sql ./test/face-expected) || exit 1
