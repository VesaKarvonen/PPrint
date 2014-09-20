#!/bin/bash

set -x
set -e

nuget restore PPrint.sln

xbuild /p:Configuration=Debug
mono Tests/Examples/bin/Debug/Examples.exe

xbuild /p:Configuration=Release
mono Tests/Examples/bin/Release/Examples.exe
