<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anket.aspx.cs" Inherits="CookieOrnek1.Anket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row" style="margin-top:50px;">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="col-md-12">
                            <asp:MultiView ID="MultiView1" runat="server">
                                <asp:View ID="View_Kullanilmis" runat="server">
                                    <asp:Label ID="lblBilgilendirme" Text="Bu ankette daha önce oy kullanmışsınız!" CssClass="well well-sm" runat="server" />
                                </asp:View>
                                <asp:View ID="View_Kullanilmamis" runat="server">
                                    <label class="well well-sm">
                                        Hangi programlama dilini kullanıyorsunuz?
                                    </label>
                                    <asp:RadioButtonList ID="rblAnketSecenekleri" runat="server">
                                        <asp:ListItem Text="C#" />
                                        <asp:ListItem Text="JAVA" />
                                        <asp:ListItem Text="PYTHON" />
                                        <asp:ListItem Text="VB.NET" />
                                    </asp:RadioButtonList>
                                    <br />
                                    <asp:Button ID="btnOyVer" Text="Oy Ver" CssClass="btn btn-default" runat="server" OnClick="btnOyVer_Click" />
                                </asp:View>
                            </asp:MultiView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
