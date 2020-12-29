<%@ Page Language="C#" Inherits="emailSMS.Index" %>

<!DOCTYPE html>

<html>
<head runat="server">
<meta charset=utf8 />
<title>Default</title>
</head>
    
<body style="background-color:#F5F5DC">
	<form id="form1" runat="server">
            <div style="text-align:center"/>
     <div style="width:500px ; height:420px; border:2px solid #CCCCCC ;margin:auto"> Message     
	<table style="width:360px ; height:332px; margin:auto; top:20px">     <tr>     <td style="width:100px">     To:     </td>     <td>     <asp:TextBox id="txtTo" runat="server" Width="256px"></asp:TextBox>     </td>      </tr>     <tr>     <td>     Subject:     </td>     <td>    <asp:TextBox id="txtSub" runat="server" Width="256px"></asp:TextBox>     </td>     </tr>       <tr>     <td>    Body:     </td>     <td>    <asp:TextBox id="txtBody" runat="server" TextMode="MultiLine" Columns="30" Rows="10"></asp:TextBox>     </td>     </tr>                      <tr>      <td>                       </td>                       <td>         <asp:Button id="sendBtn" runat="server" Text="Send" Height="30px" Width="80px" OnClick="button1Clicked"/>         </td>                      </tr>     </table>
           </div>    
	</form>
</body>
</html>
