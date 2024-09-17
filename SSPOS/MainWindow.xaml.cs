using System;
using System.Windows;
using System.Windows.Controls;
using MahApps.Metro.Controls;
using System.Globalization;
using System.Windows.Data;
using System.Threading.Tasks;

namespace SSPOS
{
    public partial class MainWindow : MetroWindow
    {
        public MainWindow()
        {
            InitializeComponent();
            
        }

        private async void SidebarMenu_OnItemInvoked(object sender, HamburgerMenuItemInvokedEventArgs e)
        {
            var menuItem = e.InvokedItem as HamburgerMenuIconItem;
            if (menuItem == null)
                return;

            switch (menuItem.Tag)
            {
                case "Billing":
                    MainContent.Navigate(new Billing()); // Navigate to Billing Page
                    break;
                case "Settings":
                    MainContent.Navigate(new Settings()); // Navigate to Settings Page
                    break;
                case "LogOut":
                    var controller = await DialogHelper.ShowProgressDialog("Logging Out", "Please wait while we log you out...");
                    await Task.Delay(10000);
                    await controller.CloseAsync();
                    Application.Current.Shutdown();
                    break;
                default:
                    MessageBox.Show("Unknown Menu Item");
                    break;
            }
        }
        protected void showDialog()
        {
            _ = DialogHelper.ShowProgressDialog("Logging Out", "Please wait while we log you out..."); // Call the global function
        }
    }
}
