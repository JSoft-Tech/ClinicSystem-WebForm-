<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AppointmentIndex.aspx.cs" Inherits="ClinicSystemInWebForm.Appointments.AppointmentIndex" %>

<asp:Content ID="AppointmentIndexHID" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="AppointmentIndexBID" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Appointments </h3>
            </div>

            <div class="card-body">

                <div class="table-responsive">

                <asp:GridView ID="AppointmentDataGrid"  runat="server" Width="100%" CssClass="table table-striped table-bordered " AutoGenerateColumns="false" DataKeyNames="appoinment_ID">                       
                        <Columns>
                            <asp:BoundField DataField="appoinment_ID" HeaderText="Token" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass="" />
                            <asp:BoundField DataField="patient_Name" HeaderText="Patient Name" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                            <asp:BoundField DataField="patient_BirthDate" HeaderText="Date of Birth" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                            <asp:BoundField DataField="patient_Phone" HeaderText="Phone" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />                            
                            <asp:BoundField DataField="" HeaderText="Date Time" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                            <asp:BoundField DataField="doctor_Name" HeaderText="Appointed Doctor" HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                            <asp:BoundField DataField="" HeaderText="Detail"  HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                            <asp:BoundField DataField="appointment_Status" HeaderText="Status"  HeaderStyle-CssClass="thead-dark" ItemStyle-CssClass=""  />
                       
                            <asp:TemplateField>
                                <ItemTemplate>
                                   <asp:LinkButton ID="EditAppointmentLB" runat="server" PostBackUrl="~/Appointments/Edit.aspx" CssClass="btn btn-primary btn-sm"><i class="fa fa-pencil-square"></i>Edit</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                        </Columns>
                        
                    </asp:GridView>

                </div>



                <%--<asp:Table ID="AppointmentTable" runat="server" CssClass="data table table-striped table-responsive-sm  no-margin">                    <asp:TableHeaderRow ID="AppointmentheaderRow" runat="server">
                        <asp:TableCell runat="server" Font-Bold="True" ToolTip="Token/ID for Patient">Token</asp:TableCell>
                        <asp:TableCell runat="server" Font-Bold="True" ToolTip="Name of Patient">Patient Name</asp:TableCell>
                        <asp:TableCell runat="server" Font-Bold="True" ToolTip="Phone of Patient">Phone</asp:TableCell>
                        <asp:TableCell runat="server" Font-Bold="True" ToolTip="Date of Patient Appoinment">Date</asp:TableCell>
                        <asp:TableCell runat="server" Font-Bold="True" ToolTip="Date of Patient Appoinment">Time</asp:TableCell>
                        <asp:TableCell runat="server" Font-Bold="True" ToolTip="Appointed Doctor">Doctor</asp:TableCell>
                        <asp:TableCell runat="server" Font-Bold="True" ToolTip="Detail of Appointment">Detail</asp:TableCell>
                        <asp:TableCell runat="server" Font-Bold="True" ToolTip="Status of Appointment">Status</asp:TableCell>
                        <asp:TableCell runat="server" Font-Bold="True" ToolTip=""></asp:TableCell>

                    </asp:TableHeaderRow>
                    <asp:TableRow ID="AppointmentDateRow" runat="server">

                        <asp:TableCell runat="server" ToolTip="Token/ID for Patient">001</asp:TableCell>
                        <asp:TableCell runat="server" ToolTip="Name of Patient">XYZ Patient</asp:TableCell>
                        <asp:TableCell runat="server" ToolTip="Patient Phone">+92xxxxxxxx</asp:TableCell>
                        <asp:TableCell runat="server" ToolTip="Appointment Date">Mar-17-2020</asp:TableCell>
                        <asp:TableCell runat="server" ToolTip="Appointment Time">1:26</asp:TableCell>
                        <asp:TableCell runat="server" ToolTip="Appointed Doctor">Dr. XYZ</asp:TableCell>
                        <asp:TableCell runat="server" ToolTip="Detail of Appointment">Appoinment Detail</asp:TableCell>
                        <asp:TableCell runat="server" ToolTip="Status of Appointment">


                            <asp:HyperLink ID="AppointmentStatusHyperlinkA" NavigateUrl="#" Style="padding: 3px 10px 3px 10px; background-color: green" CssClass="badge" readonly runat="server">Approved</asp:HyperLink>

                            &nbsp

                            <asp:HyperLink ID="AppointmentStatusHyperlinkP" NavigateUrl="#" Style="padding: 3px 10px 3px 10px; background-color: greenyellow" CssClass="badge" readonly runat="server">Pending</asp:HyperLink>


                        </asp:TableCell>
                        <asp:TableCell runat="server" ToolTip="Edit Appointment">
                            <asp:LinkButton ID="EditAppointmentLB" runat="server" PostBackUrl="~/Appointments/Edit.aspx" CssClass="btn btn-primary btn-sm"><i class="fa fa-folder"></i>Edit</asp:LinkButton>
                        </asp:TableCell>

                    </asp:TableRow>

                </asp:Table>  --%>

            </div>
        </div>

    </div>


</asp:Content>
