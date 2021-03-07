<%
	Sub SendMail( Subject )
	Set objMail = Server.CreateObject("CDO.Message")
 
	 For each sRequest in Request.Form
	  Select Case sRequest
	   Case "e_mail"
	    objMail.From=request(sRequest) & chr(13)
	   Case else
	    sBody=sBody & sRequest & " - " & request(sRequest) & chr(13)
	  End select
	 Next
	 
	 objMail.TextBody=sBody
	 objMail.To="wolseyorchestra@outlook.com;jon.armitage@talk21.com"
	 objMail.Subject=Subject
	 objMail.Send

	 set objMail = nothing
 End Sub 
%>

