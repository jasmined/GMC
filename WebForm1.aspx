<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="GMCWebsite.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            color: #0000CC;
            background-color: #99CCFF;
        }
        .auto-style3 {
            width: 1063px;
            height: 461px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 class="auto-style2">
            <img alt="" class="auto-style3" src="GMClogo.png" /></h1>
        <p>
            <em style="color: #000099; font-weight: 700; background-color: #FFFFFF">The simple, easy application to get movie ideas and relax. Specifically tailored for you.</em></p>
        <p>
            <strong>Select a movie:</strong>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="title" DataValueField="title">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [MOVIES]"></asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                    <asp:BoundField DataField="runtime" HeaderText="runtime" SortExpression="runtime" />
                    <asp:BoundField DataField="rating" HeaderText="rating" SortExpression="rating" />
                    <asp:BoundField DataField="rt_rating" HeaderText="rt_rating" SortExpression="rt_rating" />
                    <asp:BoundField DataField="user_rating" HeaderText="user_rating" SortExpression="user_rating" />
                    <asp:BoundField DataField="release_year" HeaderText="release_year" SortExpression="release_year" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [MOVIES] WHERE ([title] = @title)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="title" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            Select movie based on genre:
        </p>
        <p>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="genre" DataValueField="movie_id">
            </asp:CheckBoxList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [genre], [movie_id] FROM [GENRES]"></asp:SqlDataSource>
        </p>
        <p>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                    <asp:BoundField DataField="runtime" HeaderText="runtime" SortExpression="runtime" />
                    <asp:BoundField DataField="rating" HeaderText="rating" SortExpression="rating" />
                    <asp:BoundField DataField="rt_rating" HeaderText="rt_rating" SortExpression="rt_rating" />
                    <asp:BoundField DataField="user_rating" HeaderText="user_rating" SortExpression="user_rating" />
                    <asp:BoundField DataField="release_year" HeaderText="release_year" SortExpression="release_year" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [MOVIES] WHERE ([id] = @id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="CheckBoxList1" Name="id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="Larger" Font-Underline="True" ForeColor="#0000CC" NavigateUrl="SearchByLocation.aspx">Search Movies By Desired Location</asp:HyperLink>
        </p>
        <p>
            Sample Queries</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
