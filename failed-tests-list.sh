#!/bin/bash
logs=$(find build/ -name "*.log")
grep -E '\[FAIL\]' -l $logs
