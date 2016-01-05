@echo off
REM The MIT License (MIT)
REM 
REM Copyright (c) 2014 Tushar Joshi
REM 
REM Permission is hereby granted, free of charge, to any person obtaining a copy
REM of this software and associated documentation files (the "Software"), to deal
REM in the Software without restriction, including without limitation the rights
REM to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
REM copies of the Software, and to permit persons to whom the Software is
REM furnished to do so, subject to the following conditions:
REM 
REM The above copyright notice and this permission notice shall be included in all
REM copies or substantial portions of the Software.
REM 
REM THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
REM IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
REM FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
REM AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
REM LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
REM OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
REM SOFTWARE.

REM initclone.bat
REM
REM Cloning initial 10 changesets of the repository

REM ----------------------Configutaion-------------------------------
REM URL for the repo to clone
set REPO_PATH=https://bitbucket.org/draganbjedov/nb-csv-editor
REM Name of the local folder, keep blank for default
set LOCAL_NAME=nb-csv-editor

REM set this variable to true for proxy use
set USE_PROXY=true

REM Used only if USE_PROXY is true
set PROXY_HOST=ngproxy.persistent.co.in
set PROXY_PORT=8080
set PROXY_USER=tushar_joshi
set PROXY_PASS=12qwasZX!@

REM Lines below should work without any changes

if "%USE_PROXY%" EQU "true" (
set PROXY_OPTS=--config http_proxy.host=%PROXY_HOST%:%PROXY_PORT% --config http_proxy.user=%PROXY_USER% --config http_proxy.passwd=%PROXY_PASS%
) else (
set PROXY_OPTS=
)
REM cloning only first 10 changesets
echo Starting the cloning process.
hg --debug --verbose %PROXY_OPTS% clone %REPO_PATH% -r 10 %LOCAL_NAME%
echo Cloning 10 changesets done.
echo on