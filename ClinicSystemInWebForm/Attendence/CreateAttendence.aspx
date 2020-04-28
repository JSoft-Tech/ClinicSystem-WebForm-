<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="CreateAttendence.aspx.cs" Inherits="ClinicSystemInWebForm.Attendence.CreateAttendence" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="CreateAttendenceID" ContentPlaceHolderID="MainContent" runat="server">


<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="card">
            <div class="card-title card-header">
                <h3>Check Up</h3>
            </div>

            <div class="card-body">
                <div class="row" id="patientDetail">

                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="form-group ">
                            <asp:Label ID="RemarksL" runat="server" CssClass="control-label col-sm-3 col-xs-12" >Remarks</asp:Label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:TextBox ID="RemarksTB" runat="server" CssClass="form-control col-md-12 col-xs-12" Columns="7" Rows="4" TextMode="MultiLine" ToolTip="Enter the remarks about Patient"></asp:TextBox>
                            <%--RequiredFieldValidator--%>
                            <asp:RequiredFieldValidator ID="RemarksRFValidator" runat="server" InitialValue="" ControlToValidate="RemarksTB" ErrorMessage="Required"
                                ForeColor="Red" ></asp:RequiredFieldValidator>                          
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="DiagnosisL" runat="server" CssClass="control-label col-sm-3 col-xs-12" >Diagnosis</asp:Label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:TextBox ID="DiagnosisTB" runat="server" CssClass="form-control col-md-12 col-xs-12" Columns="7" Rows="2" TextMode="MultiLine" ToolTip="Enter the Diagnosis of Patient"></asp:TextBox>
                            <%--RequiredFieldValidator--%>
                            <asp:RequiredFieldValidator ID="DiagnosisRFValidator" runat="server" InitialValue="" ControlToValidate="DiagnosisTB" ErrorMessage="Required"
                                ForeColor="Red" ></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <asp:Label ID="PrescriptionL" runat="server" CssClass="control-label col-sm-3 col-xs-12" >Prescription</asp:Label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:TextBox ID="PrescriptionTB" runat="server" CssClass="form-control col-md-12 col-xs-12" Columns="7" Rows="2" TextMode="MultiLine" ToolTip="Enter the prescription for Patient"></asp:TextBox>
                            <%--RequiredFieldValidator--%>
                            <asp:RequiredFieldValidator ID="PrescriptionRFValidator" runat="server" InitialValue="" ControlToValidate="PrescriptionTB" ErrorMessage="Required"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                                
                            </div>
                        </div>
                     

                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-5">
                                <asp:Button ID="SaveAttendence" runat="server"  class="btn btn-success" Text="Save" />
                            </div>
                        </div>
                    </div>
                </div>
                </div>
        </div>
    </div>
</div>



</asp:Content>
