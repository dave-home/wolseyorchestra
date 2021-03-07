<html>
<head>
<title>Feedback</title>

    <link type="text/css" rel="stylesheet" href="inc/3col.css">
    <link type="text/css" rel="stylesheet" href="inc/wolsey.css">
    <meta http-equiv="content-type" content="text/html; charset=iso-8859-1">

    <meta name="description" content="The Wolsey Orchestra is one of East Anglia's finest amateur orchestras">
    <meta name="keywords" content="Wolsey,Music,Classical,Orchestra,Concert,Ipswich,Suffolk,East Anglia">



<!-- #include file="inc/mail.inc" -->

</head>

<body>

<div id="header">
    <img src="images/static/wolsey_banner.gif"/>
    <!--  Navigation -->
    <div id="navigation">
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="acknowledgements.html">Acknowledgements</a></li>
            <li><a href="friends.html">Friends</a></li>
            <li><a href="orchestra.html">About Us</a></li>
            <li><a href="reviews.html">Reviews</a></li>
            <li><a href="members.html">Members</a></li>
            <li><a href="contact.asp">Contact Us</a></li>
        </ul>
    </div>
    <!-- End Navigation -->
</div>



 <%
If request("Button")="Send" then
		call SendMail("Wolsey Orchestra Site Mail")
%>

		<TABLE align="center">
			<TR><TD>
            <p>Thank you for your feedback.  Your comments are appreciated.</p>

<FORM action="contact.asp" method="POST" name="CDOMail">

<TABLE border="0"  cellpadding="2" align="center" width="714">
	<TR>
		<TD height="95" width="706">
<hr align="center" width="100%" noshade><div align="center">
                                <p>&nbsp;</p>
                            </div>
<hr align="center" width="100%" noshade>		</TD>
	</TR>
</TABLE>
</FORM>

<% else %>

<FORM action="contact.asp" method="POST" name="CDOMail">

<TABLE border="0"  cellpadding="2" align="center" width="714">
	<TR>
		<TD colspan="2" width="706">
                <p align="center">Use this form to  contact the Wolsey Orchestra.</p>
		<p align="center">Please note that the e-mail field is mandatory.</p>
			<br>
		</TD>
	</TR>
	<TR>
		<TD width="173">
			Your Name
		</TD>
		<TD width="527" class="Feedback">
			<font size="2" face="Arial"><INPUT TYPE="TEXT" NAME="subject" SIZE="60"></font>
		</TD>
	</TR>
	<TR>
		<TD  valign="top" width="173">
			Your message
		</TD>
		<TD width="527" class="Feedback">
			<font size="2" face="Arial"><TEXTAREA NAME="feedback" cols="63" rows=10></TEXTAREA></font>
		</TD>
	</TR>
	<TR>
		<TD width="173">
			Your e-mail address
		</TD>
		<TD width="527" class="Feedback">
			<INPUT TYPE="TEXT" NAME="e_mail" SIZE="60">
		</TD>
	</TR>
	<TR>
		<TD colspan="2" height="93" width="706">
		<TABLE align="CENTER">
			<TR height="45">
				<TD>
					<INPUT TYPE="SUBMIT" NAME="Button" VALUE="Send" onClick="javascript: return validateForm();">
				</TD>
				<TD>
					<INPUT TYPE="RESET">
				</TD>
			</TR>
		</TABLE>
		</TD>
	</TR>		
</TABLE>
</FORM>
<% end if %>



<div id="footer">
    Copyright (c) 2010 Wolsey Orchestra. All rights reserved
</div>


</body>


</html>
