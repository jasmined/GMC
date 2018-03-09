<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="GMCWebsite.WebForm1" %>

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
        .auto-style4 {
            color: #000099;
            background-color: #99CCFF;
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
            <asp:HyperLink ID="HyperLink2" runat="server" BorderColor="#6699FF" ForeColor="#000099" NavigateUrl="SearchByGenre.aspx" style="font-weight: 700; font-size: xx-large">Select movie based on genre:</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="Larger" Font-Underline="True" ForeColor="#0000CC" NavigateUrl="SearchByLocation.aspx">Search Movies By Desired Location</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="movieQueries.aspx" style="color: #000099; font-size: xx-large; background-color: #00FFFF">Link to 4 queries</asp:HyperLink>
        </p>
        <p>
            <strong><span class="auto-style4">Critically-acclaimed movies! Check these out.</span></strong></p>
        <p>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:BoundField DataField="Movie" HeaderText="Movie" SortExpression="Movie" />
                    <asp:BoundField DataField="Where to watch" HeaderText="Where to watch" SortExpression="Where to watch" />
                    <asp:BoundField DataField="User Rating" HeaderText="User Rating" SortExpression="User Rating" />
                    <asp:BoundField DataField="Rotten Tomatoes Score" HeaderText="Rotten Tomatoes Score" SortExpression="Rotten Tomatoes Score" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT M.title AS Movie, L.location AS [Where to watch], M.user_rating AS [User Rating], M.rt_rating AS [Rotten Tomatoes Score] FROM MOVIES AS M INNER JOIN LOCATIONS AS L ON M.id = L.movie_id WHERE (M.user_rating &gt;= (SELECT AVG(user_rating) AS Expr1 FROM MOVIES)) AND (M.rt_rating &gt;= (SELECT AVG(rt_rating) AS Expr1 FROM MOVIES AS MOVIES_1))"></asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
