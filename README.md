# Citezen
Citezen is a bib parser and tool suite. 


[![Build Status](https://travis-ci.com/Ducasse/Citezen.svg?branch=master)](https://travis-ci.com/Ducasse/Citezen)
[![Coverage Status](https://coveralls.io/repos/github//Ducasse/Citezen/badge.svg?branch=master)](https://coveralls.io/github//Ducasse/Citezen?branch=master)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)]()
[![Pharo version](https://img.shields.io/badge/Pharo-6.1-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo version](https://img.shields.io/badge/Pharo-7.0-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo version](https://img.shields.io/badge/Pharo-8.0-%23aac9ff.svg)](https://pharo.org/download)
<!-- [![Build status](https://ci.appveyor.com/api/projects/status/1wdnjvmlxfbml8qo?svg=true)](https://ci.appveyor.com/project/olekscode/dataframe)  -->


Tests are all green on my machine. No idea why some are failing on travis

## Installing for use

```
$ git clone git@github.com:Ducasse/Citezen.git
$ cd Citezen
$ ./scripts/build.sh
```

## Loading for dev

```
Metacello new
   baseline: 'Citezen';
   repository: 'github://Ducasse/Citezen';
   load.
```

## If you want to depend on it

```
spec 
   baseline: 'Citezen' 
   with: [ spec repository: 'github://Ducasse/Citezen' ].
```

## Example script

You can try this simple script to convert a bib file to HTML:
```Smalltalk
| bibset visitor |
bibset := CZBibParser parse: ('/Users/.../input.bib' asFileReference) contents.
bibset scope: CZSet standardDefinitions.
visitor := CZHTMLGenerator new filename: '/Users/.../output.html'.
visitor visit: bibset.
```
