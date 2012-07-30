<%@ Page Title="" Language="C#" MasterPageFile="~/CapexBDOther.master" AutoEventWireup="true"
    CodeFile="Domex-Key-Person.aspx.cs" Inherits="Domex_Key_Person" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>What is CapexBD ,Marketing Tool , Marketing Tool Software , Projects Tracking
        , CapexBD</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ajaxToolkit:ToolkitScriptManager runat="server" ID="ScriptManager1" />
    <div class="divfull">
        <br />
        <br />
        <div class="divtitle">
            Key People</div>
        <div class="divmatter" align="left">
            <div class="divleftother" style="margin-top: -15px;">
                <p class="matterhead">
                    PV Satyanarayana (Managing Director)
                </p>
                <p class="matter">
                    <img alt="" src="images/capexbdcssimages/PVSOld.jpg" style="float: left; padding-right: 10px;" />
                    Holds a degree in engineering from Bangalore University and has over 30 years of
                    professional experience spread over industrial marketing, industrial market research,
                    business journalism and aggregation of scientific, technical and business information.
                    Founded Domex in 1988 and started with research, analysis, compilation and dissemination
                    of business information.
                    <asp:LinkButton runat="server" ID="pvs">Read More</asp:LinkButton>
                    <ajaxToolkit:HoverMenuExtender ID="pvs1" runat="server" TargetControlID="pvs" PopupControlID="pvsshow"
                        PopupPosition="Right" />
                </p>
                <asp:Panel ID="pvsshow" runat="server" CssClass="panelkey">
                    <p class="matterkey">
                        Started Domex Technical Information, a knowledge management / KPO company in 1994.Established
                        Domex e-Data Pvt Ltd in 2003 which become a successful KPO with globally renowned
                        customers from US, UK / EU and Japan.Domex e-Data was acquired by an Indian scientific information in July
                        2010. MrSatyanarayana now operates Domex Technical Information which concentrates
                        on business research, marketing consultancy and software development.
                    </p>
                </asp:Panel>
                <p class="matterhead">
                    R Balakrishnan (Technical Director)
                </p>
                <p class="matter">
                    <img alt="" src="images/capexbdcssimages/bala.jpg" style="float: left; padding-right: 10px;" />
                    Bala has a degree in engineering and a Masters degree in marketing management from
                    Mumbai University. With over 12 years experience as a project engineer with Tata
                    Consulting Engineers, he is well experienced in handling project planning and engineering
                    vendor development.
                    <asp:LinkButton runat="server" ID="bala">Read More</asp:LinkButton>
                    <ajaxToolkit:HoverMenuExtender ID="bala1" runat="server" TargetControlID="bala" PopupControlID="balashow"
                        PopupPosition="Right" />
                </p>
                <asp:Panel ID="balashow" runat="server" CssClass="panelkey">
                    <p class="matterkey">
                        Bala has been providing leadership in project planning, training and production
                        planning for Domex's international assignments since 1991.
                    </p>
                </asp:Panel>
                <p class="matterhead">
                    P Venkataramana (Executive Director)
                </p>
                <p class="matter">
                    <img alt="" src="images/capexbdcssimages/Venkat.jpg" style="float: left; padding-right: 10px;" />
                    Venkat has a Masters degree in Geology from Mysore University and PhD in geochemistry
                    from Indian Institute of Science, Bangalore, Venkat was with Geological Survey of
                    India for 20 years where he officiated as the Chief Scientist and Head of the Computer
                    Section.
                    <asp:LinkButton runat="server" ID="venkat" CssClass="venkat">Read More</asp:LinkButton>
                    <ajaxToolkit:HoverMenuExtender ID="venkat1" runat="server" TargetControlID="venkat"
                        PopupControlID="venkatshow" PopupPosition="Top" />
                </p>
                <asp:Panel ID="venkatshow" runat="server" CssClass="panelkey">
                    <p class="matterkey">
                        Has proficiency in computer software programming and possesses knowledge in languages
                        / programs such as UNIX, C / C++, Oracle, GIS, VB and others. Has executed over
                        100 software programs / assignments with scientific, technical and commercial applications.
                    </p>
                </asp:Panel>
            </div>
            <div class="divrightother" style="margin-top: -15px;">
                <p class="matterhead">
                    Ms. Anuradha (Marketing Directer)
                </p>
                <p class="matter">
                    <img alt="" src="images/capexbdcssimages/Anuradha.jpg" style="float: left; padding-right: 10px;" />
                    Holds a Master’s degree in psychology from Mumbai University. Has over 13 years
                    of experience in marketing research, international customer database development,
                    subscriptions management and customer relations. Has been with Domex for nearly
                    10 years.
                    <asp:LinkButton runat="server" ID="anuradha">Read More</asp:LinkButton>
                    <ajaxToolkit:HoverMenuExtender ID="anuradha1" runat="server" TargetControlID="anuradha"
                        PopupControlID="anuradhashow" PopupPosition="Right" />
                </p>
                <asp:Panel ID="anuradhashow" runat="server" CssClass="panelkey">
                    <p class="matterkey">
                        Anuradha is also a professional psychologist assisting the corporate sector in conduct
                        of psychometric evaluations and competency mapping & assessment. As a social objective,
                        she has been providing career counseling and guidance to aspiring students and youngsters.
                        Further, she has been regularly writing columns on psychology and career development
                        related subjects in leading newspapers like Times of India and Mid-Day and magazines
                        like My Doctor, Classroom and so forth.
                    </p>
                </asp:Panel>
                <p class="matterhead">
                    Meenakshi Sundaram (General Manager)
                </p>
                <p class="matter">
                    <img alt="" src="images/capexbdcssimages/Sundar.jpg" style="float: left; padding-right: 10px;" />
                    Sundar has a degree in science from University of Madras. Has about 15 years experience
                    in research and compilation of business information. Sundar has also be in the forefront
                    of providing leadership for Domex’s KPO business for 10 years. Currently he is responsible
                    for overseeing Domex’s diversification and expansion into newer areas of business.
                    <asp:LinkButton runat="server" ID="sundar">Read More</asp:LinkButton>
                    <ajaxToolkit:HoverMenuExtender ID="HoverMenuExtender1" runat="server" TargetControlID="sundar"
                        PopupControlID="sundarshow" PopupPosition="Right" />
                </p>
                <asp:Panel ID="sundarshow" runat="server" CssClass="panelkey">
                    <p class="matterkey">
                        Coming Soon !!
                    </p>
                </asp:Panel>
                <p class="matterhead">
                    Purushottam Awade (Software Architect)
                </p>
                <p class="matter">
                    <img alt="" src="images/capexbdcssimages/awade.jpg" style="float: left; padding-right: 10px;" />
                    Puru Awade holds a degree in Science and brings to the forefront about 20 years
                    of industrial marketing experience. Puru has been a marketing services consultant
                    to many equipment manufacturers in Pune and has been helping them to formulate appropriate
                    strategies in the OEM and Capex markets.
                    <asp:LinkButton runat="server" ID="awade" CssClass="venkat">Read More</asp:LinkButton>
                    <ajaxToolkit:HoverMenuExtender ID="awade1" runat="server" TargetControlID="awade"
                        PopupControlID="awadeshow" PopupPosition="Top" />
                </p>
                <asp:Panel ID="awadeshow" runat="server" CssClass="panelkey">
                    <p class="matterkey">
                        Further, Puru has been a software developer with proficiency in Visual FoxPro and
                        more lately in ASP.Net. Puru is Domex’s long standing channel partner in Pune and
                        other regions of Maharashtra.
                    </p>
                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>
