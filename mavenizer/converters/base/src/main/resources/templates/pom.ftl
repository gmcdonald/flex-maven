<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!--

  Licensed to the Apache Software Foundation (ASF) under one or more
  contributor license agreements.  See the NOTICE file distributed with
  this work for additional information regarding copyright ownership.
  The ASF licenses this file to You under the Apache License, Version 2.0
  (the "License"); you may not use this file except in compliance with
  the License.  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.

-->
<project xmlns="http://maven.apache.org/POM/4.0.0">
    <modelVersion>4.0.0</modelVersion>

    <groupId>${artifact.groupId}</groupId>
    <artifactId>${artifact.artifactId}</artifactId>
    <version>${artifact.version}</version>
    <packaging>${artifact.packaging}</packaging>

<#if artifact.hasDependencies()>
    <dependencies>
<#list artifact.dependencies as dependency>
        <dependency>
            <groupId>${dependency.groupId}</groupId>
            <artifactId>${dependency.artifactId}</artifactId>
            <version>${dependency.version}</version>
<#if dependency.packaging != "jar">
            <type>${dependency.packaging}</type>
</#if>
        </dependency>
</#list>
    </dependencies>

    <dependencyManagement>
        <dependencies>
<#list artifact.dependencies as dependency>
            <dependency>
                <groupId>${dependency.groupId}</groupId>
                <artifactId>${dependency.artifactId}</artifactId>
                <version>${dependency.version}</version>
            </dependency>
</#list>
        </dependencies>
    </dependencyManagement>
</#if>

</project>
