<?xml version="1.0" encoding="UTF-8" ?>

<!-- New document created with EditiX at Tue Dec 11 14:13:32 GMT+08:00 2012 -->

<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
    xmlns:xdt="http://www.w3.org/2005/xpath-datatypes"
    xmlns:err="http://www.w3.org/2005/xqt-errors"
    xmlns:ext="http://impl.services.screening.medicaid.gov/"
    exclude-result-prefixes="xs xdt err fn">

    <xsl:output method="xml" indent="yes" omit-xml-declaration="no" encoding="UTF-8"/>
    
    <xsl:template match="/">
                <ns2:NETStudyVerificationResponse xmlns:ns2="http://gov.medicaid.services.enrollment/ValidationService" xmlns="http://gov.medicaid.shared/Entities" xmlns:ns3="http://gov.medicaid.process/EnrollmentProcess">
                    <ns2:Output>
                        <Status>
                            <StatusCode>SUCCESS</StatusCode>
                        </Status>
                        <SearchResults>
                            <xsl:for-each select="//ext:getNETStudyResponseResponse/return">
                            <SearchResultItem>
                                <ColumnData>
                                    <NameValuePair>
                                        <Name>Denied Status</Name>
                                        <Value><xsl:value-of select="denied/text()"></xsl:value-of></Value>
                                    </NameValuePair>
                                </ColumnData>
                            </SearchResultItem>
                            </xsl:for-each>
                        </SearchResults>
                    </ns2:Output>
                    <ns2:RawResponse><xsl:value-of select="//ext:getNETStudyResponseResponse/return/response/text()"></xsl:value-of></ns2:RawResponse>
                </ns2:NETStudyVerificationResponse>
    </xsl:template>
</xsl:stylesheet>