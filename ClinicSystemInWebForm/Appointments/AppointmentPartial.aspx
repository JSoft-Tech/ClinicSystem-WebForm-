<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AppointmentPartial.aspx.cs" Inherits="ClinicSystemInWebForm.Appointments.AppointmentPartial" %>
<asp:Content ID="AppointmentReportHBID" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="AppointmentReportPBID" ContentPlaceHolderID="MainContent" runat="server">


    <div class="col-md-12">
    <div class="modal-content">
        <div class="modal-header">
 
            <h4 class="card-title ">Appointments</h4>
                       <button type="button" class="close" data-dismiss="modal">
                <i class="fa fa-times" aria-hidden="true" style="color:red"></i>
            </button>
        </div>
        <div class="modal-body">
          
            
            
            
            <asp:Table ID="appointmentsReport" runat="server" CssClass="table table-striped table-bordered dataTable">
                <asp:TableHeaderRow   ID="appointmentsReportHeader" runat="server" Font-Bold="True">

                    <asp:TableCell runat="server">Date</asp:TableCell>
                    <asp:TableCell runat="server">Time</asp:TableCell>
                    <asp:TableCell runat="server">Doctor</asp:TableCell>
                    <asp:TableCell runat="server">Details</asp:TableCell>
                    <asp:TableCell runat="server">Status</asp:TableCell>

                </asp:TableHeaderRow>
                <asp:TableRow ID="appointmentsReportData" runat="server">

                    <asp:TableCell runat="server">Feb 5 2020</asp:TableCell>
                    <asp:TableCell runat="server">12:30</asp:TableCell>
                    <asp:TableCell runat="server">Dr ABC</asp:TableCell>
                    <asp:TableCell runat="server">N/A</asp:TableCell>
                    <asp:TableCell runat="server">

                 
                                    <a href="#" style="padding: 3px 10px 3px 10px; background-color: green" class="badge" readonly>Approved</a>
                     


                                    <a href="#" style="padding: 3px 10px 3px 10px; background-color: greenyellow" class="badge" readonly>Pending</a>


                    </asp:TableCell>

                </asp:TableRow>
            </asp:Table>
            
            
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
    </div>

</div>


</asp:Content>
