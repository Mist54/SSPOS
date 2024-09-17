using System.Windows;
using MahApps.Metro.Controls;
using SSPOS.UserControls;

namespace SSPOS
{
    public partial class Auth : MetroWindow
    {
        public Auth()
        {
            InitializeComponent();
            LoadLoginView();  // Load the login view by default
        }

        private void LoginToggleButton_Click(object sender, RoutedEventArgs e)
        {
            LoadLoginView();
        }

        private void SignupToggleButton_Click(object sender, RoutedEventArgs e)
        {
            LoadSignupView();
        }

        private void LoadLoginView()
        {
            AuthContentControl.Content = new LoginControl();
            LoginToggleButton.IsChecked = true;
            SignupToggleButton.IsChecked = false;
        }

        private void LoadSignupView()
        {
            AuthContentControl.Content = new SignupControl();
            LoginToggleButton.IsChecked = false;
            SignupToggleButton.IsChecked = true;
        }

        // Example event handler for the "Forgot your password" link
        private void ForgotPassword_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Password recovery is not yet implemented.", "Forgot Password", MessageBoxButton.OK, MessageBoxImage.Information);
        }
    }
}
