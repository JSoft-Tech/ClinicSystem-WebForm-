<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AppointmentReport.aspx.cs" Inherits="ClinicSystemInWebForm.Reports.AppointmentReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="AppointmentR" ContentPlaceHolderID="MainContent" runat="server">



    <span class="card card-header">Appointments</span>
    
<div class="row justify-content-around">
  
            <div class="col-md-5 col-sm-5">
                <label>Select</label><br />
                <select name="option" class="form-control">
                    <option value="">--Select one--</option>
                    <option value="ThisMonth">This Month </option>
                    <option value="Pending">Pending </option>
                    <option value="Approved">Approved </option>
                </select>
            </div>

<%--    <div class="col-md-1 col-sm-1"></div>--%>

            <div class="col-md-5 col-sm-5">
               <div class="form-group" >
               <asp:Label ID="DocReportL" runat="server" Text="Doctor" ToolTip="Doctor Name">Doctor</asp:Label>
               <asp:TextBox ID="DocReportTB" CssClass="form-control" ToolTip="Enter Doctor Name"  runat="server"></asp:TextBox>
               </div>
               <div class="form-group" >
               <input type="button" class="btn btn-primary" value="Submit" id="submit" />
                <input type="button" class="btn btn-default" id="showAll" value="Show All" />
               </div>

            </div>
    
</div>

<div class="row">
    <div class="col-md-12">
        <div class="x_panel">
            <div id="renderTable" class="x_content">
               
                <%--Appointment Partial--%>
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

                <%--Appoinment Partial--%>
            </div>
        </div>
    </div>
</div>



</asp:Content>
