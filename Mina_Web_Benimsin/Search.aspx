<%@ Page Title="" Language="C#" MasterPageFile="Main.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Mina_Web_Benimsin.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
        <ProgressTemplate>
            <div class="modal">
                <div class="center">
                    <img alt="" src="loader.gif" />
                </div>
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>

    <div id="modaltime" class="modal fade" role="dialog" data-backdrop="static" data-keyboard="false">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Sual</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <div class="modal-body">
                        Çıxış etmək isdəyirsiniz?
                    </div>

                    <div class="modal-footer">
                    </div>
                </div>
            </div>
        </div>

    <div class="row g-2" style="width:101%;  display: flex;  align-items: center; justify-content: space-between; padding-left:20px;">

        <div class="col-md-2">
            <label for="txtAxtarisSozu" class="form-label">Axtarış sözü</label>
            <asp:TextBox ID="txtAxtarisSozu" runat="server" class="form-control rounded-pill border-info small" placeholder="Axtariş sözü"></asp:TextBox>
        </div>

        <div class="col-md-2">
            <label for="drpBrend" class="form-label">Brend</label>
            <asp:DropDownList ID="drpBrend" runat="server" class="form-control dropdown-toggle rounded-pill border-info small" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></asp:DropDownList>
        </div>

        <div class="col-md-2">
            <label for="drpMarka" class="form-label">Marka</label>
            <asp:DropDownList ID="drpMarka" runat="server" class="form-control dropdown-toggle rounded-pill border-info" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></asp:DropDownList>
        </div>

         <div class="col-md-2">
            <label for="drpModel" class="form-label">Model</label>
            <asp:DropDownList ID="drpModel" runat="server" class="form-control dropdown-toggle rounded-pill border-info" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></asp:DropDownList>
        </div>

        <div class="col-md-2">
            <label for="btnAxtar" class="form-label">Axtar</label>
            <asp:Button ID="btnAxtar" runat="server" Text="Axtar" class="btn btn-primary form-control rounded-pill border-info" OnClick="btnAxtar_Click" />
        </div>
    </div>
    <hr />
</asp:Content>
