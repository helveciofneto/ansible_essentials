#!/usr/bin/env bash
# @author: Helvecio Neto <helveciofneto@gmail.com>
# @description: This is a sample script to inform non-swap memory usage percentage.
memory_info="$(free | grep -i -E "^Mem:" | tr -s " ")"
total_memory="$(printf "%s" "${memory_info}" | cut -d" " -f 2)"
used_memory="$(printf "%s" "${memory_info}" | cut -d" " -f 3)"
(( memory_usage_pct = "${used_memory}" / ("${total_memory}" / 100)  ))

printf "Memory usage is at %s%%." "${memory_usage_pct}"
