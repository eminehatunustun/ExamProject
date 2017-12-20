<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="SinavOl.aspx.cs" Inherits="Exam.SinavOl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
        <asp:DataList ID="DataListExes" runat="server">
            <ItemTemplate>
                <table>
                    <tr> 
                        <td>
                            <h3>'<%# Eval("Title") %>'> </h3>
                        </td>

                    </tr>
                    <tr> 
                       <td> '<%# Eval("Description") %>' </td>

                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:DataList ID="DataListQuestions" runat="server" RepeatColumns="2">
            <HeaderTemplate>
                <h1>Sorular</h1>
            </HeaderTemplate>
            <ItemTemplate>
                <div>

                    <table class="auto-style1">
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Label ID="lblQuestion" runat="server" Text='<%# Eval("Question1") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:RadioButton ID="rbA" runat="server" Text="A)" />
                            </td>
                            <td>
                                <asp:Label ID="lblA" runat="server" Text='<%# Eval("OptionA") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:RadioButton ID="rbB" runat="server" Text="B)" />
                            </td>
                            <td>
                                <asp:Label ID="lblB" runat="server" Text='<%# Eval("OptionB") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:RadioButton ID="rbC" runat="server" Text="C)" />
                            </td>
                            <td>
                                <asp:Label ID="lblC" runat="server" Text='<%# Eval("OptionC") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:RadioButton ID="rbD" runat="server" Text="D)" />
                            </td>
                            <td>
                                <asp:Label ID="lblD" runat="server" Text='<%# Eval("OptionD") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                    

                </div>
            </ItemTemplate>
        </asp:DataList>
                    <div><asp:Button ID="btnSinaviTamamla" runat="server" Text="S&#305;nav&#305; Tamamla" OnClick="btnSinaviTamamla_Click" /></div>
            </ContentTemplate>
        </asp:UpdatePanel>
        
    
    </div>
</asp:Content>
