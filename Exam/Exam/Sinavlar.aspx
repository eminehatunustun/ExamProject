<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="Sinavlar.aspx.cs" Inherits="Exam.Sinavlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 207px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:DataList ID="DataListExams" runat="server" OnItemCommand="DataListExams_ItemCommand">
            <HeaderTemplate>
                <h1>Sınavlar</h1>
            </HeaderTemplate>
            <ItemTemplate>
                <div>
                    <table class="auto-style1">
                        <tr>
                            <td> <h4> <%= (i+1).ToString()%></h4> <%i = i + 1;  %></td>
                                                                          
                            <td class="auto-style2">
                                <asp:Label ID="lblBaslik" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                            </td>
                            <td>
                                
                                <asp:Label ID="lblDate" runat="server" Text='<%# Eval("ExamDate") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:LinkButton ID="lbtnDelete" runat="server" CommandArgument='<%# Eval("ExamID")%>' CommandName="delete" OnClientClick="javascript:confirm('Silmek istedi&#287;ine emin misin?');"  >Sil</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </div>
            </ItemTemplate>
            <FooterTemplate>
                <h5><%= SinavSayisi.ToString() + " adet Sınav listelenmistir ..." %></h5>
            </FooterTemplate>
        </asp:DataList>
    </div>
</asp:Content>
