<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PatientIndex.aspx.cs" Inherits="ClinicSystemInWebForm.Patient.PatientIndex" %>

<asp:Content ID="PatientIndexHID" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="PatientIndexID" ContentPlaceHolderID="MainContent" runat="server">

       <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="card-title">
                <h3>Patients</h3>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="card">
                <div class="card-body">
                      
                <div class="table-responsive-md">
                 

                    <asp:GridView ID="PatientDataGrid" Width="100%" CssClass="table table-striped table-responsive-sm table-bordered table-hover" runat="server"  AutoGenerateColumns="False" DataKeyNames="patient_ID"  OnSelectedIndexChanged="PatientDataGrid_SelectedIndexChanged"  OnRowUpdating="PatientDataGrid_RowUpdating" OnRowDeleting="PatientDataGrid_RowDeleting" OnRowEditing="PatientDataGrid_RowEditing">
                        <Columns>
                            
                            <asp:BoundField DataField="patient_ID" HeaderText="Token ID" ItemStyle-CssClass="" HeaderStyle-CssClass="thead-light" />
                            <asp:BoundField DataField="patient_Name" HeaderText="Patient Name" ItemStyle-CssClass="" HeaderStyle-CssClass="thead-light" />
                            <asp:BoundField DataField="patient_BirthDate" HeaderText="Date of Birth" ItemStyle-CssClass="" HeaderStyle-CssClass="thead-light" />
                            <asp:BoundField DataField="patient_Gender" HeaderText="Gender" ItemStyle-CssClass="" HeaderStyle-CssClass="thead-light" />
                            <asp:BoundField DataField="patient_Phone" HeaderText="Phone" ItemStyle-CssClass="" HeaderStyle-CssClass="thead-light" />
                            <asp:BoundField DataField="patient_Email" HeaderText="Email" ItemStyle-CssClass="" HeaderStyle-CssClass="thead-light" />
                            <asp:BoundField DataField="patient_Address" HeaderText="Address" ItemStyle-CssClass="" HeaderStyle-CssClass="thead-light" />
                             
                            <asp:TemplateField>
                              <HeaderTemplate>
                                    <asp:LinkButton ID="AddNewPatient" runat="server" CssClass="btn btn-primary btn-sm" PostBackUrl="~/Patient/PatientForm.aspx" ><i class="fa fa-edit"></i>Add</asp:LinkButton>
                              </HeaderTemplate>             
                                
                              <%--<ItemTemplate>
                                  

                                  <asp:LinkButton ID="DetailsPatient" runat="server" ToolTip="Patient Detail Info"  ForeColor="black" PostBackUrl="~/Patient/PatientDetails.aspx"  >details<i class="fa fa-eyes" aria-hidden="true"></i></asp:LinkButton>
                                  &nbsp
                                  <asp:LinkButton ID="DeletePatient" runat="server" ToolTip="Delete Patient"  ForeColor="red" PostBackUrl="#" >delete<i class="fa fa-trash" aria-hidden="true"></i></asp:LinkButton>
                              
                              </ItemTemplate>--%>

                            </asp:TemplateField>
                             <asp:CommandField  HeaderText=""  ShowSelectButton="true" SelectText="<i class='fa fa-eye btn-sm rounded-circle rounded-circle ' style='color:black'></i>"  ShowDeleteButton="true" DeleteText="<i class='fa fa-trash btn-sm rounded-circle' style='color:red'></i>" />
                          


                             
                             
                        </Columns>
                    </asp:GridView>
                </div>

                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

    <%--               
                    <asp:Table ID="PatientDataTable" runat="server" CssClass="data table table-striped table-responsive-sm no-margin">
                        <asp:TableHeaderRow ID="PatientheaderRow" runat="server">

                            <asp:TableCell runat="server" Font-Bold="True" ToolTip="Token/ID of Patient">Token ID</asp:TableCell>
                            <asp:TableCell runat="server" Font-Bold="True" ToolTip="Name of Patient">Name</asp:TableCell>
                            <asp:TableCell runat="server" Font-Bold="True" ToolTip="Phone Number of Patient">Phone</asp:TableCell>
                            <asp:TableCell runat="server" Font-Bold="True" ToolTip="Address of Patient">Address</asp:TableCell>
                            <asp:TableCell runat="server" Font-Bold="True" ToolTip="City of Patient">City</asp:TableCell>
                            <asp:TableCell runat="server" Font-Bold="True" ToolTip="Add New Patient ">
                            <asp:LinkButton ID="AddNewPatient" runat="server" CssClass="btn btn-primary btn-sm" PostBackUrl="~/Patient/PatientForm.aspx"><i class="fa fa-edit"></i>Add</asp:LinkButton>

                            </asp:TableCell>
                        </asp:TableHeaderRow>
                        <asp:TableRow ID="PatientDateRows" runat="server">

                            <asp:TableCell runat="server" ToolTip="Token/ID of Patient">P0001</asp:TableCell>
                            <asp:TableCell runat="server" ToolTip="Name of Patient">Dummy Name</asp:TableCell>
                            <asp:TableCell runat="server" ToolTip="Phone Number of Patient">0000-0000000</asp:TableCell>
                            <asp:TableCell runat="server" ToolTip="Address of Patient">Dummy Address</asp:TableCell>
                            <asp:TableCell runat="server" ToolTip="City of Patient">City</asp:TableCell>
                            <asp:TableCell runat="server" Font-Bold="True" ToolTip="PatientControls">

                            <asp:LinkButton ID="DetailsPatient" runat="server" ToolTip="Patient Detail Info"  ForeColor="black" PostBackUrl="~/Patient/PatientDetails.aspx"><i class="fa fa-info"></i></asp:LinkButton>
                             &nbsp
                            <asp:LinkButton ID="DeletePatient" runat="server" ToolTip="Delete Patient"  ForeColor="red" PostBackUrl="#"><i class="fa fa-trash" aria-hidden="true"></i></asp:LinkButton>


                            </asp:TableCell>

                        </asp:TableRow>
                  </asp:Table>--%>


                </div>
            </div>
        </div>
    </div>


</asp:Content>
