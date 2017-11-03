<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<head>
				<link rel="stylesheet"
					href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
				<script
					src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
				<script
					src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
			</head>
			<body>
				<h2>Students</h2>
				<div class="container">
					<xsl:for-each select="class/student">
						<div class="row">
							<div class="col-sm-4" style="background-color:lavender;">
								
								<img src="{photo}" style="width:200px" />
							</div>
							<div class="col-sm-8" style="background-color:lavenderblush;">
								<table class="table table-striped">
									<tr>
										<td>Roll No</td>
										<td>
											<xsl:value-of select="@rollno" />
										</td>
									</tr>

									<tr>
										<td>First Name</td>
										<td>
											<xsl:value-of select="firstname" />
										</td>
									</tr>
									<tr>
										<td>Last Name</td>
										<td>
											<xsl:value-of select="lastname" />
										</td>
									</tr>
									<tr>
										<td>Nick Name</td>
										<td>
											<xsl:value-of select="nickname" />
										</td>
									</tr>
									<tr>
										<td>Marks</td>
										<td>
											<xsl:value-of select="marks" />
										</td>
									</tr>
								</table>
							</div>
						</div>
					</xsl:for-each>
				</div>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>