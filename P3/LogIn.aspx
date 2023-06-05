<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="P3.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 250px;
            margin-top: inherit;
            min-height: inherit;
            min-width: inherit;
            width: 500px;
        }
    </style>
    <script>
        function validateForm() {
            var username = document.getElementById("TextBox1").value;
            var password1 = document.getElementById("TextBox2").value;
           
            if (document.activeElement.id == "Button2") {
                return true; // Skip validation and submit the form
            }
            
            if (username == "") {
                alert("Username must be filled out");
                return false;
            }
            if (password1.length < 8) {
                alert("Password must be at least 8 characters long");
                return false;
            }
            return true;
        }
    </script>
</head>
    <style>
        body {
            background-color:cornflowerblue;
        }
    </style>

<body>
    <form id="form2" runat="server" onsubmit="return validateForm();">
        


        <div>
<img alt="" class="auto-style1" src="images/Login.png"  height: 294px;" Width="10px" height="10"  /></div>
        User Name<asp:TextBox ID="TextBox1" runat="server" style="margin-left: 65px"></asp:TextBox>
        <p>
            Password&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" style="margin-left: 65px" ></asp:TextBox>
        </p>
        <p>
           <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 449px" Text="LogIn" Width="277px" />
        <asp:Button ID="Button2" runat="server" Text="Back to Home Page" OnClick="Button2_Click" CausesValidation="false" />

        <p>
            &nbsp;</p>
        <p>
            <a href="Register.aspx">don't have account? press here.</a>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
              <a href="AboutUs.aspx">
    <img class="displayed1" src="images/aboutUS.jpg" alt=""
        style="margin-left: 718px; margin-right: 0px; height: 294px;" Width="296px"/>
</a>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>

</body>
</html>
