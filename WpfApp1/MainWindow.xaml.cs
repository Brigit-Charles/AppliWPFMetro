using System; 
using System.Windows; 
using System.Windows.Input; 
using System.Windows.Media.Imaging; 

using Dll_Metro;
using WpfApp1.ViewModel;
namespace WpfApp1
{
    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();  
        }

        private void MyMainView_Loaded(object sender, RoutedEventArgs e)
        {
            // Constructeur est appelé au moment de l'ini de la vue.
            BusesViewModel viewModel = new BusesViewModel();
            myMainView.DataContext = viewModel;

        }

        private void MonImage_MouseEnter(object sender, MouseEventArgs e)
        {
            BitmapImage bi3 = new BitmapImage();
            bi3.BeginInit();
            bi3.UriSource = new Uri("/images/go-2.png", UriKind.Relative);
            bi3.EndInit();
            this.MonImage.Source = bi3;
        }

        private void MonImage_MouseLeave(object sender, MouseEventArgs e)
        {
            BitmapImage bi3 = new BitmapImage();
            bi3.BeginInit();
            bi3.UriSource = new Uri("/images/go.png", UriKind.Relative);
            bi3.EndInit();
            this.MonImage.Source = bi3;
        }
      
    }
}
