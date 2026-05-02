<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:aop="http://www.aopkb.org/aop-xml"
    exclude-result-prefixes="aop">

    <xsl:output method="html" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>AOP Key Event Relationship Report</title>
                <style>
                    body { font-family: sans-serif; line-height: 1.6; color: #333; max-width: 900px; margin: auto; padding: 20px; }
                    h1 { color: #2c3e50; border-bottom: 2px solid #2c3e50; }
                    h2 { color: #2980b9; background: #ecf0f1; padding: 10px; border-radius: 4px; margin-top: 30px; }
                    h3 { color: #7f8c8d; border-left: 4px solid #bdc3c7; padding-left: 10px; }
                    .meta { background: #f9f9f9; padding: 15px; border: 1px solid #ddd; border-radius: 5px; }
                    .section { margin-bottom: 20px; }
                    .label { font-weight: bold; color: #555; }
                    table { width: 100%; border-collapse: collapse; margin: 10px 0; }
                    th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
                    th { background-color: #f2f2f2; }
                    .evidence-high { color: green; font-weight: bold; }
                    .evidence-moderate { color: orange; font-weight: bold; }
                    .evidence-low { color: red; font-weight: bold; }
                </style>
            </head>
            <body>
                <xsl:apply-templates select="aop:key-event-relationship"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="aop:key-event-relationship">
        <h1>Key Event Relationship (KER)</h1>
        
        <div class="meta">
            <p><span class="label">KER UUID:</span> <xsl:value-of select="@id"/></p>
            <p><span class="label">Upstream KE ID:</span> <xsl:value-of select="aop:title/aop:upstream-id"/></p>
            <p><span class="label">Downstream KE ID:</span> <xsl:value-of select="aop:title/aop:downstream-id"/></p>
            <p><span class="label">Last Modified:</span> <xsl:value-of select="aop:last-modification-timestamp"/></p>
        </div>

        <h2>Description</h2>
        <div class="section">
            <xsl:value-of select="aop:description" disable-output-escaping="yes"/>
        </div>

        <h2>Weight of Evidence</h2>
        <div class="section">
            <xsl:value-of select="aop:weight-of-evidence/aop:value" disable-output-escaping="yes"/>
            
            <h3>Biological Plausibility</h3>
            <xsl:value-of select="aop:weight-of-evidence/aop:biological-plausibility" disable-output-escaping="yes"/>
            
            <h3>Empirical Support</h3>
            <xsl:value-of select="aop:weight-of-evidence/aop:emperical-support-linkage" disable-output-escaping="yes"/>
            
            <h3>Uncertainties or Inconsistencies</h3>
            <xsl:value-of select="aop:weight-of-evidence/aop:uncertainties-or-inconsistencies" disable-output-escaping="yes"/>
        </div>

        <h2>Quantitative Understanding</h2>
        <div class="section">
            <xsl:value-of select="aop:quantitative-understanding/aop:description" disable-output-escaping="yes"/>
            <h3>Time Scale</h3>
            <xsl:value-of select="aop:quantitative-understanding/aop:time-scale" disable-output-escaping="yes"/>
        </div>

        <h2>Applicability</h2>
        <table>
            <tr>
                <th>Taxonomy ID</th>
                <th>Evidence Level</th>
            </tr>
            <xsl:for-each select="aop:applicability/aop:taxonomy">
                <tr>
                    <td><xsl:value-of select="@taxonomy-id"/></td>
                    <td>
                        <xsl:attribute name="class">
                            <xsl:text>evidence-</xsl:text><xsl:value-of select="translate(aop:evidence, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz')"/>
                        </xsl:attribute>
                        <xsl:value-of select="aop:evidence"/>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
        <div class="section">
            <xsl:value-of select="aop:evidence-supporting-taxonomic-applicability" disable-output-escaping="yes"/>
        </div>

        <h2>References</h2>
        <div class="section" style="font-size: 0.9em;">
            <xsl:value-of select="aop:references" disable-output-escaping="yes"/>
        </div>
    </xsl:template>

</xsl:stylesheet>