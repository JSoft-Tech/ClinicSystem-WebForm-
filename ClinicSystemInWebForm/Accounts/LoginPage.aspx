<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="ClinicSystemInWebForm.Accounts.LoginPage" %>

<asp:Content ID="loginHeader" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="loginContent" ContentPlaceHolderID="DefaultContent" runat="server">

    <div class="container-fluid bg">
        <div class="row justify-content-center ">

            <div class="col-12 col-sm-6 col-md-4">

                <div class="form-container my-auto ">
                    <div class="card" style="border-radius:20px;">
                        <div class=" card-header bg-dark" style="border-top-left-radius:20px; border-top-right-radius:20px;">
                            <h4 class="text-center text-capitalize text-white">Login</h4>
                        </div>
                        <div class="card-body">

                            <div class="col-md-6 col-sm-4 mx-auto">

                                <%--    <i class="fa fa-user-circle fa-5x"></i>--%>
                                <asp:Image ID="LoginImage" runat="server" CssClass="img-fluid" ImageUrl="~/content/loginI.png" />

                            </div>
                            <div class="form-group">
                                <asp:Label ID="LoginEmailLBL" runat="server" Text="Email"></asp:Label>

                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fa fa-envelope"></i></div>
                                    </div>

                                    <asp:TextBox ID="loginEmailTB" runat="server" CssClass="form-control custom-form-control" TextMode="Email" placeholder="enter your email" ToolTip="Enter your account email here"></asp:TextBox>

                                </div>
                                <%--RequiredFieldValidator--%>
                                <asp:RequiredFieldValidator ID="LoginEmailRFV" runat="server" ControlToValidate="loginEmailTB" Font-Size="Small" InitialValue="" ForeColor="Red" ErrorMessage="Username/Email Required*"></asp:RequiredFieldValidator>
                                <%--RegularExpressionValidator--%>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="LoginPasswordLBL" runat="server" Text="Password"></asp:Label>

                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fa fa-lock"></i></div>
                                    </div>

                                    <asp:TextBox ID="LoginPasswordTB" runat="server" CssClass="form-control custom-form-control" TextMode="Password" placeholder="enter your password" ToolTip="Enter your account Password here"></asp:TextBox>
                                </div>
                                <%--RequiredFieldValidator--%>
                                <asp:RequiredFieldValidator ID="loginPasswordRFV" runat="server" ControlToValidate="LoginPasswordTB" Font-Size="Small" ForeColor="Red" ErrorMessage="Password Required*"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-check">
                                <asp:CheckBox ID="LoginCheckBox" runat="server" />
                                <asp:Label ID="LoginCheckBoxLabel" runat="server">Keep me Logged In</asp:Label>
                            </div>
                            <br />
                            <div class="text-center">

                                <asp:Button ID="loginbutton" runat="server" Text="log in" CssClass="btn btn-primary custom-btn" OnClick="loginbutton_Click" />
                            </div>
                            <asp:RegularExpressionValidator ID="LEmailRegularExpValidator" runat="server" ControlToValidate="loginEmailTB"
                                ErrorMessage="Invalid Email Please Re-Enter" ForeColor="Red" Font-Size="Small" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">  
                            </asp:RegularExpressionValidator>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>

</asp:Content>
