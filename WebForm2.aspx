<%@ Page Title="" Language="C#" MasterPageFile="~/Sport.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="temperory.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="col-12 grid-margin">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Basic form elements</h4>
               <%-- <p class="card-description">
                    Basic form elements
               
                </p>--%>
              <%--  <form class="forms-sample">--%>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th class="ml-5">ID</th>
                                <th>Sport name</th>
                                <th>Player 
                                    <label id="Player">
                                    </label></th>
                                   <th><label id="DeadLine"></label>
                                    Deadline</th>
                                <th>Payouts <label id="Payouts"> </label></th>
                                <th>Traffic <label id="Traffic"> </label></th>
                                <th>Actions <label id="Actions"> </label></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>#1</td>
                                <td>Cricket</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <button type="button" class="btn btn-success btn-sm btn-icon-text mr-3">
                                            Edit
                             
                                <i class="typcn typcn-edit btn-icon-append"></i>
                                        </button>
                                        <button type="button" class="btn btn-danger btn-sm btn-icon-text">
                                            Delete
                             
                                <i class="typcn typcn-delete-outline btn-icon-append"></i>
                                        </button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>#2</td>
                                <td>Volleyball</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <button type="button" class="btn btn-success btn-sm btn-icon-text mr-3">
                                            Edit
                             
                                <i class="typcn typcn-edit btn-icon-append"></i>
                                        </button>
                                        <button type="button" class="btn btn-danger btn-sm btn-icon-text">
                                            Delete
                             
                                <i class="typcn typcn-delete-outline btn-icon-append"></i>
                                        </button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>#3</td>
                                <td>Football</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <button type="button" class="btn btn-success btn-sm btn-icon-text mr-3">
                                            Edit
                             
                                <i class="typcn typcn-edit btn-icon-append"></i>
                                        </button>
                                        <button type="button" class="btn btn-danger btn-sm btn-icon-text">
                                            Delete
                             
                                <i class="typcn typcn-delete-outline btn-icon-append"></i>
                                        </button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>#4</td>
                                <td>BasketBall</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <button type="button" id="btncancel" class="btn btn-success btn-sm btn-icon-text mr-3">
                                            Edit
                             
                                <i class="typcn typcn-edit btn-icon-append"></i>
                                        </button>
                                        <button type="button" id="btndelete" class="btn btn-danger btn-sm btn-icon-text">
                                            Delete
                                           
                                <i class="typcn typcn-delete-outline btn-icon-append"></i>
                                        </button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>#5</td>
                                <td>Kabbadi</td>
                                <td>-</td>
                                <td>-</td>      
                                <td>-</td>
                                <td>-</td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <button type="button" class="btn btn-success btn-sm btn-icon-text mr-3">
                                            Edit
                             
                                <i class="typcn typcn-edit btn-icon-append"></i>
                                        </button>
                                        <button type="button" class="btn btn-danger btn-sm btn-icon-text">
                                            Delete
                             
                                <i class="typcn typcn-delete-outline btn-icon-append"></i>
                                        </button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>#6</td>
                                <td>Table Tennis</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <button type="button" class="btn btn-success btn-sm btn-icon-text mr-3">
                                            Edit
                             
                                <i class="typcn typcn-edit btn-icon-append"></i>
                                        </button>
                                        <button type="button" class="btn btn-danger btn-sm btn-icon-text">
                                            Delete
                             
                                <i class="typcn typcn-delete-outline btn-icon-append"></i>
                                        </button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>#7</td>
                                <td>Chess</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <button type="button" class="btn btn-success btn-sm btn-icon-text mr-3">
                                            Edit
                             
                                <i class="typcn typcn-edit btn-icon-append"></i>
                                        </button>
                                        <button type="button" class="btn btn-danger btn-sm btn-icon-text">
                                            Delete
                             
                                <i class="typcn typcn-delete-outline btn-icon-append"></i>
                                        </button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>#8</td>
                                <td>Carrom</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <button type="button" class="btn btn-success btn-sm btn-icon-text mr-3">
                                            Edit
                             
                                <i class="typcn typcn-edit btn-icon-append"></i>
                                        </button>
                                        <button type="button" class="btn btn-danger btn-sm btn-icon-text">
                                            Delete
                             
                                <i class="typcn typcn-delete-outline btn-icon-append"></i>
                                        </button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>#9</td>
                                <td>Velorant</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <button type="button" class="btn btn-success btn-sm btn-icon-text mr-3">
                                            Edit
                             
                                <i class="typcn typcn-edit btn-icon-append"></i>
                                        </button>
                                        <button type="button" class="btn btn-danger btn-sm btn-icon-text">
                                            Delete
                             
                                <i class="typcn typcn-delete-outline btn-icon-append"></i>
                                        </button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>#10</td>
                                <td>PUBG:Battlegrounds</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <button type="button" class="btn btn-success btn-sm btn-icon-text mr-3">
                                            Edit
                             
                                <i class="typcn typcn-edit btn-icon-append"></i>
                                        </button>
                                        <button type="button" class="btn btn-danger btn-sm btn-icon-text">
                                            Delete
                             
                                <i class="typcn typcn-delete-outline btn-icon-append"></i>
                                        </button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>#11</td>
                                <td>Warzone 2.0</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <button type="button" class="btn btn-success btn-sm btn-icon-text mr-3">
                                            Edit
                             
                                <i class="typcn typcn-edit btn-icon-append"></i>
                                        </button>
                                        <button type="button" class="btn btn-danger btn-sm btn-icon-text">
                                            Delete
                             
                                <i class="typcn typcn-delete-outline btn-icon-append"></i>
                                        </button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>#12</td>
                                <td>CS: Go</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <button type="button" class="btn btn-success btn-sm btn-icon-text mr-3">
                                            Edit
                             
                                <i class="typcn typcn-edit btn-icon-append"></i>
                                        </button>
                                        <button type="button" class="btn btn-danger btn-sm btn-icon-text">
                                            Delete
                             
                                <i class="typcn typcn-delete-outline btn-icon-append"></i>
                                        </button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>#13</td>
                                <td>Fortnite</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <button type="button" class="btn btn-success btn-sm btn-icon-text mr-3">
                                            Edit
                             
                                <i class="typcn typcn-edit btn-icon-append"></i>
                                        </button>
                                        <button type="button" class="btn btn-danger btn-sm btn-icon-text">
                                            Delete
                             
                                <i class="typcn typcn-delete-outline btn-icon-append"></i>
                                        </button>
                                    </div>
                                </td>
                            </tr>
                                <%-- <tr>
                                <td>#13</td>
                                <td>Fortnite</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <button type="button" class="btn btn-success btn-sm btn-icon-text mr-3">
                                            Edit
                             
                                <i class="typcn typcn-edit btn-icon-append"></i>
                                        </button>
                                        <button type="button" class="btn btn-danger btn-sm btn-icon-text">
                                            Delete
                             
                                <i class="typcn typcn-delete-outline btn-icon-append"></i>
                                        </button>
                                    </div>
                                </td>
                            </tr>
                                 <tr>
                                <td>#13</td>
                                <td>Fortnite</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <button type="button" class="btn btn-success btn-sm btn-icon-text mr-3">
                                            Edit
                             
                                <i class="typcn typcn-edit btn-icon-append"></i>
                                        </button>
                                        <button type="button" class="btn btn-danger btn-sm btn-icon-text">
                                            Delete
                             
                                <i class="typcn typcn-delete-outline btn-icon-append"></i>
                                        </button>
                                    </div>
                                </td>
                            </tr>
                                 <tr>
                                <td>#13</td>
                                <td>Fortnite</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <button type="button" class="btn btn-success btn-sm btn-icon-text mr-3">
                                            Edit
                             
                                <i class="typcn typcn-edit btn-icon-append"></i>
                                        </button>
                                        <button type="button" class="btn btn-danger btn-sm btn-icon-text">
                                            Delete
                             
                                <i class="typcn typcn-delete-outline btn-icon-append"></i>
                                        </button>
                                    </div>
                                </td>
                            </tr>
                                 <tr>
                                <td>#13</td>
                                <td>Fortnite</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <button type="button" class="btn btn-success btn-sm btn-icon-text mr-3">
                                            Edit
                             
                                <i class="typcn typcn-edit btn-icon-append"></i>
                                        </button>
                                        <button type="button" class="btn btn-danger btn-sm btn-icon-text">
                                            Delete
                             
                                <i class="typcn typcn-delete-outline btn-icon-append"></i>
                                        </button>
                                    </div>
                                </td>
                            </tr>--%>
                            <%-- <tr>
                        <td>#14</td>
                        <td>Fortnite</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>
                          <div class="d-flex align-items-center">
                            <button type="button" class="btn btn-success btn-sm btn-icon-text mr-3">
                              Edit
                              <i class="typcn typcn-edit btn-icon-append"></i>                          
                            </button>
                            <button type="button" class="btn btn-danger btn-sm btn-icon-text">
                              Delete
                              <i class="typcn typcn-delete-outline btn-icon-append"></i>                          
                            </button>
                          </div>
                        </td>
                      </tr>--%>
                        </tbody>
                    </table>
                <%--</form>--%>
            </div>
        </div>
    </div>
</asp:Content>

<%--<head id="Head1" runat="server">  
    <title></title>  
</head>  
<body>  
    <form id="form1" runat="server">  
    <div>  
        UserName:-<asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>  
        <br />  
        <br />  
        Password:-<asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>  
        <br />  
    </div>  
    </form>  
</body>  --%>