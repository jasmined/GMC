<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="movieQueries.aspx.cs" Inherits="GMCWebsite._2017comedymovies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
        }
        .auto-style2 {
            width: 50px;
            cursor: pointer;
            height: 20px;
        }
        .auto-style3 {
            position: relative;
            overflow: visible;
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="highlight tab-size js-file-line-container" data-tab-size="8" style="box-sizing: border-box; border-spacing: 0px; border-collapse: collapse; tab-size: 8; color: rgb(36, 41, 46); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
                <tbody style="box-sizing: border-box;">
                    <tr style="box-sizing: border-box;">
                        <td id="LC6" class="auto-style1" style="box-sizing: border-box; padding: 0px 10px; position: relative; line-height: 20px; vertical-align: top; overflow: visible; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; color: rgb(36, 41, 46); word-wrap: normal; white-space: pre;"><span class="pl-c" style="box-sizing: border-box; color: rgb(106, 115, 125);">QUERY 1</span></td>
                    </tr>
                    <tr style="box-sizing: border-box;">
                        <td id="L7" class="blob-num js-line-number" data-line-number="7" style="box-sizing: border-box; padding: 0px 10px; width: 50px; min-width: 50px; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; line-height: 20px; color: rgba(27, 31, 35, 0.3); text-align: right; white-space: nowrap; vertical-align: top; cursor: pointer; user-select: none;"></td>
                        <td id="LC7" class="auto-style1" style="box-sizing: border-box; padding: 0px 10px; position: relative; line-height: 20px; vertical-align: top; overflow: visible; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; color: rgb(36, 41, 46); word-wrap: normal; white-space: pre;"><span class="pl-c" style="box-sizing: border-box; color: rgb(106, 115, 125);">-- Purpose: Retrieves movie titles</span></td>
                    </tr>
                    <tr style="box-sizing: border-box;">
                        <td id="L8" class="blob-num js-line-number" data-line-number="8" style="box-sizing: border-box; padding: 0px 10px; width: 50px; min-width: 50px; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; line-height: 20px; color: rgba(27, 31, 35, 0.3); text-align: right; white-space: nowrap; vertical-align: top; cursor: pointer; user-select: none;"><b>
                            <br />
                            <br />
                        </td>
                        <td id="LC8" class="blob-code blob-code-inner js-file-line" style="box-sizing: border-box; padding: 0px 10px; position: relative; line-height: 20px; vertical-align: top; overflow: visible; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; color: rgb(36, 41, 46); word-wrap: normal; white-space: pre;"><span class="pl-c" style="box-sizing: border-box; color: rgb(106, 115, 125);">-- Expected: A table displaying the title of 2017 movies that are still in theaters</span></b></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="2017 comedy movies still in theaters" HeaderText="2017 comedy movies still in theaters" SortExpression="2017 comedy movies still in theaters" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT MOVIES.title AS [2017 comedy movies still in theaters] FROM GENRES INNER JOIN MOVIES ON GENRES.movie_id = MOVIES.id INNER JOIN LOCATIONS ON MOVIES.id = LOCATIONS.movie_id WHERE (GENRES.genre = 'Comedy') AND (MOVIES.release_year = 2017) AND (LOCATIONS.location = 'Theaters')"></asp:SqlDataSource>
        <br />
        <br />
        <table class="highlight tab-size js-file-line-container" data-tab-size="8" style="box-sizing: border-box; border-spacing: 0px; border-collapse: collapse; tab-size: 8; color: rgb(36, 41, 46); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
            <tbody style="box-sizing: border-box;">
                <tr style="box-sizing: border-box;">
                    <td id="LC16" class="auto-style1" style="box-sizing: border-box; padding: 0px 10px; position: relative; line-height: 20px; vertical-align: top; overflow: visible; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; color: rgb(36, 41, 46); word-wrap: normal; white-space: pre;"><span class="pl-c" style="box-sizing: border-box; color: rgb(106, 115, 125);">QUERY 2</span></td>
                </tr>
                <tr style="box-sizing: border-box;">
                    <td id="L17" class="blob-num js-line-number" data-line-number="17" style="box-sizing: border-box; padding: 0px 10px; width: 50px; min-width: 50px; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; line-height: 20px; color: rgba(27, 31, 35, 0.3); text-align: right; white-space: nowrap; vertical-align: top; cursor: pointer; user-select: none;"></td>
                    <td id="LC17" class="auto-style1" style="box-sizing: border-box; padding: 0px 10px; position: relative; line-height: 20px; vertical-align: top; overflow: visible; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; color: rgb(36, 41, 46); word-wrap: normal; white-space: pre;"><span class="pl-c" style="box-sizing: border-box; color: rgb(106, 115, 125);">-- Purpose: Retrieves the release year, title, and the user ratings for movies</span></td>
                </tr>
                <tr style="box-sizing: border-box;">
                    <td id="L18" class="blob-num js-line-number" data-line-number="18" style="box-sizing: border-box; padding: 0px 10px; width: 50px; min-width: 50px; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; line-height: 20px; color: rgba(27, 31, 35, 0.3); text-align: right; white-space: nowrap; vertical-align: top; cursor: pointer; user-select: none;"></td>
                    <td id="LC18" class="auto-style1" style="box-sizing: border-box; padding: 0px 10px; position: relative; line-height: 20px; vertical-align: top; overflow: visible; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; color: rgb(36, 41, 46); word-wrap: normal; white-space: pre;"><span class="pl-c" style="box-sizing: border-box; color: rgb(106, 115, 125);">-- Expected: A table displaying movies with a user rating above an 8 (out of 10)</span></td>
                </tr>
                <tr style="box-sizing: border-box;">
                    <td id="L19" class="blob-num js-line-number" data-line-number="19" style="box-sizing: border-box; padding: 0px 10px; width: 50px; min-width: 50px; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; line-height: 20px; color: rgba(27, 31, 35, 0.3); text-align: right; white-space: nowrap; vertical-align: top; cursor: pointer; user-select: none;"></td>
                    <td id="LC19" class="auto-style1" style="box-sizing: border-box; padding: 0px 10px; position: relative; line-height: 20px; vertical-align: top; overflow: visible; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; color: rgb(36, 41, 46); word-wrap: normal; white-space: pre;"><span class="pl-c" style="box-sizing: border-box; color: rgb(106, 115, 125);">-- and grouped according to the release year, the title, and the user</span></td>
                </tr>
                <tr style="box-sizing: border-box;">
                    <td id="L20" class="blob-num js-line-number" data-line-number="20" style="box-sizing: border-box; padding: 0px 10px; width: 50px; min-width: 50px; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; line-height: 20px; color: rgba(27, 31, 35, 0.3); text-align: right; white-space: nowrap; vertical-align: top; cursor: pointer; user-select: none;"></td>
                    <td id="LC20" class="auto-style1" style="box-sizing: border-box; padding: 0px 10px; position: relative; line-height: 20px; vertical-align: top; overflow: visible; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; color: rgb(36, 41, 46); word-wrap: normal; white-space: pre;"><span class="pl-c" style="box-sizing: border-box; color: rgb(106, 115, 125);">-- rating the movie received</span></td>
                </tr>
            </tbody>
        </table>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="release_year" HeaderText="release_year" SortExpression="release_year" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="user_rating" HeaderText="user_rating" SortExpression="user_rating" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT release_year, title, user_rating
	FROM MOVIES
	WHERE user_rating &gt; ALL
			(SELECT user_rating FROM MOVIES WHERE user_rating &lt; 8)
			GROUP BY release_year, title, user_rating"></asp:SqlDataSource>
        <table class="highlight tab-size js-file-line-container" data-tab-size="8" style="box-sizing: border-box; border-spacing: 0px; border-collapse: collapse; tab-size: 8; color: rgb(36, 41, 46); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
            <tbody style="box-sizing: border-box;">
                <tr style="box-sizing: border-box;">
                    <td id="LC51" class="blob-code blob-code-inner js-file-line" style="box-sizing: border-box; padding: 0px 10px; position: relative; line-height: 20px; vertical-align: top; overflow: visible; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; color: rgb(36, 41, 46); word-wrap: normal; white-space: pre;"><span class="pl-c" style="box-sizing: border-box; color: rgb(106, 115, 125);">QUERY 3</span></td>
                </tr>
                <tr style="box-sizing: border-box;">
                    <td id="L52" class="blob-num js-line-number" data-line-number="52" style="box-sizing: border-box; padding: 0px 10px; width: 50px; min-width: 50px; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; line-height: 20px; color: rgba(27, 31, 35, 0.3); text-align: right; white-space: nowrap; vertical-align: top; cursor: pointer; user-select: none;"></td>
                    <td id="LC52" class="blob-code blob-code-inner js-file-line" style="box-sizing: border-box; padding: 0px 10px; position: relative; line-height: 20px; vertical-align: top; overflow: visible; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; color: rgb(36, 41, 46); word-wrap: normal; white-space: pre;"><span class="pl-c" style="box-sizing: border-box; color: rgb(106, 115, 125);">-- Purpose: Retrieves the title of a movie, its user rating, and whether the rating</span></td>
                </tr>
                <tr style="box-sizing: border-box;">
                    <td id="L53" class="blob-num js-line-number" data-line-number="53" style="box-sizing: border-box; padding: 0px 10px; width: 50px; min-width: 50px; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; line-height: 20px; color: rgba(27, 31, 35, 0.3); text-align: right; white-space: nowrap; vertical-align: top; cursor: pointer; user-select: none;"></td>
                    <td id="LC53" class="blob-code blob-code-inner js-file-line" style="box-sizing: border-box; padding: 0px 10px; position: relative; line-height: 20px; vertical-align: top; overflow: visible; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; color: rgb(36, 41, 46); word-wrap: normal; white-space: pre;"><span class="pl-c" style="box-sizing: border-box; color: rgb(106, 115, 125);">-- is considered a high or low rating</span></td>
                </tr>
                <tr style="box-sizing: border-box;">
                    <td id="L54" class="blob-num js-line-number" data-line-number="54" style="box-sizing: border-box; padding: 0px 10px; width: 50px; min-width: 50px; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; line-height: 20px; color: rgba(27, 31, 35, 0.3); text-align: right; white-space: nowrap; vertical-align: top; cursor: pointer; user-select: none;"></td>
                    <td id="LC54" class="blob-code blob-code-inner js-file-line" style="box-sizing: border-box; padding: 0px 10px; position: relative; line-height: 20px; vertical-align: top; overflow: visible; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; color: rgb(36, 41, 46); word-wrap: normal; white-space: pre;"><span class="pl-c" style="box-sizing: border-box; color: rgb(106, 115, 125);">-- Expected: A table displaying all movies and an indication that the movie is highly</span></td>
                </tr>
                <tr style="box-sizing: border-box;">
                    <td id="L55" class="blob-num js-line-number" data-line-number="55" style="box-sizing: border-box; padding: 0px 10px; width: 50px; min-width: 50px; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; line-height: 20px; color: rgba(27, 31, 35, 0.3); text-align: right; white-space: nowrap; vertical-align: top; cursor: pointer; user-select: none;"></td>
                    <td id="LC55" class="blob-code blob-code-inner js-file-line" style="box-sizing: border-box; padding: 0px 10px; position: relative; line-height: 20px; vertical-align: top; overflow: visible; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; color: rgb(36, 41, 46); word-wrap: normal; white-space: pre;">&nbsp;</td>
                </tr>
            </tbody>
        </table>
        <p>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource3" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="Movie" HeaderText="Movie" ReadOnly="True" SortExpression="Movie" />
                    <asp:BoundField DataField="User Rating" HeaderText="User Rating" ReadOnly="True" SortExpression="User Rating" />
                    <asp:BoundField DataField="High/Low Rating" HeaderText="High/Low Rating" ReadOnly="True" SortExpression="High/Low Rating" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT title AS &quot;Movie&quot;, user_rating AS &quot;User Rating&quot;, 'High' AS &quot;High/Low Rating&quot;
	FROM MOVIES
	WHERE user_rating &gt;= 8
	UNION
		(SELECT title, user_rating, 'Low'
		 FROM MOVIES
		 WHERE user_rating &lt; 8 )"></asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <table class="highlight tab-size js-file-line-container" data-tab-size="8" style="box-sizing: border-box; border-spacing: 0px; border-collapse: collapse; tab-size: 8; color: rgb(36, 41, 46); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
            <tbody style="box-sizing: border-box;">
                <tr style="box-sizing: border-box;">
                    <td id="LC67" class="blob-code blob-code-inner js-file-line" style="box-sizing: border-box; padding: 0px 10px; position: relative; line-height: 20px; vertical-align: top; overflow: visible; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; color: rgb(36, 41, 46); word-wrap: normal; white-space: pre;"><span class="pl-c" style="box-sizing: border-box; color: rgb(106, 115, 125);">QUERY 4</span></td>
                </tr>
                <tr style="box-sizing: border-box;">
                    <td id="L68" class="blob-num js-line-number" data-line-number="68" style="box-sizing: border-box; padding: 0px 10px; width: 50px; min-width: 50px; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; line-height: 20px; color: rgba(27, 31, 35, 0.3); text-align: right; white-space: nowrap; vertical-align: top; cursor: pointer; user-select: none;"></td>
                    <td id="LC68" class="blob-code blob-code-inner js-file-line" style="box-sizing: border-box; padding: 0px 10px; position: relative; line-height: 20px; vertical-align: top; overflow: visible; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; color: rgb(36, 41, 46); word-wrap: normal; white-space: pre;"><span class="pl-c" style="box-sizing: border-box; color: rgb(106, 115, 125);">-- Purpose: Retrieves the title of a movie and its Rotten Tomatoes score.</span></td>
                </tr>
                <tr style="box-sizing: border-box;">
                    <td id="L69" class="blob-num js-line-number" data-line-number="69" style="box-sizing: border-box; padding: 0px 10px; width: 50px; min-width: 50px; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; line-height: 20px; color: rgba(27, 31, 35, 0.3); text-align: right; white-space: nowrap; vertical-align: top; cursor: pointer; user-select: none;"></td>
                    <td id="LC69" class="blob-code blob-code-inner js-file-line" style="box-sizing: border-box; padding: 0px 10px; position: relative; line-height: 20px; vertical-align: top; overflow: visible; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; color: rgb(36, 41, 46); word-wrap: normal; white-space: pre;"><span class="pl-c" style="box-sizing: border-box; color: rgb(106, 115, 125);">-- Expected: A table displaying the top action movies (Rotten Tomatoes score &gt;= 70%) </span></td>
                </tr>
                <tr style="box-sizing: border-box;">
                    <td id="L70" class="auto-style2" data-line-number="70" style="box-sizing: border-box; padding: 0px 10px; min-width: 50px; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; line-height: 20px; color: rgba(27, 31, 35, 0.3); text-align: right; white-space: nowrap; vertical-align: top; user-select: none;"></td>
                    <td id="LC70" class="auto-style3" style="box-sizing: border-box; padding: 0px 10px; line-height: 20px; vertical-align: top; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; font-size: 12px; color: rgb(36, 41, 46); word-wrap: normal; white-space: pre;"><span class="pl-c" style="box-sizing: border-box; color: rgb(106, 115, 125);">-- of 2017. Ordering set to display the highest rated movies at the top</span></td>
                </tr>
            </tbody>
        </table>
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Top Action Movies of 2017" HeaderText="Top Action Movies of 2017" SortExpression="Top Action Movies of 2017" />
                <asp:BoundField DataField="Rotten Tomatoes Score" HeaderText="Rotten Tomatoes Score" SortExpression="Rotten Tomatoes Score" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT title AS 'Top Action Movies of 2017', rt_rating AS 'Rotten Tomatoes Score' 
	FROM MOVIES JOIN GENRES ON id = movie_id
	WHERE GENRES.genre = 'Action' AND MOVIES.rt_rating &gt;= 70 AND MOVIES.release_year = 2017
	ORDER BY rt_rating DESC"></asp:SqlDataSource>
    </form>
</body>
</html>
