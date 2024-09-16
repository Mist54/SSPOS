using MahApps.Metro.Controls;
using MahApps.Metro.Controls.Dialogs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace SSPOS
{
    public static class DialogHelper
    {
        // Global method to show a progress dialog with custom styles
        public static async Task<ProgressDialogController> ShowProgressDialog(string title, string message)
        {
            var metroWindow = Application.Current.MainWindow as MetroWindow;

            if (metroWindow == null)
            {
                throw new InvalidOperationException("MainWindow is not a MetroWindow");
            }

            // Show the progress dialog with custom style options
            var settings = new MetroDialogSettings()
            {
                AnimateShow = true,   // Add animation when showing the dialog
                AnimateHide = true,   // Add animation when hiding the dialog
                ColorScheme = MetroDialogColorScheme.Accented,  // Use the accent color for dialog
                AffirmativeButtonText = "Cancel",
                NegativeButtonText = "Please Wait..."
            };

            // Show the progress dialog with the title and message
            var controller = await metroWindow.ShowProgressAsync(title, message, false, settings);

            controller.SetIndeterminate(); // Indeterminate progress animation

            return controller; // Return the controller for further control (e.g., closing)
        }
    }
}
