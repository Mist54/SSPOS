using System.Windows;
using System.Windows.Controls;

namespace SSPOS.UserControls
{
    /// <summary>
    /// Interaction logic for SignupControl.xaml
    /// </summary>
    public partial class SignupControl : UserControl
    {
        public SignupControl()
        {
            InitializeComponent();
        }

        // Event handler for the Sign Up button click
        private void SignupButton_Click(object sender, RoutedEventArgs e)
        {
            // Handle signup logic here
            string username = SignupUsername.Text;
            string password = SignupPassword.Password;
            string confirmPassword = SignupConfirmPassword.Password;

            // For demonstration purposes, we just show a message box.
            // Replace this with actual signup logic.
            if (password == confirmPassword)
            {
                MessageBox.Show($"Username: {username}\nPassword: {password}", "Signup Attempt", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            else
            {
                MessageBox.Show("Passwords do not match.", "Signup Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
