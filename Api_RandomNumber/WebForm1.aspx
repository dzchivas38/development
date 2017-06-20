<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Api_RandomNumber.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    tesst
    </div>
    </form>
</body>
 <script>
     $(document).ready(function () {
         test();
     });
     function test() {
         $.ajax({
             type: "GET",
             contentType: "application/json; charset=utf-8",
             url: "/test.asmx/getAll",
             dataType: "json",
             data: "{}",
             success: function (result) {
                 console.log(result.d);
             },
             error: function (result) {
             alert(result.message);
         }
         });
     }
 </script>
</html>
