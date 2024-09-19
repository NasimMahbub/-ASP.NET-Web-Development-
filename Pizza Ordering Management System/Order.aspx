<%@ Page Title="" Language="C#" MasterPageFile="~/Homee.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Member_Order" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        body {
            /* Safari 4-5, Chrome 1-9 */
            background: -webkit-gradient(radial, center center, 0, center center, 460, from(#789ad6), to(#3c4d6b));
            /* Safari 5.1+, Chrome 10+ */
            background: -webkit-radial-gradient(circle, #789ad6, #3c4d6b);
            /* Firefox 3.6+ */
            background: -moz-radial-gradient(circle, #1a82f7, #2F2727);
            /* IE 10 */
            background: -ms-radial-gradient(circle, #1a82f7, #2F2727);
            height: 600px;
        }

        .centered-form {
            margin-top: 10%;
        }

            .centered-form .panel {
                background: rgba(255, 255, 255, 0.8);
                box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
            }

        label.label-floatlabel {
            font-weight: bold;
            color: #46b8da;
            font-size: 11px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container" style="" >
    </div>
    <div class="row centered-form">
        <div class="col-lg-8 col-sm-8 col-md-2 col-sm-offset-2 col-md-offset-2">
            <div class="panel panel-default" style="height:400px;">
                <div class="panel-heading">
                    <h1 class="panel-title" style="font-size:larger;background-color:black">Order now!</h1>
                </div>
                <div class="panel-body" style="padding:20px">
                    <asp:ValidationSummary ID="vsRegister" runat="server" CssClass="alert alert-danger" ShowSummary="true" ValidationGroup="vgRegister" />
                    <div id="divMessage" runat="server" />
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblBus" style="color:black;" runat="server" Text="Name" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtName" runat="server" class="form-control input-sm floatlabel"/>
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName" Display="None" ID="rfvFirstName" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Name is required." /><br />
                        </div>
                       <div class="form-group">
                            <asp:Label ID="lblSeatRow" style="color:black;" runat="server" Text="Address" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtAddress" runat="server" class="form-control input-sm floatlabel" />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAddress" Display="None" ID="rfVMobileNo" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Address is required." /><br />
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label1" style="color:black;" runat="server" Text="Phone Number" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtPhone" runat="server" class="form-control input-sm floatlabel" />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPhone" Display="None" ID="RequiredFieldValidator1" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Phone number is Required" /><br />
                        </div>
                          <div class="form-group">
                            <asp:Label ID="Label3" style="color:black;" runat="server" Text="Email" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtEmail" runat="server" class="form-control input-sm floatlabel" />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail" Display="None" ID="RequiredFieldValidator3" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Email is Required" /><br />
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lbTraveltype" style="color:black;" runat="server" Text="Size" Font-Bold="true"></asp:Label>
                             <asp:DropDownList ID="txtSize" runat="server" class="form-control input-sm floatlabel">
                                 <asp:ListItem Value="0" Text="Select Size"></asp:ListItem>
                                 <asp:ListItem Value="1" Text="">Small size</asp:ListItem>
                                  <asp:ListItem Value="2" Text="Large size"></asp:ListItem>
                             </asp:DropDownList>
                            <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="txtTravletype" Display="None" ID="rfVLastName" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Travel type is required." /><br />--%>
                        </div>
                        
                        <div class="form-group">
                            <asp:Label ID="lblPassword" style="color:black;" runat="server" Text="Pizza name" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtPizzaname" runat="server" class="form-control input-sm floatlabel"  />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPizzaname" Display="None" ID="rfvPassword" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Pizza name is Required" /><br />
                        </div>
                                 <div class="form-group">
                            <asp:Label ID="Label4" style="color:black;" runat="server" Text="Total amount" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtTotalamount" runat="server" class="form-control input-sm floatlabel"  />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTotalamount" Display="None" ID="RequiredFieldValidator4" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Total amount is Required" /><br />
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label2" style="color:black;" runat="server"   Text="Date" Font-Bold="true"></asp:Label>
                            <asp:TextBox ID="txtDate" runat="server" class="form-control input-sm floatlabel" />
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDate" Display="None" ID="RequiredFieldValidator2" ValidationGroup="vgRegister"
                                    CssClass="text-danger" ErrorMessage="Date is Required" /><br />
                        </div>
                       
                    </div>
                   <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Button ID="btnSave" runat="server" style="width:150px;margin-top:30px; background-color:brown;font-size:larger" Text="Order Now" OnClick="btnSave_Click" class="btn btn-info " ValidationGroup="vgRegister"  CausesValidation="True" ViewStateMode="Inherit" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>