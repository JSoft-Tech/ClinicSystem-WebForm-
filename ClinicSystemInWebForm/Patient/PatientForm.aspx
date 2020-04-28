<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PatientForm.aspx.cs" Inherits="ClinicSystemInWebForm.Patient.PatientForm" %>

<asp:Content ID="PatientFormHID" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="PatientFormBID" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row justify-content-center">

        <div class="col col-md-12 col-xs-12 bg-light ">

            <div class="card">

                <div class="card-header ">
                    <span class="section">Add Patient</span>
                </div>
                <div class="card-body text-center ml-4">

                    <div class="form-inline">
                        <asp:Label ID="PatientName" runat="server" Text="Name" CssClass="col-md-2 col-sm-2 col-xs-12">Name</asp:Label>
                        <asp:TextBox CssClass="form-control col-md-6 col-sm-6 col-xs-12" ID="Patient_NameTB" runat="server"></asp:TextBox>
                                                          <%--RequiredFieldValidator--%>
                            <asp:RequiredFieldValidator ID="Patient_NameTBRFValidator" runat="server" InitialValue="" ControlToValidate="Patient_NameTB" ErrorMessage="Required"
                                ForeColor="Red" ></asp:RequiredFieldValidator>  

                    </div>
                    <br />
                    <div class="form-inline">
                        <asp:Label ID="PatientGender" runat="server" Text="Gender" CssClass="control-label col-md-2 col-sm-2 col-xs-12">Gender</asp:Label>
                        <asp:DropDownList ID="GenderDropDownList" runat="server" CssClass="form-control col-md-5 col-sm-6 col-xs-12 ml-4">
                             <asp:ListItem Selected="True">Select Gender</asp:ListItem>
                            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                         
                        </asp:DropDownList>
                                      <%--RequiredFieldValidator--%>
                            <asp:RequiredFieldValidator ID="GenderDropDownListRFV" runat="server" InitialValue="Select Gender" ControlToValidate="GenderDropDownList" ErrorMessage="Required"
                                ForeColor="Red" ></asp:RequiredFieldValidator>  
                    </div>
                    <br />
                    <div class="form-inline">
                        <asp:Label ID="PatientBirth" runat="server" Text="Date of Birth" CssClass="control-label col-md-2 col-sm-2 col-xs-12">Date of Birth</asp:Label>
                        <asp:TextBox CssClass="form-control col-md-6 col-sm-6 col-xs-12" ID="PatientBirthTB" runat="server" TextMode="Date"></asp:TextBox>
                                      <%--RequiredFieldValidator--%>
                            <asp:RequiredFieldValidator ID="BirthTextBoxRFV" runat="server" InitialValue="" ControlToValidate="PatientBirthTB" ErrorMessage="Required"
                                ForeColor="Red" ></asp:RequiredFieldValidator>  
                    </div>
                    <br />
                    <div class="form-inline">
                        <asp:Label ID="PatientHieght" runat="server" Text="Height" CssClass="control-label col-md-2 col-sm-2 col-xs-12">Height</asp:Label>
                        <asp:TextBox CssClass="form-control col-md-6 col-sm-6 col-xs-12" ID="Patient_Height" runat="server" TextMode="Number"></asp:TextBox>
                                      <%--RequiredFieldValidator--%>
                            <asp:RequiredFieldValidator ID="Patient_HeightRFV" runat="server" InitialValue="" ControlToValidate="Patient_Height" ErrorMessage="Required"
                                ForeColor="Red" ></asp:RequiredFieldValidator>  
                    </div>
                    <br />
                    <div class="form-inline">
                        <asp:Label ID="Label1" runat="server" Text="Weight" CssClass="control-label col-md-2 col-sm-2 col-xs-12">Weight</asp:Label>
                        <asp:TextBox CssClass="form-control col-md-6 col-sm-6 col-xs-12" ID="Patient_Weight" runat="server" TextMode="Number"></asp:TextBox>
                                     <%--RequiredFieldValidator--%>
                            <asp:RequiredFieldValidator ID="Patient_WeightRFV" runat="server" InitialValue="" ControlToValidate="Patient_Weight" ErrorMessage="Required"
                                ForeColor="Red" ></asp:RequiredFieldValidator>  
                        
                    </div>
                    <br />
                    <div class=" form-inline">
                        <asp:Label ID="PatientPhone" runat="server" Text="Phone" CssClass="control-label col-md-2 col-sm-2 col-xs-12">Phone</asp:Label>
                        <asp:TextBox CssClass="form-control col-md-6 col-sm-6 col-xs-12" ID="Patient_Phone" runat="server" TextMode="Phone"></asp:TextBox>
                                     <%--RequiredFieldValidator--%>
                            <asp:RequiredFieldValidator ID="Patient_PhoneRFValidator" runat="server" InitialValue="" ControlToValidate="Patient_Phone" ErrorMessage="Required"
                                ForeColor="Red" ></asp:RequiredFieldValidator>  
                        
                    </div>
                    <br />
                    <div class="form-inline">
                        <asp:Label ID="PatientEmailAddress" runat="server" Text="Email" CssClass="control-label col-md-2 col-sm-2 col-xs-12">Email</asp:Label>
                        <asp:TextBox CssClass="form-control col-md-6 col-sm-6 col-xs-12" ID="Patient_EAddressTB" runat="server" TextMode="Email"></asp:TextBox>
                                      <%--RequiredFieldValidator--%>
                            <asp:RequiredFieldValidator ID="Patient_EAddressRFValidator" runat="server" InitialValue="" ControlToValidate="Patient_EAddressTB" ErrorMessage="Required"
                                ForeColor="Red" ></asp:RequiredFieldValidator>  
                    </div>
                    <br />
                    <div class="form-inline">
                        <asp:Label ID="PatientAddress" runat="server" Text="Adress" CssClass="control-label col-md-2 col-sm-2 col-xs-12">Address</asp:Label>
                        <asp:TextBox CssClass="form-control col-md-6 col-sm-6 col-xs-12"  ID="PatientAddressTB" runat="server" > </asp:TextBox>
                              <%--RequiredFieldValidator--%>
                            <asp:RequiredFieldValidator ID="PatientAddressTBRFV" runat="server" InitialValue="" ControlToValidate="PatientAddressTB" ErrorMessage="Required"
                                ForeColor="Red" ></asp:RequiredFieldValidator>  
                 
                    </div>
                    <br />
                    <div class="form-group ml--4">
                        <asp:Button ID="PatientSavebtn" CssClass="btn btn-success col-md-4 col-sm-4 col-xs-12 col-md-offset-4" runat="server" Text="Save" OnClick="PatientSavebtn_Click" />
                    </div>
                    <asp:RangeValidator ID="RangeValidatorHeight" runat="server" ControlToValidate="Patient_Height" ErrorMessage="Invaid Height.it should be number and exact" Type="Double" MinimumValue="0.0"></asp:RangeValidator>
                    <asp:RangeValidator ID="RangeValidatorWeight" runat="server" ControlToValidate="Patient_Weight" ErrorMessage="Invaid Weight.it should be number and exact" Type="Double" MinimumValue="0.0"></asp:RangeValidator>
                </div>
            </div>

        </div>

    </div>

</asp:Content>
