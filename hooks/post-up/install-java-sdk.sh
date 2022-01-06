#!/bin/bash
# This script adds Java SDKs
# so you can use them for your local development
# @see https://sdkman.io
sdk install java 11.0.13-zulu
sdk default java 11.0.13-zulu

sdk install scala 2.13.7
sdk default scala 2.13.7

sdk install sbt 1.6.1
sdk default sbt 1.6.1
