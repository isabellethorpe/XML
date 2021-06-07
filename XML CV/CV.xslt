<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="CVs/CV">
		<html>
			<head>
				<link rel="stylesheet" href="CV.css">
				</link>
			</head>
			<body>
				<div class="split left">
					<div class="centered">
						<h2>
							<xsl:value-of select="name" />
						</h2>
						<h3>
							<xsl:value-of select="occupation" />
						</h3>
						<p>
							<xsl:value-of select="profile" />
						</p>
						<h4>
							Experience
                        </h4>
						<xsl:for-each select="experience/employment/job">
							<h5>
								<xsl:value-of select="title" />
							</h5>
							<h6>
								<xsl:value-of select="establishment" />
								<xsl:text> | </xsl:text>
								<xsl:value-of select="from" />
								<xsl:text> - </xsl:text>
								<xsl:value-of select="to" />
							</h6>
							<xsl:for-each select="keyRoles/p">
								<p>
									<xsl:value-of select="." />
								</p>
							</xsl:for-each>
						</xsl:for-each>
					</div>
				</div>
				<div class="split right">
					<div class="centered">
						<h4>
							Qualifications
                        </h4>
						<xsl:for-each select="experience/qualifications">
							<h6>
								<xsl:value-of select="educationalEstablishment" />
								<xsl:text> | </xsl:text>
								<xsl:value-of select="yearFrom" />
								<xsl:text> - </xsl:text>
								<xsl:value-of select="yearTo" />
							</h6>
							<p>
								<xsl:value-of select="Award" />
							</p>
						</xsl:for-each>
						<br>
						</br>
						<h4>
							References
                        </h4>
						<xsl:for-each select="references/reference">
							<h6>
								<xsl:value-of select="referenceEstablishment" />
								<br>
								</br>
							</h6>
							<h6>
								<xsl:value-of select="referenceName" />
							</h6>
						</xsl:for-each>
						<p>
								Contact info available upon request.
							</p>
						<br>
						</br>
						<h4>
							Contact
                        </h4>
						<xsl:for-each select="contact">
							<h5>
								<xsl:value-of select="address" />
								<br>
								</br>
								<br>
								</br>
								<xsl:value-of select="phone" />
								<br>
								</br>
								<br>
								</br>
								<xsl:value-of select="email" />
							</h5>
						</xsl:for-each>
						<br>
						</br>
					</div>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>