using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.ObjectModel;
using Dll_Metro;
using System.ComponentModel;
using System.Windows.Input;

namespace WpfApp1.ViewModel
{
    public class BusesViewModel : INotifyPropertyChanged
    {
        // Prop
        private double longitude;
        private double latitude;
        private double distance;
        //private Message message; 
        private string message; 

        private Dictionary<String, List<String>> busStop;

        // Lié au bouton  
        public ICommand SaveCommand
        {
            get; set;
        } 

        // Lié au bouton reset les datas 
        public ICommand ResetCommand
        {
            get; set;
        }

        // Constructeur pour insérer une puce 
        public BusesViewModel()
        {
            this.Longitude = 45.1858202; 
            this.Latitude = 5.7290103;
            this.Distance = 500;
            // Ici save commande est = à un new relay commande
            // Fonction qui retourne() () 
            // la fonction de rechargement des datas.  
            Message = "Il y a : ";
            SaveCommand = new RelayCommand(LoadBuses);
            ResetCommand = new RelayCommand(ResetBuses);
        }

        public string Message
        {
            get
            {
                return message;
            }
            set
            {
                if (message != value)
                {
                    message = value;
                    RaisePropertyChanged("Message");
                }
            }
        }
        public double Longitude {
            get {
                return longitude; 
                }
            set
            {
                if (longitude != value)
                {
                    longitude = value;
                    RaisePropertyChanged("Longitude"); 
                }
            } 
        }

        public double Latitude
        {
            get
            {
                return latitude;
            }
            set
            {
                if (latitude != value)
                {
                    latitude = value;
                    RaisePropertyChanged("Latitude");
                }
            }
        }

        public double Distance
        {
            get
            {
                return distance;
            }
            set
            {
                if (distance != value)
                {
                    distance = value;
                    RaisePropertyChanged("Distance");
                }
            }
        }
        public Dictionary<String, List<String>> BusStop
        {
            get { return busStop; }
            set
            {
                if (busStop != value)
                {
                    busStop = value;
                    RaisePropertyChanged("BusStop");
                }
            }
        }
          
        public void LoadBuses()
        {
            // 1- on récupère ici les données de la librairie 
            MyRequest req = new MyRequest(latitude.ToString().Replace(",", "."), longitude.ToString().Replace(",", "."), distance.ToString().Replace(",", "."));
            this.BusStop = req.GetData();
            Message = BusStop.Count().ToString();
        }
         
        public void ResetBuses()
        {
            this.BusStop = null;
            Message = "Pour ne plus rentrer à pieds !";
        }
        /// <summary>
        /// Permet la mise en veille des datas
        /// </summary>
        public event PropertyChangedEventHandler PropertyChanged;

        private void RaisePropertyChanged(string property)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(property));
            }
        }
    }
}
