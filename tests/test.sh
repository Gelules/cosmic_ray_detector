#!/bin/sh

date | tee date.log
echo >> date.log
./cosmic_ray_detector
date | tee -a date.log
