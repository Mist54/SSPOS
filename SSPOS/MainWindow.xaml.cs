using System;
using System.Windows;
using System.Windows.Controls;
using MahApps.Metro.Controls;
using System.Globalization;
using System.Windows.Data;

namespace SSPOS
{
    public partial class MainWindow : MetroWindow
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void SidebarMenu_OnItemInvoked(object sender, HamburgerMenuItemInvokedEventArgs e)
        {
            var menuItem = e.InvokedItem as HamburgerMenuIconItem;
            if (menuItem == null)
                return;

            switch (menuItem.Tag)
            {
                case "Billing":
                    MainContent.Navigate(new Billing()); // Using Billing as Page
                    break;
                case "Settings":
                    MainContent.Navigate(new Settings()); // Using Settings as Page
                    break;
                default:
                    MessageBox.Show("Unknown Menu Item");
                    break;
            }
        }
    }

    
}
