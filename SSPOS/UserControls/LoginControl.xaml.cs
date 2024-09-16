using System.Windows;
using System.Windows.Controls;

namespace SSPOS.UserControls
{
    /// <summary>
    /// Interaction logic for LoginControl.xaml
    /// </summary>
    public partial class LoginControl : UserControl
    {
        public LoginControl()
        {
            InitializeComponent();
        }

        // Event handler for the Login button click
        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            // Handle login logic here
            string username = LoginUsername.Text;
            string password = LoginPassword.Password;

            // For demonstration purposes, we just show a message box.
            // Replace this with actual authentication logic.
            MessageBox.Show($"Username: {username}\nPassword: {password}", "Login Attempt", MessageBoxButton.OK, MessageBoxImage.Information);
        }
    }
}
