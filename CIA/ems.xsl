<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<title>Employee Management System</title>
			</head>
			<body bgcolor="cyan">	
				<font face = "Verdana">
				<h2 style="text-align:center; ">Employee Management System</h2>
		
				<table border="2" align="center">
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Age</th>
						<th>Salary</th>
						<th>Email</th>
						<th>MobNum</th>
						<th>Designation</th>
						<th>Promotion</th>
					</tr>
					<xsl:for-each select="Company/Employee">
						<tr>
							<td>
							<xsl:value-of select="Emp-ID"></xsl:value-of>
							</td>
							<td>
								<xsl:value-of select="Emp-Name"></xsl:value-of>
							</td>
						
							<td>
								<xsl:value-of select="Emp-Age"></xsl:value-of>
							</td>
							<td>
								<xsl:value-of select="Emp-Salary"></xsl:value-of>
							</td>
							<td>
								<xsl:value-of select="Emp-Email_ID"></xsl:value-of>
							</td>
							<td>
								<xsl:value-of select="Emp-PhoneNum"></xsl:value-of>
							</td>
							<td>
								<xsl:value-of select="Emp-Designation"></xsl:value-of>
							</td>
							<td>
								<xsl:choose>
									<xsl:when test="Emp-Age &gt;49">Associate Project Manager</xsl:when>
									<xsl:when test="Emp-Age &gt;39">Team Leader</xsl:when>
									<xsl:otherwise>Developer</xsl:otherwise>
								</xsl:choose>
							</td>
						</tr>
					</xsl:for-each>
				</table>
				</font>
				
				
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>


