<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="P3.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

  <title>Register Page</title>
<style type="text/css">
    #Text1 {
        width: 297px;
        margin-left: 59px;
        margin-right: 0px;
    }
    #Text2 {
        width: 239px;
        margin-left: 59px;
        margin-right: 0px;
    }
</style>

<script>
    function validateForm() {
        var username = document.getElementById("Text2").value;
        var password1 = document.getElementById("Password1").value;
        var password2 = document.getElementById("Password2").value;
        var email = document.getElementById("Text1").value;

        // Check if the Back to Home Page button was clicked
        if (document.activeElement.id == "Button2") {
            return true; // Skip validation and submit the form
        }

        // Validate the form fields
        if (username == "") {
            alert("Username must be filled out");
            return false;
        }
        if (password1 != password2) {
            alert("Passwords do not match");
            return false;
        }
        if (password1.length < 8) {
            alert("Password must be at least 8 characters long");
            return false;
        }
        if (email) {
            var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            if (!re.test(email.value)) {
                alert("Please enter a valid email ");
                return false;
            }
        }

        return true; // Submit the form
    }
</script>
</head>


    <style>
        body {
            background-color:cornflowerblue;
           
        }
    </style>
<body> <form id="form1" runat="server" onsubmit="return validateForm()">

        &nbsp;<img alt="" class="auto-style1" src="images/Register.png"  height: 294px;" Width="500px" height="250"  />
        </div>
        <p>
            &nbsp;</p>
        <div>
            </div>
        User Name<input id="Text2" type="text" /><p>
&nbsp;Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input id="Password1" min="8" type="password" /></p>
        <p>
&nbsp;Password&nbsp;Confirm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input id="Password2" min="8" type="password" /></p>
        <p>
            Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input id="Text1" type="text" /></p>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Create Account" />
        <asp:Button ID="Button2" runat="server" Text="Back to Home Page" OnClick="Button2_Click" CausesValidation="false" />
    </form>

    <p>
          <a href="AboutUs.aspx">
    <img class="displayed1" src="images/aboutUS.jpg" alt=""
        style="margin-left: 718px; margin-right: 0px; height: 294px;" Width="296px"/></a>&nbsp;</p>
    <p>
        &nbsp;</p>

</body>
</html>
