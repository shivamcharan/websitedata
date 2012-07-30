<%@ Page Title="" Language="C#" MasterPageFile="~/CapexBD.master" AutoEventWireup="true"
    CodeFile="index.aspx.cs" Inherits="index" EnableEventValidation="false" EnableSessionState="True" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Marketing Tool , Marketing Tool Software , Projects Tracking , CapexBD</title>
    <SCRIPT language="javascript" type="text/javascript">
        msg = "Marketing Tool , Marketing Tool Software , Projects Tracking , CapexBD";

        msg = "   " + msg; pos = 0;
        function scrollMSG() {
            document.title = msg.substring(pos, msg.length) + msg.substring(0, pos);
            pos++;
            if (pos > msg.length) pos = 0
            window.setTimeout("scrollMSG()", 200);
        }
        scrollMSG();
    </SCRIPT>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <iframe src="banner/themes/apple-style/index.html" height="400" width="968" scrolling="no"
        frameborder="0"></iframe>
</asp:Content>
