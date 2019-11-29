using System;
using System.Net;
using System.IO;
using System.Collections.Generic;
using Newtonsoft.Json;

namespace Dll_Metro
{
    public class MyRequest
    {
        private string latitude;
        private string longitude;
        private string distance;
         
        public MyRequest(string latitude, string longitude, string distance)
        {
            this.latitude = latitude;
            this.longitude = longitude;
            this.distance = distance; 
        }

        private string GetMyRequest()
        {
            WebRequest request = WebRequest.Create("http://data.metromobilite.fr/api/linesNear/json?x="+latitude+"&y="+longitude+"&dist="+distance+"&details=true");

            WebResponse response = request.GetResponse(); 
            Stream dataStream = response.GetResponseStream();
            StreamReader reader = new StreamReader(dataStream);
            
            string responseFromServer = reader.ReadToEnd(); 
            reader.Close();
            dataStream.Close();
            response.Close(); 

            return responseFromServer;
        }

        public Dictionary<String, List<String>> GetData()
        {
            List<BusStop> busStops = JsonConvert.DeserializeObject<List<BusStop>>(GetMyRequest());

            Dictionary<string, List<string>> dico = new Dictionary<string, List<string>>();
            foreach (BusStop arret in busStops)
            {
                if (!dico.ContainsKey(arret.name))
                {
                    string key = arret.name;

                    List<string> value = arret.lines;

                    dico.Add(key, value);
                }
                else
                {
                    List<string> lines = arret.lines;
                    foreach (string l in arret.lines)
                    {
                        if (!dico[arret.name].Contains(l))
                        {
                            dico[arret.name].Add(l);
                        }
                    }
                }
            }

            return dico;
        }
    }
}
 