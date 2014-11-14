<?xml version="1.0" encoding="UTF-8"?>
<!--

    See the NOTICE file distributed with
    this work for additional information regarding copyright ownership.
    con terra GmbH licenses this file to You under the Apache License, Version 2.0
    (the "License"); you may not use this file except in compliance with
    the License. You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

-->
<xsl:stylesheet version="2.0"
                xmlns:gmd="http://www.isotc211.org/2005/gmd"
                xmlns:gco="http://www.isotc211.org/2005/gco"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                 xmlns:sml="http://schemas.opengis.net/sensorML/1.0.1/"
	xmlns:gml="http://schemas.opengis.net/gml/3.1.1/base/gml.xsd"
                exclude-result-prefixes="gmd gco gml sml">

    <!-- parameter handed over by transformer -->
    <xsl:param name="beanDoc"/>
    <!-- remove existing Names -->
    <!-- go through citation and copy nodes -->
    <xsl:template match="/">  
			<xsl:for-each select="$beanDoc/*/Name">
			<gml:name>              
                        <xsl:value-of select="title"/>
                </gml:name>
            </xsl:for-each>

                
    </xsl:template>
</xsl:stylesheet>
