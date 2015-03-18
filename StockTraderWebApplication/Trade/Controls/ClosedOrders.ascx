<%@ Control Language="C#" AutoEventWireup="true"  CodeFile="ClosedOrders.ascx.cs" Inherits="Trade.Web.ClosedOrders" %>
<%@ Import Namespace="Trade.StockTraderWebApplicationModelClasses" %>
<%@ Import Namespace="Trade.StockTraderWebApplicationSettings" %>
<!--------------------------The Common Header + Order Alert ASP.NET User Control --------------> 
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
<table class="TradeHomeTableStyle">
<% if (closedOrderData!=null)
    if (closedOrderData.Count>0)
               {%> 
       <tr>    
            <td colspan="8">
             <table class="OrderAlertTableStyle">
             <tr >
                <td colspan="8" class="OrderAlertMessageStyle">Trade Alert: The following orders have completed.</td>
             </tr>
             <tr>
                <th class="InnerHeading">
                Order ID</th>
                <th class="InnerHeading">
                Order Status</th>
                <th class="InnerHeading">
                Creation Date</th>
                <th class="InnerHeading">
                Completion Date</th>
               <th class="InnerHeading">
                Txn Fee</th>
               <th class="InnerHeading">
                Type</th>
                <th class="InnerHeading">
                Symbol</th>
                <th class="InnerHeading">
                Quantity</th>
            </tr>     
            
            <%for (int i=0; i<closedOrderData.Count; i++)
                   { %>  
            <tr>
                <td class="InnerData">
                <%=closedOrderData[i].orderID%> </td>
                <td class="InnerData">
                <%=closedOrderData[i].orderStatus%></td>
                <td class="InnerData">
                <%=closedOrderData[i].openDate%></td>
                <td class="InnerData">
                <%=closedOrderData[i].completionDate%> </td>
                 <td class="InnerData" style="text-align:right">
                <%=closedOrderData[i].orderFee.ToString("C")%></td>
                <td class="InnerData">
                <%=closedOrderData[i].orderType%></td>
                <td class="InnerData">
                <%=closedOrderData[i].quoteLink%></td>
                 <td class="InnerData" style="text-align:right">
                <%=closedOrderData[i].quantity.ToString("N")%></td>
            </tr>      
            <%}%>
            </table>
            <br />
            
       </td>
    </tr>
  <%  } %>
</table>    
<!------------------------------End Order Alert Repeater Display ASP.NET User Control---------->
