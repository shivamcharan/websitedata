<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tab.aspx.cs" Inherits="tab" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/tabCapexBDMaster.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <center>
        <div id="Capex-Demo">
            <ajaxToolkit:ToolkitScriptManager runat="Server" EnablePartialRendering="true" ID="ScriptManager1" />
            <script type="text/javascript">
                function PanelClick(sender, e) {
                    var Messages = $get('<%=Messages.ClientID%>');
                    Highlight(Messages);
                }

                function ActiveTabChanged(sender, e) {
                    var CurrentTab = $get('<%=CurrentTab.ClientID%>');
                    CurrentTab.innerHTML = sender.get_activeTab().get_headerText();
                    Highlight(CurrentTab);
                }

                var HighlightAnimations = {};
                function Highlight(el) {
                    if (HighlightAnimations[el.uniqueID] == null) {
                        HighlightAnimations[el.uniqueID] = Sys.Extended.UI.Animation.createAnimation({
                            AnimationName: "color",
                            duration: 0.5,
                            property: "style",
                            propertyKey: "backgroundColor",
                            startValue: "#FFFF90",
                            endValue: "#FFFFFF"
                        }, el);
                    }
                    HighlightAnimations[el.uniqueID].stop();
                    HighlightAnimations[el.uniqueID].play();
                }

                function ToggleHidden(value) {
                    $find('<%=Tabs.ClientID%>').get_tabs()[2].set_enabled(value);
                }
                   
            </script>
            <ajaxToolkit:TabContainer runat="server" ID="Tabs" Height="159px" OnClientActiveTabChanged="ActiveTabChanged"
                ActiveTabIndex="0" Width="325px" CssClass="NewsTab">
                <ajaxToolkit:TabPanel runat="server" ID="Panel1" HeaderText="Reach Us">
                    <ContentTemplate>
                        <div class="tdreachushead" align="center">
                            Arrange Demo in Your Office:
                        </div>
                        <table width="340px" style="height: 130px; vertical-align: top; margin-bottom: 10px;">
                            <tr class="trheight">
                                <td class="tdreachustdleft">
                                    Company Name:
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator runat="server" ID="NReq" ControlToValidate="TxtCompanyName"
                                        Display="None" ErrorMessage="<b>Required Field Missing</b><br />A Company name is required." /><ajaxToolkit:ValidatorCalloutExtender
                                            runat="server" ID="NReqE" TargetControlID="NReq" HighlightCssClass="validatorCalloutHighlight"
                                            Enabled="True" />
                                    <asp:TextBox ID="TxtCompanyName" runat="server" CssClass="txtreachus"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="trheight">
                                <td class="tdreachustdleft">
                                    Contact Person:
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator runat="server" ID="CNReq" ControlToValidate="TxtContactPerson"
                                        Display="None" ErrorMessage="<b>Required Field Missing</b><br />A Contact Person name is required." /><ajaxToolkit:ValidatorCalloutExtender
                                            runat="server" ID="ValidatorCalloutExtender1" TargetControlID="CNReq" HighlightCssClass="validatorCalloutHighlight"
                                            Enabled="True" />
                                    <asp:TextBox ID="TxtContactPerson" runat="server" CssClass="txtreachus"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="trheight">
                                <td class="tdreachustdleft">
                                    Mobile Number:
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator runat="server" ID="MNReq" ControlToValidate="TxtMobileNumber"
                                        Display="None" ErrorMessage="<b>Required Field Missing</b><br />A Phone Number is required." /><ajaxToolkit:ValidatorCalloutExtender
                                            runat="server" ID="ValidatorCalloutExtender2" TargetControlID="MNReq" HighlightCssClass="validatorCalloutHighlight"
                                            Enabled="True" />
                                    <asp:RegularExpressionValidator runat="server" ID="PNRegEx" ControlToValidate="TxtMobileNumber"
                                        Display="None" ValidationExpression="\d{10,12}" ErrorMessage="<b>Invalid Field</b><br />Please enter a phone number!" /><ajaxToolkit:ValidatorCalloutExtender
                                            runat="server" ID="PNReqEx" TargetControlID="PNRegEx" HighlightCssClass="validatorCalloutHighlight"
                                            Enabled="True" />
                                    <asp:TextBox ID="TxtMobileNumber" runat="server" CssClass="txtreachus"></asp:TextBox>
                                </td>
                            </tr>
                            <tr class="trheight">
                                <td class="tdreachustdleft">
                                    Website / Product:
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator runat="server" ID="PWReq" ControlToValidate="TxtProduct"
                                        Display="None" ErrorMessage="<b>Required Field Missing</b><br />A Website or Product is required." /><ajaxToolkit:ValidatorCalloutExtender
                                            runat="server" ID="ValidatorCalloutExtender3" TargetControlID="PWReq" HighlightCssClass="validatorCalloutHighlight"
                                            Enabled="True" />
                                    <asp:TextBox ID="TxtProduct" runat="server" CssClass="txtreachus"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="tdreachustdleftsubmit" align="center" colspan="2">
                                    <asp:Button ID="BtnSubmit" runat="server" CssClass="button" Height="25px" 
                                        Text="Submit" onclick="BtnSubmit_Click1" />
                                    <input id="Reset1" type="reset" class="button" style="height: 25px;" value="reset" />
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel runat="server" ID="Panel2" HeaderText="Write">
                    <ContentTemplate>
                        <div class="tdreachushead" align="center">
                            Write To Us:
                        </div>
                        <table width="340px">
                            <tr>
                                <td>
                                    <asp:RequiredFieldValidator runat="server" ID="TxtWReq" ControlToValidate="TxtWriteUs"
                                        ValidationGroup="write" Display="None" ErrorMessage="<b>Required Field Missing</b><br />Some Message is Required." /><ajaxToolkit:ValidatorCalloutExtender
                                            runat="server" ID="ValidatorCalloutExtender4" TargetControlID="TxtWReq" HighlightCssClass="validatorCalloutHighlight"
                                            Enabled="True" />
                                    <asp:TextBox ID="TxtWriteUs" runat="server" Height="70px" Width="320px" ValidationGroup="write"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Button ID="Button1" runat="server" Text="Send" ValidationGroup="write" CssClass="button" />
                                    <input id="Reset2" type="reset" class="button" style="height: 25px; float: right;"
                                        value="reset" />
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel runat="server" ID="Panel3" HeaderText="Call">
                    <ContentTemplate>
                        <div align="center" class="tdreachushead">
                            Make A Call To Us:
                        </div>
                        <table width="340px">
                            <tr>
                                <td align="center">
                                    <script type="text/javascript" src="http://download.skype.com/share/skypebuttons/js/skypeCheck.js"></script>
                                    <a href="skype:domex.business?call">
                                        <img src="http://download.skype.com/share/skypebuttons/buttons/call_blue_white_124x52.png"
                                            style="border: none;" width="124" height="52" alt="Skype Me™!" /></a>
                                    <center>
                                        Skype Call : 10:00 AM - 5:00 PM (IST)
                                    </center>
                                </td>
                            </tr>
                            <tr>
                                <td class="tdcall" align="center">
                                    Tel : <span class="callnum">+91-22-66638220 / 21/ 22</span>
                                    <br />
                                    Mob : <span class="callnum">91-22-66638220</span>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel runat="server" ID="Panel4" HeaderText="E-mail">
                    <ContentTemplate>
                        <div class="tdreachushead" align="center">
                            E-mail Us</div>
                        <asp:RequiredFieldValidator runat="server" ID="REmailId" ControlToValidate="TxtEmailid"
                            ValidationGroup="emailus" Display="None" ErrorMessage="<b>Required Field Missing</b><br />A Email Id is required." /><ajaxToolkit:ValidatorCalloutExtender
                                runat="server" ID="ValidatorCalloutExtender5" TargetControlID="REmailId" HighlightCssClass="validatorCalloutHighlight"
                                Enabled="True" />
                        <asp:RequiredFieldValidator runat="server" ID="REMessage1" ControlToValidate="TxtMessageus"
                            ValidationGroup="emailus" Display="None" ErrorMessage="<b>Required Field Missing</b><br />A Message Required." /><ajaxToolkit:ValidatorCalloutExtender
                                runat="server" ID="ValidatorCalloutExtender6" TargetControlID="REMessage1" HighlightCssClass="validatorCalloutHighlight"
                                Enabled="True" />
                        <asp:RegularExpressionValidator runat="server" ID="REmailIdreg" ControlToValidate="TxtEmailid"
                            ValidationGroup="emailus" Display="None" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ErrorMessage="<b>Invalid Field</b><br />Please enter a Valid Email-Id number!" /><ajaxToolkit:ValidatorCalloutExtender
                                runat="server" ID="ValidatorCalloutExtender7" TargetControlID="REmailIdreg" HighlightCssClass="validatorCalloutHighlight"
                                Enabled="True" />
                        <div style="width: 320px">
                            <div class="divleft" style="float: left;">
                                E-mail Id:</div>
                            <div style="float: right;">
                                <asp:TextBox ID="TxtEmailid" runat="server" CssClass="txtreachus" ValidationGroup="emailus"
                                    Width="240px"></asp:TextBox></div>
                        </div>
                        <div style="width: 320px">
                            <div class="divleft" style="float: left;">
                                Message :</div>
                            <div style="float: right;">
                                <asp:TextBox ID="TxtMessageus" runat="server" Width="240px" ValidationGroup="emailus"
                                    Height="60px"></asp:TextBox></div>
                        </div>
                        <div style="width: 320px">
                            <div style="float: right;">
                                <asp:Button ID="Button2" runat="server" Text="Send" ValidationGroup="emailus" CssClass="button" />
                                <input id="Reset3" type="reset" class="button" style="height: 25px;" value="reset" />
                            </div>
                        </div>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel runat="server" ID="Panel5" HeaderText="Share">
                    <ContentTemplate>
                        <div class="tdreachushead" align="center">
                            Share Us!
                        </div>
                        <div>
                            <!-- AddThis Follow BEGIN -->
                            <div class="addthis_toolbox addthis_32x32_style addthis_default_style">
                                <a class="addthis_button_facebook_follow" addthis:userid="CapexBD"></a><a class="addthis_button_twitter_follow"
                                    addthis:userid="CapexBD"></a><a class="addthis_button_linkedin_follow" addthis:userid="CapexBD">
                                    </a><a class="addthis_button_google_follow" addthis:userid="CapexBD"></a><a class="addthis_button_youtube_follow"
                                        addthis:userid="CapexBD"></a><a class="addthis_button_flickr_follow" addthis:userid="CapexBD">
                                        </a><a class="addthis_button_vimeo_follow" addthis:userid="CapexBD"></a>
                                <a class="addthis_button_pinterest_follow" addthis:userid="CapexBD"></a><a class="addthis_button_instagram_follow"
                                    addthis:userid="CapexBD"></a><a class="addthis_button_foursquare_follow" addthis:userid="CapexBD">
                                    </a><a class="addthis_button_tumblr_follow" addthis:userid="CapexBD"></a><a class="addthis_button_rss_follow"
                                        addthis:url="http://CapexBD"></a>
                            </div>
                            <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-4feaabc5491b4652"></script>
                            <!-- AddThis Follow END -->
                        </div>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
            </ajaxToolkit:TabContainer>
            <div style="color: #0079b8; margin-top: 10px;">
                Current Tab:
                <asp:Label runat="server" ID="CurrentTab" ForeColor="#ff9057" Font-Bold="true" Text="Reach Us" />
                <asp:Label runat="server" ID="Messages" ForeColor="#ff9057" /></div>
        </div>
    </center>
    </form>
</body>
</html>
