<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes"/>
<xsl:template match="/">
    <html>
        <head>
            <link rel="stylesheet" href="TravelDiaries.css"></link>
        </head>
            <body>
                <h1>My Travel Diaries</h1>
                <br></br>
                <xsl:for-each select="diaries/diary">
                    <xsl:sort select="entry/@date"/>
                    <h2>
                        <xsl:value-of select="@customer"/>
                    </h2>
                <table border="1">
                    <tr>
                        <th>Date</th>
                        <th>Title</th>
                        <th>Location</th>
                        <th>Description</th>
                        <th>Image</th>
                    </tr>
                        <tr>
                            <td>
                                <xsl:value-of select="entry/@date"/>
                            </td>
                            <td>
                                <xsl:value-of select="entry/title"/>
                            </td>
                            <td>
                                <xsl:value-of select="entry/location"/>
                            </td>
                            <td>
                                <xsl:value-of select="entry/description"/>
                            </td>
                            <td>
                                <xsl:for-each select="entry/images">
                                <div>
                                <img>
                                <xsl:attribute name="src">
                                <xsl:value-of select="image"/>
                                </xsl:attribute>
                                </img>
                                </div>
                                </xsl:for-each>

                            </td>
                        </tr>
                    </table>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

