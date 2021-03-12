<%@ Page Language="C#" AutoEventWireup="true" CodeFile="edit.aspx.cs" Inherits="edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

    <link href="css/style.css" rel="stylesheet" type="text/css" />

</head>
<body style="background-image: url('images/e1.jpg');">

    <div class="form-bg">
        <div class="container">
            <div class="row">
                <div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8">
                    <div class="form-container">
                        <h3 class="title">Send Response To Enquiry</h3>
                        <asp:Label runat="server" ID="LblMsg" Style="color: red;" ></asp:Label>
                        <form class="form-horizontal" id="form1" runat="server">
                            <asp:HiddenField runat="server" ID="hid" />
                            <div class="form-group age">
                                <label>Response*</label>
                                
                                    <asp:TextBox runat="server" ID="TxtResponse" TextMode="MultiLine" placeholder="Enter Your Response" required="" class="form-control" style="height: 100px; width: 475px;" />
                                 
                            
                            </div>
                            <asp:Button ID="btn_update" runat="server" Text="Update" class="btn signin" OnClick="btn_register_Click" />
                            

                        </form>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</body>
</html>