//  .Net StockTrader Sample WCF Application for Benchmarking, Performance Analysis and Design Considerations for Service-Oriented Applications

using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Security;
using Trade.StockTraderWebApplicationSettings;
using Trade.StockTraderWebApplicationServiceClient;
using Trade.StockTraderWebApplicationModelClasses;

namespace Trade.Web
{
    /// <summary>
    /// Displays orders via a repeater, used on Account.aspx page.
    /// </summary>
    public partial class AccountOrders : System.Web.UI.UserControl
    {
        public int totalOrders;
        public int ordersRequested;
        public TotalOrdersUI orderData;
            
        protected override void OnLoad(EventArgs e)
        {
            BSLClient businessServicesClient = new BSLClient();
            string userid = HttpContext.Current.User.Identity.Name;
            if (Input.InputText(Request["action"], 20) == "showtoporders" && (Settings.interfaceMode != Settings.ACCESS_WebService_WebSphere))
            {
                ordersRequested = Settings.MAX_DISPLAY_TOP_ORDERS;
                orderData = businessServicesClient.getTopOrders(userid);
            }
            else
            {
                ordersRequested = Settings.MAX_DISPLAY_ORDERS;
                orderData = businessServicesClient.getOrders(userid);
            }
            if (orderData.orders.Count != 0)
            {
                AccountOrdersRepeater.DataSource = orderData.orders;
                AccountOrdersRepeater.DataBind();
            }
            totalOrders = orderData.orders.Count;
        }
    }
}
