<?xml version="1.0" ?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fhir="http://hl7.org/fhir">
    <xsl:output indent="yes"/>
    
    <!-- IdentityTransform -->
    <xsl:template match="/ | @* | node()">
        <!--xsl:comment>
             <xsl:value-of select="name()"></xsl:value-of>
             </xsl:comment-->
        
        <xsl:copy>
            <xsl:apply-templates select="@* | node()" />
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="fhir:Observation[fhir:interpretation and not(node()[starts-with(name(),'value')])]">
        <xsl:comment>
            <xsl:value-of select="name()"></xsl:value-of>
        </xsl:comment>
        <xsl:element name="fhir:Observation">
        <xsl:apply-templates mode="inObservation"/>
            
            
        </xsl:element>
        
    </xsl:template>
    <xsl:template match="fhir:performer" mode="inObservation">
    <xsl:copy-of select="."/>
    <xsl:element name="fhir:valueCodeableConcept">
                <xsl:apply-templates select="../fhir:interpretation/*"/>
            </xsl:element>
    </xsl:template>

    <xsl:template match="/ | @* | node()" mode="inObservation">
            <xsl:apply-templates select="." />
    </xsl:template>
</xsl:stylesheet>