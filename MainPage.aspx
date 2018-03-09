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
            font-style: italic;
            font-size: large;
        }
        .auto-style5 {
            color: #0000CC;
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
            <strong>Find out where to watch the movie:&nbsp; </strong>
        </p>
        <p>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
        </p>
        <p>
            More information including the directors and actors in the movie:</p>
        <p>
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource6">
                <Columns>
                    <asp:BoundField DataField="Director" HeaderText="Director" ReadOnly="True" SortExpression="Director" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT CONCAT(D.fname, ' ',   D.lname)  AS Director  FROM MOVIES AS M INNER JOIN DIRECTORS AS D ON M.id = D.movie_id WHERE (M.title = @title)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="title" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT L.location FROM [LOCATIONS] AS L, [MOVIES] as M WHERE M.id = L.movie_id AND [title] = @title;">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="title" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <strong><span class="auto-style4">Critically-Acclaimed Movies! Check these out!</span></strong></p>
        <p>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="Movie" HeaderText="Movie" SortExpression="Movie" />
                    <asp:BoundField DataField="User Rating" HeaderText="User Rating" SortExpression="User Rating" />
                    <asp:BoundField DataField="Rotten Tomatoes Score" HeaderText="Rotten Tomatoes Score" SortExpression="Rotten Tomatoes Score" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT title AS Movie, user_rating AS [User Rating], rt_rating AS [Rotten Tomatoes Score] FROM MOVIES AS M WHERE (user_rating &gt;= (SELECT AVG(user_rating) AS Expr1 FROM MOVIES)) AND (rt_rating &gt;= (SELECT AVG(rt_rating) AS Expr1 FROM MOVIES AS MOVIES_1))"></asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p class="auto-style5">
            <em style="font-weight: 700; font-size: large;">Check out movies that other users&#39; like you recommend, And movies that you might want to avoid for now. :)</em></p>
        <p>
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource5" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="Movie" HeaderText="Movie" ReadOnly="True" SortExpression="Movie" />
                    <asp:BoundField DataField="User Rating" HeaderText="User Rating" ReadOnly="True" SortExpression="User Rating" />
                    <asp:BoundField DataField="High/Low Rating" HeaderText="High/Low Rating" ReadOnly="True" SortExpression="High/Low Rating" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT title AS &quot;Movie&quot;, user_rating AS &quot;User Rating&quot;, 'High' AS &quot;High/Low Rating&quot;
	FROM MOVIES
	WHERE user_rating &gt;= 8
	UNION
		(SELECT title, user_rating, 'Low'
		 FROM MOVIES
		 WHERE user_rating &lt; 8 )"></asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <em><strong style="color: #FF3300; font-size: large">Maybe you want some laughter with your date at the theaters. Well here&#39;s a list of movies still available in theaters released 2017.</strong></em></p>
        <p>
            <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource7">
                <Columns>
                    <asp:BoundField DataField="2017 comedy movies still in theaters" HeaderText="2017 comedy movies still in theaters" SortExpression="2017 comedy movies still in theaters" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT MOVIES.title AS [2017 comedy movies still in theaters] FROM GENRES INNER JOIN MOVIES ON GENRES.movie_id = MOVIES.id INNER JOIN LOCATIONS ON MOVIES.id = LOCATIONS.movie_id WHERE (GENRES.genre = 'Comedy') AND (MOVIES.release_year = 2017) AND (LOCATIONS.location = 'Theaters')"></asp:SqlDataSource>
        </p>
        <p>
            Nah, forget it. Here is a list of the top 2017 Action movies so we can get that adrenaline pumping!</p>
        <p>
            <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource8" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="Top Action Movies of 2017" HeaderText="Top Action Movies of 2017" SortExpression="Top Action Movies of 2017" />
                    <asp:BoundField DataField="Rotten Tomatoes Score" HeaderText="Rotten Tomatoes Score" SortExpression="Rotten Tomatoes Score" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT MOVIES.title AS 'Top Action Movies of 2017', MOVIES.rt_rating AS 'Rotten Tomatoes Score' FROM MOVIES INNER JOIN GENRES ON MOVIES.id = GENRES.movie_id WHERE (GENRES.genre = 'Action') AND (MOVIES.rt_rating &gt;= 70) AND (MOVIES.release_year = 2017) ORDER BY 'Rotten Tomatoes Score' DESC"></asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
