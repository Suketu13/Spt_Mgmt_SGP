<%@ Page Title="" Language="C#" MasterPageFile="~/Sport.Master" AutoEventWireup="true" CodeBehind="FortniteDetails.aspx.cs" Inherits="temperory.FortniteDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
     <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body" runat="server">
                  <h4 class="card-title">Info Of Fortnite</h4>
                 <%-- <p class="card-description">
                    Basic form elements
                  </p>--%>
                    <div class="form-group">
                      <label for="exampleInputName1">Name</label>
                        <asp:TextBox ID="txtName" CssClass="form-control" runat="server" placeholder="Name"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">Email address</label>
                       <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" placeholder="Email"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Gender</label>
                        <asp:RadioButtonList runat="server" ID="rblGender" RepeatColumns="2">
                            <asp:ListItem  Selected="True" Text="Male" Value="1"></asp:ListItem>
                            <asp:ListItem Text="FeMale" Value="2"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div class="form-group">
                        <label>Photo upload</label>
                         <asp:TextBox ID="txtphoto" runat="server" CssClass="form-control"></asp:TextBox>
                        <div class="input-group col-xs-12">
                            <input type="file" class="form-control file-upload-info" placeholder="Upload Image">
                            <span class="input-group-append">
                                <button class="file-upload-browse btn btn-primary" type="button">Upload</button>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputCity1">City</label>
                         <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" placeholder="Location" ></asp:TextBox>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary mr-2" OnClick="btnSubmit_Click"/>
 <asp:Button ID="btnReset"  runat="server" Text="Reset" CssClass="btn btn-danger mr-2" OnClick="btnReset_Click"/>
                </div>
              </div>
            </div>
</asp:Content>
