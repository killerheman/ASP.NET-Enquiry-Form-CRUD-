<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Display.aspx.cs" Inherits="Display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Display</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

    <link href="css/style.css" rel="stylesheet" />
    <script src="jquery-3.5.1.min.js"></script>
    <script>
        function del(p) {
            var id = $(p).next().text();
            //alert(id);
            var status = confirm("Do you want to delete this record ?");
            if (status == true) {
                window.location.href = 'Display.aspx?empid=' + id;
            }
        }
    </script>


</head>
<body>

    <div class="container">
        <h1 align="center" style="color: #0CD674;">Display Enquiry </h1>
        <div class="row">
            <div class="col-md-12">
                <div class="panel">
                    <div class="panel-heading">
                        <div class="col-xs-4 text-right">
                            <a href="/" class="btn btn-sm btn-primary"> Back</a>
                        </div>
                    </div>
                    <div class="panel-body table-responsive">
                        <table class="table table-hover">

                            <form id="form1" runat="server">
                                <div>
                                    
                                    <asp:Label ID="DataView" runat="server"></asp:Label>
                                </div>
                            </form>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

</body>
</html>
