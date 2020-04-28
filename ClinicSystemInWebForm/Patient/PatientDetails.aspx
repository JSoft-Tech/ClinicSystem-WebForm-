<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PatientDetails.aspx.cs" Inherits="ClinicSystemInWebForm.Patient.PatientDetails" %>

<asp:Content ID="ContePatientDetailsHID" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="PatientDetailBID" ContentPlaceHolderID="MainContent" runat="server">



<%--    <div id="PatientModal" class="modal fade in">
        <div class="modal-dialog " style="width: 900px;">
            <div class="modal-content">
                <div id="MyModalContent"></div>
            </div>
        </div>
    </div>--%>


    <div class="card-header">
        <div class="title_left">
            <h3>Details</h3>
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">


                    <div class="row">

                        <div class="col-md-4 col-sm-4 col-xs-12 profile_left ">
                            <div class="col-md-10 col-sm-5">
                                <div id="crop-avatar">
                                    <!-- Current avatar -->
                                    <asp:Image ID="PatientProfileImg"  CssClass="img-fluid img-thumbnail"  runat="server" ImageUrl="~/content/profile.png" />
                                </div>
                            </div>
                          
                            <asp:FormView ID="SelectedPatientDetail" runat="server" >
                                  <ItemTemplate>
                                 <ul class="list-unstyled user_data">
                                <h3> <%#Eval("patient_Name")%></h3>
                                <li><i class="fa fa-key"><strong>Token:  </strong>C<%#Eval("patient_ID")%></i></li>
                                <li><i class="fa fa-user"><strong>Sex: </strong><%#Eval("patient_Gender")%> </i></li>
                                <li><i class="fa fa-user"><strong>Date of Birth: </strong> <%#Eval("patient_BirthDate")%> </i></li>
                                <li><i class="fa fa-user"><strong>Height:  </strong> <%#Eval("patient_Height")%>feet </i></li>
                                <li><i class="fa fa-user"><strong>Weight:  </strong> <%#Eval("patient_Weight")%>kg </i></li>
                                <li>
                                    <i class="fa fa-map-marker user-profile-icon"></i><strong>Address:</strong><%#Eval("patient_Address")%> 
                                </li>
                                <li>
                                    <i class="fa fa-phone"></i><strong>Phone:</strong><%#Eval("patient_Phone")%>
                                </li>
                                <li class="m-top-xs">
                                    <i class="fa fa-clock-o"></i><strong>Date :</strong> Mar 07 2020  8:16pm
                                </li>
                            </ul>
                            <asp:LinkButton ID="PatientEditLinkButton" runat="server" CssClass="btn btn-success fa fa-edit m-right-xs"> Edit</asp:LinkButton>
                            <br />
                                  </ItemTemplate>
                             </asp:FormView>

                        </div>

                        <div class="col-md-8 col-sm-8 col-xs-12 ">
                            <div class="row no-gutters ">
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <span class="card card-header">Appointment</span>
                                    <br />

                                    <asp:HyperLink ID="AppointmentPatientID" runat="server" NavigateUrl="~/Appointments/CreateAppointment.aspx">Patient Appointment <i class="fa fa-plus"></i></asp:HyperLink>
                                    <span class="badge badge-danger">1</span>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <span class="card card-header">Attendance </span>
                                    <br />
                                    <asp:HyperLink ID="attendancePatientID" runat="server" NavigateUrl="~/Attendence/CreateAttendence.aspx">Lab Attendance <i class="fa fa-plus"></i></asp:HyperLink>
                                </div>
                            </div>


                        </div>

                    </div>



        </div>
    </div>



</asp:Content>
