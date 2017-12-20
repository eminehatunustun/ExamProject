<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Exam.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .label {
            margin-left: 0px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 109px;
        }
        .auto-style4 {
            width: 146px;
        }
        .auto-style5 {
            width: 96px;
        }
        .auto-style6 {
            width: 109px;
            height: 26px;
        }
        .auto-style7 {
            width: 146px;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
        }
    .auto-style9 {
        float: right;
        width: 400px;
        margin-bottom: 0px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 400px; background-color: #d9d9d9; width: 800px; float:left;">
    
        <div >
            <div style=" float:left; width:400px; ">
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3">Ad:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ad bo&#351; geçilemez." ForeColor="Red" ControlToValidate="txtName" ValidationGroup="kayitKontrol">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Soyad:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Soyad bo&#351; geçilemez." ForeColor="Red" ControlToValidate="txtSurname" ValidationGroup="kayitKontrol">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Kullan&#305;c&#305; Ad&#305;:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Kullan&#305;c&#305; ad&#305; bo&#351;  geçilemez." ForeColor="Red" ControlToValidate="txtUsername" ValidationGroup="kayitKontrol">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">E-Posta:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="E-Posta bo&#351; geçilemez." ForeColor="Red" ControlToValidate="txtEmail" ValidationGroup="kayitKontrol">* &nbsp</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="E-Posta uygun de&#287;ildir." ControlToValidate="txtEmail" ForeColor="#660033" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="kayitKontrol">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">&#350;ifre:</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style8">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="&#350;ifre bo&#351; geçilemez." ForeColor="Red" ControlToValidate="txtPass" ValidationGroup="kayitKontrol">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&#350;ifre Tekrar:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtPass2" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="&#350;ifre tekrar bo&#351; geçilemez." ForeColor="Red" ControlToValidate="txtPass2" ValidationGroup="kayitKontrol">*</asp:RequiredFieldValidator>
                        &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass2" ControlToValidate="txtPass" ErrorMessage="&#350;ifreler uyu&#351;mamaktad&#305;r." ForeColor="#00FFCC" ValidationGroup="kayitKontrol">*</asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style4">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="kayitKontrol" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style4">
                            <asp:Button ID="btnKayit" runat="server" Text="Kaydol" ValidationGroup="kayitKontrol" Width="100px" OnClick="btnKayit_Click" />
                        </td>
                        <td>
                            <asp:Label ID="lblKayit" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="auto-style9">
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style5">Kullan&#305;c&#305; Ad&#305;:</td>
                        <td>
                            <asp:TextBox ID="txtUID" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Kullan&#305;c&#305; Ad&#305; Bo&#351; geçilemez." ForeColor="Red" ControlToValidate="txtUID" ValidationGroup="girisKontrol">*</asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&#350;ifre:</td>
                        <td>
                            <asp:TextBox ID="txtUserPass" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="&#350;ifre bo&#351; geçilemez." ForeColor="Red" ControlToValidate="txtUserPass" ValidationGroup="girisKontrol">*</asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td>

                            <asp:ValidationSummary ID="ValidationSummary2" runat="server" ValidationGroup="girisKontrol" />

                        </td>
                        <td>&nbsp;</td>
                    </tr>
                     <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td>
                            <asp:Button ID="btnSign" runat="server" Text="Giri&#351; Yap" OnClick="btnSign_Click1" ValidationGroup="girisKontrol" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>

    </div>

</asp:Content>
