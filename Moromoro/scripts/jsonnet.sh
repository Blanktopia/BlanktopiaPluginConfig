#!/bin/sh
find -name '*.jsonnet' -execdir jsonnet {} -m . \;