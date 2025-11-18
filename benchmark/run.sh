#!/bin/bash
wrk -t4 -c150 -d30s -s srh_raw_mixed.lua http://localhost:8001 &
wrk -t4 -c150 -d30s -s srh_raw_mixed.lua http://localhost:8002 &
wrk -t4 -c150 -d30s -s srh_raw_mixed.lua http://localhost:8003 &
wrk -t4 -c150 -d30s -s srh_raw_mixed.lua http://localhost:8004 &
wrk -t4 -c150 -d30s -s srh_raw_mixed.lua http://localhost:8005 &
wrk -t4 -c150 -d30s -s srh_raw_mixed.lua http://localhost:8006 &
wrk -t4 -c150 -d30s -s srh_raw_mixed.lua http://localhost:8007 &
wrk -t4 -c150 -d30s -s srh_raw_mixed.lua http://localhost:8008 &
wrk -t4 -c150 -d30s -s srh_raw_mixed.lua http://localhost:8009 &
wrk -t4 -c150 -d30s -s srh_raw_mixed.lua http://localhost:8010 &
wrk -t4 -c150 -d30s -s srh_raw_mixed.lua http://localhost:8011 &
wrk -t4 -c150 -d30s -s srh_raw_mixed.lua http://localhost:8012 &
wrk -t4 -c150 -d30s -s srh_raw_mixed.lua http://localhost:8013 &
wrk -t4 -c150 -d30s -s srh_raw_mixed.lua http://localhost:8014 &
wrk -t4 -c150 -d30s -s srh_raw_mixed.lua http://localhost:8015 &
wrk -t4 -c150 -d30s -s srh_raw_mixed.lua http://localhost:8016 &
