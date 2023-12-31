# Pharo-PartialDate
**PartialDate** implementation for [Pharo](http://www.pharo.org) to deal with (yet) incomplete dates

[![Pharo](https://img.shields.io/static/v1?style=for-the-badge&message=Pharo&color=3297d4&logo=Harbor&logoColor=FFFFFF&label=)](https://www.pharo.org) 

[![Build](https://github.com/astares/Pharo-PartialDate/actions/workflows/build.yml/badge.svg)](https://github.com/astares/Pharo-PartialDate/actions/workflows/build.yml)
[![Coverage Status](https://codecov.io/github/astares/Pharo-PartialDate/coverage.svg?branch=main)](https://codecov.io/gh/astares/Pharo-PartialDate/branch/main)

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Pharo 7](https://img.shields.io/badge/Pharo-7.0-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo 8](https://img.shields.io/badge/Pharo-8.0-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo 9](https://img.shields.io/badge/Pharo-9.0-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo 10](https://img.shields.io/badge/Pharo-10-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo 11](https://img.shields.io/badge/Pharo-11-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo 12](https://img.shields.io/badge/Pharo-12-%23aac9ff.svg)](https://pharo.org/download)

# Quick Start

## Installation via Script
```Smalltalk
Metacello new 
	repository: 'github://astares/Pharo-PartialDate:main/src';
	baseline: 'PartialDate';
	load
```

## Screenshot
![alt text](doc/screenshot.png "Screenshot")

# Quick Guide

## Create new instances
To creat a partial date typically you write it in english notion:
```Smalltalk
28th February
```
which will give you an instance of **PartialDate** with 28 as the day and 2 representing February as the month. For a partial date the year is missing.

It is already a partial when you do not even give the month

```Smalltalk
28th 
```

## Convert a partial

You can also convert the partial to a regular **Date** using

```Smalltalk
17th of November in: 2023
```
