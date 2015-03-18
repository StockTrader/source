<%@ Control Language="C#" AutoEventWireup="false"  CodeFile="Header.ascx.cs" Inherits="Trade.Web.Header" %>
<%@ OutputCache Duration ="30" VaryByParam="none" %>
<!--------------------------Example The Common Header + Order Alert ASP.NET User Control --------------> 
<table class= "HeaderTableStyle">
    <tr>
		<td><img alt="" src="Images/dotnet_logo.jpg" height="63"/></td>
        <td class="HeaderLeftStyle">
        StockTrader</td>
        <td class="HeaderRightStyle">.NET StockTrader Performance Application</td>
    </tr>
</table>
<table class="MenuTableStyle">
    <tr>
            <td class="Menu"><a href="Default.aspx">Welcome</a></td>
            <td class="Menu"><a href="TradeHome.aspx">Home</a></td>
            <td class="Menu"><a href="account.aspx">Account</a></td>
            <td class="Menu"><a href="portfolio.aspx">Portfolio</a></td>
            <td class="Menu"><a href="quotes.aspx?symbols=s:0,s:1,s:2,s:3,s:4">Quotes/Trade</a></td>
            <td class="Menu"><a href="" id="configlink" runat="server" >ConfigWeb</a></td>
            <td class="Menu"><a href="Glossary.aspx">Glossary</a></td>
            <td class="Menu"><a href="logout.aspx">Login/Logout</a></td>
    </tr>
</table>    
<!--------------------------End Global Header Table Declaration ---------------------------->
