#! /usr/bin/bash

brightnessctl | grep -Po '\d+(?=%)'
