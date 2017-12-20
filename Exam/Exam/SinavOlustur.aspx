<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="SinavOlustur.aspx.cs" Inherits="Exam.SinavOlustur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
    
    </script>
    <style type="text/css">
        #TextAreaDescription {
            width: 442px;
            height: 109px;
        }
        </style>
    <script>
        document.getElementById("txtS").value = "";
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
              <div style="width: 700px; margin-left: 0px;">
        <h3>Yaz&#305; Ba&#351;l&#305;&#287;&#305;</h3>
        <asp:DropDownList ID="DropDownListBasliklar" runat="server" Height="16px" Width="679px" AutoPostBack="True" OnSelectedIndexChanged="DropDownListBasliklar_SelectedIndexChanged"></asp:DropDownList>
        <%--//sol kanat--%>
        <br />
        
        <h3>Yaz&#305; &#304;çeri&#287;i</h3>
        <asp:Literal ID="LiteralDescription" runat="server"></asp:Literal>
        <br />
        <br />
       <asp:TextBox runat="server" ID="nudSoruSayisi" type="number" min="4" max="10" step="1" AutoPostBack="True" OnTextChanged="nudSoruSayisi_TextChanged1">4</asp:TextBox>
        &nbsp;Soru Say&#305;s&#305; 
        <asp:Panel ID="Panel1" runat="server">
        </asp:Panel>
        <br />
        <br />
        <div>
            <div style="width: 700px; float: left;">
                <%--//sol--%>
                <div style="width: 300px; float:left"><%--//sa&#287;--%>
                    <asp:Panel ID="SagPanel" runat="server"></asp:Panel>
                </div>
            </div>
          
            <asp:Button ID="btnSinavOlustur" runat="server" OnClick="btnSinavOlustur_Click" Text="S&#305;nav Olu&#351;tur" />
          
        </div>
    </div>
        </ContentTemplate>
    </asp:UpdatePanel>
  
</asp:Content>
