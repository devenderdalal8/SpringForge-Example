@echo off
@rem ----------------------------------------------------------------------------
@rem Licensed to the Apache Software Foundation (ASF) under one
@rem or more contributor license agreements.  See the NOTICE file
@rem distributed with this work for additional information
@rem regarding copyright ownership.  The ASF licenses this file
@rem to you under the Apache License, Version 2.0 (the
@rem "License"); you may not use this file except in compliance
@rem with the License.  You may obtain a copy of the License at
@rem
@rem    https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing,
@rem software distributed under the License is distributed on an
@rem "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
@rem KIND, either express or implied.  See the License for the
@rem specific language governing permissions and limitations
@rem under the License.
@rem ----------------------------------------------------------------------------

setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set BASEDIR=%DIRNAME%

if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% equ 0 goto execute

echo Error: JAVA_HOME not found in your environment. 1>&2
echo Please set the JAVA_HOME variable in your environment to match the 1>&2
echo location of your Java installation. 1>&2
exit /b 1

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%\bin\java.exe

if exist "%JAVA_EXE%" goto execute

echo Error: JAVA_HOME is set to an invalid directory. 1>&2
echo Please set the JAVA_HOME variable in your environment to match the 1>&2
echo location of your Java installation. 1>&2
exit /b 1

:execute
set WRAPPER_JAR="%BASEDIR%\.mvn\wrapper\maven-wrapper.jar"
if exist %WRAPPER_JAR% goto run

echo Error: Could not find %WRAPPER_JAR% 1>&2
exit /b 1

:run
"%JAVA_EXE%" %MAVEN_OPTS% "-Dmaven.multiModuleProjectDirectory=%BASEDIR%" -classpath %WRAPPER_JAR% org.apache.maven.wrapper.MavenWrapperMain %*
