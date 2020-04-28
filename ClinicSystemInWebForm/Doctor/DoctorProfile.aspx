<%@ Page Title="" Language="C#" MasterPageFile="~/DoctorMaster.Master" AutoEventWireup="true" CodeBehind="DoctorProfile.aspx.cs" Inherits="ClinicSystemInWebForm.Doctor.DoctorProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DoctorMainContent" runat="server">

    
    <div class="row">
    <div class="col-md-12col-sm-12 col-xs-12">
        <div class="card">
            <div class="card-title">
                <h2>Profile </h2>
<%--                <ul class="nav navbar-right panel_toolbox">
                    <li>
                       
                        <a href="@Url.Action("Edit","Doctors", new{id =Model.Doctor.Id})" class="btn-link"><i class="fa fa-edit m-right-xs"></i>Edit</a>
                    </li>
                </ul>--%>
         
            </div>
            <div class="card-body">
                <div class="col-md-4 col-sm-4 col-xs-12 profile_left">
                    <div class="col-md-8 col-sm-5">
                        <div id="crop-avatar">
                            <asp:Image ID="DoctorProfileImg"  CssClass="img-fluid img-thumbnail"  runat="server" ImageUrl="~/content/profile.png" />
                        </div>
                    </div>
                    <h3>Dr Unknown</h3>
                    <ul class="list-unstyled user_data">
                        <li>
                            <i class="fa fa-briefcase user-profile-icon"></i> MBBS
                        </li>
                        <li>
                            <i class="fa fa-map-marker user-profile-icon"></i> ABC Street , XYZ City   
                        </li>
                        <li>
                            <i class="fa fa-phone"></i> 0xxxxxxxxxx
                        </li>
                        <li><i class="fa fa-inbox"></i>Abc@xyz.com</li>

                    </ul>
                    <!-- start skills -->

                         <asp:HyperLink ID="DrPAvailable" style="padding: 3px 10px 3px 10px; background-color:green " class="badge" readonly runat="server">Available</asp:HyperLink>
          
                    
                         <asp:HyperLink ID="HyperLink1" style="padding: 3px 10px 3px 10px; background-color:red " class="badge" readonly runat="server">Closed</asp:HyperLink>
                    
                    <!-- end of skills -->
                </div>
                <div class="col-md-8 col-sm-8 col-xs-12">
                    <div class="" role="tabpanel" data-example-id="togglable-tabs">
                        <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                            <li role="presentation" class="active">
                                <a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Appointments</a>
                            </li>
                        </ul>
                        <div id="myTabContent" class="tab-content">
                            <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
                                <!-- start patient today -->
                                <table id="patients" class="data table table-striped no-margin">
                                    <thead>
                                        <tr>
                                            <th>Token</th>
                                            <th>Name</th>
                                            <th>Phone</th>
                                            <th>Date</th>
                                            <th>Time</th>
                                            <th>Details</th>
                                            <th></th>
                                        </tr>

                                    </thead>
                                    <tbody>
                            <%--            @foreach (var item in Model.Appointments)
                                        {--%>
                                            <tr>
                                                <td>@item.Patient.Token</td>
                                                <td>@item.Patient.Name</td>
                                                <td>@item.Patient.Phone</td>
                                                <td>@item.StartDateTime.ToString("MMM")-@item.StartDateTime.ToString("d ")-@item.StartDateTime.ToString("yyyy")</td>
                                                <td>@item.StartDateTime.ToString("HH:mm")</td>
                                                <td>@item.Detail</td>
                                                <td><a href="@Url.Action("Details","Patients", new { id = item.Patient.Id})" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i>View</a></td>
                                            </tr>
                                  <%--      }--%>
                                    </tbody>
                                </table>

                                <!-- end patient today -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    

</asp:Content>

