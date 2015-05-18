#!/bin/sh
bundle exec htmlproof --href-swap ".*pyconuk.org/:/" _site/
