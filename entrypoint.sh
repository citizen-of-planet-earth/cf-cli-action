#!/bin/sh -l

cf api "$CF_API"
cf auth "$CF_USERNAME" "$CF_PASSWORD"

if [ -n "$CF_ORG" ] && [ -n "$CF_SPACE" ]; then
  cf target -o "$CF_ORG" -s "$CF_SPACE"
fi

sh -c "cf $*"