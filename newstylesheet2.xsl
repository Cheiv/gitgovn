<?xml version="1.0"?>

<!--
    Document   : newstylesheet2.xsl
    Created on : 30 апреля 2017 г., 0:19
    Author     : ilya_
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>newstylesheet2.xsl</title>
            </head>
            <body>
                <h2>AliExperz Applications</h2>
                <h3>The frequency is more than 10 are red, frequency is less than 10 are green</h3>
                <h4>Sorted by Alpabet</h4>
                <table border="1">
                    <tr bgcolor="#ff4300">
                        <th>Address</th>
                        <th>currency_paying</th>
                        <th>currency_shown</th>
                        <th>language</th>
                        <th>notifications</th>
                        <th>Promotions_and_sales</th>
                        <th>mute_notifications</th>
                        <th>seller_masages</th>
                        <th>order_updates</th>
                        <th>order_massages</th>
                        <th>reminder</th>
                        <th>font</th>
                        <th>theme</th>
                        <th>brightness</th>
                    </tr>
                    <xsl:for-each select="AliExpirs_app_settings/Settings">
                        <xsl:sort select="delivery_address/name"/>
                        <tr>
                            <td><xsl:value-of select="delivery_address/name"/></td>
                            <td><xsl:value-of select="currency/currency_paying"/></td>
                            <td><xsl:value-of select="currency/currency_shown"/></td>
                            <td><xsl:value-of select="language"/></td>
                            <td><xsl:value-of select="notification_settings/notifications"/></td>
                            <td><xsl:value-of select="notification_settings/Promotions_and_sales"/></td>
                            <td><xsl:value-of select="notification_settings/mute_notifications"/></td>
                            <td><xsl:value-of select="notification_settings/seller_masages"/></td>
                            <td><xsl:value-of select="notification_settings/order_updates"/></td>
                            <td><xsl:value-of select="notification_settings/order_massages"/></td>
                                <xsl:choose>
                                    <xsl:when test="notification_settings/reminder_frequency/frequency &gt; 10">
                                        <td bgcolor="#FF0000"><xsl:value-of select="notification_settings/reminder_frequency/frequency"/></td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td bgcolor="#32CD32"><xsl:value-of select="notification_settings/reminder_frequency/frequency"/></td>
                                    </xsl:otherwise>
                                </xsl:choose>
                            <td><xsl:value-of select="Theme_settings/font"/></td>
                            <td><xsl:value-of select="Theme_settings/theme"/></td>
                            <td><xsl:value-of select="Theme_settings/brightness"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
