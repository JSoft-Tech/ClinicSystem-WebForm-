<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AttendenceR.aspx.cs" Inherits="ClinicSystemInWebForm.Reports.AttendenceR" %>
<asp:Content ID="AttendenceRepHID" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="AttendenceRepID" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
    <div class="col-md-12">

        <!-- form date pickers -->
        <div class="card" style="">
            <div class="card-body">
                <div class="well" style="overflow: auto">
                    <div class="col-md-6">
                        <div id="">
                            <label>Enter Patient Token: </label>
                            <input type="text" name="token" />
                            <input type="button" class="btn btn-primary btn-sm" value="Ok" id="submit" />
                        </div>

                    </div>
                
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="x_panel card ">
            <div id="renderTable" class="x_content card-body ">
                <%--Attendence Modal--%>

                <div class="col-md-12">
    <div class="modal-content">
        <div class="modal-header">
            <h4 class="x_title">Attandences</h4>
               <button type="button" class="close" data-dismiss="modal">
                <i class="fa fa-times" aria-hidden="true" style="color:red"></i>
            </button>
        </div>

        <div class="modal-body">

            <asp:Table ID="AttendenceReport" runat="server" CssClass="table table-striped table-bordered dataTable">
                <asp:TableHeaderRow   ID="AttendenceReportHeaderR" runat="server" Font-Bold="True">

                    <asp:TableCell runat="server">Remarks</asp:TableCell>
                    <asp:TableCell runat="server">Diagnosis</asp:TableCell>
                    <asp:TableCell runat="server">Prescription</asp:TableCell>
                    <asp:TableCell runat="server">Date</asp:TableCell>

                </asp:TableHeaderRow>
                <asp:TableRow ID="AttendenceReportData" runat="server">

                    <asp:TableCell runat="server">Abc Remarks </asp:TableCell>
                    <asp:TableCell runat="server">Abc Diagnosis</asp:TableCell>
                    <asp:TableCell runat="server">Prescription details ABC</asp:TableCell>
                    <asp:TableCell runat="server">Feb 13 2020</asp:TableCell>

                </asp:TableRow>
            </asp:Table>



        </div>>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>

    </div>
</div>

                 <%--Attendence Modal--%>

            </div>
        </div>
    </div>
</div>



</asp:Content>
