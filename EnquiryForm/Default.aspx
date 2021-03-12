<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Enquiry_Form</title>
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
                        <h3 class="title">Enquiry Form</h3>
                        <asp:Label runat="server" ID="LblMsg" Style="color: red;" ></asp:Label>
                        <form class="form-horizontal" id="form1" runat="server">
                            <div class="form-group">
                                <label>Name*</label>
                                <asp:TextBox runat="server" ID="TxtName" class="form-control" required="" />

                            </div>
                            <div class="form-group">
                                <label>Email ID*</label>
                                <asp:TextBox runat="server" ID="TxtEmail" TextMode="Email" class="form-control" required="" />
                            </div>

                            
                            <div class="form-group phone-no">
                                <label>Mobile No*</label>
                                <asp:TextBox runat="server" ID="TxtMobileno" TextMode="Number" required="" class="form-control" /></td>
                            </div>

                            <div class="form-group">
                                <label>Gender : </label>
                                <asp:RadioButton runat="server"  ID="Rbtn_Male" Text="Male" GroupName="gender" required="" style="padding-left:10px;" /> 
                        <asp:RadioButton runat="server"  ID="Rbtn_Female" Text="Female" GroupName="gender" required="" style="padding-left:10px;" />
                            </div>


                            <div class="form-group age">
                                <label>District*</label>
                                <asp:DropDownList runat="server" ID="DDLDist" class="form-control" required="">
                            <asp:ListItem Value="">----Select District----</asp:ListItem>
                            <asp:ListItem Value="mau">Mau</asp:ListItem>
                            <asp:ListItem Value="lucknow">Lucknow</asp:ListItem>
                            <asp:ListItem Value="sitapur">Sitapur</asp:ListItem>
                            <asp:ListItem Value="barabanki">Barabanki</asp:ListItem>
                        </asp:DropDownList>
                            </div>
                            <br />
                            <div class="form-group age">
                                <label>Enquiry Message*</label>
                                
                                    <asp:TextBox runat="server" ID="TxtEnquiry" TextMode="MultiLine" placeholder="Enter Your Message" required="" class="form-control" style="height: 100px; width: 475px;" />
                                 
                            
                            </div>
                            <asp:Button ID="btn_register" runat="server" Text="Submit" class="btn signin" OnClick="btn_register_Click" />
                            
                            
                        </form>
                        <a href="Display.aspx">Display</a>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</body>
</html>
