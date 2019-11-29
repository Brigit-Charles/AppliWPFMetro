using System;
using System.Net;
using Dll_Metro;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.IO;
using Newtonsoft.Json;
using System.Collections;

namespace ConsoleApp2
{
    public class Program
    {
        static void Main()
        {
            MyRequest req = new MyRequest("5.7290103", "45.1858202", "500");

            foreach (KeyValuePair<String, List<String>> kv in req.GetData()) 
            {
                Console.WriteLine(kv.Key);
                foreach (string ligne in kv.Value)
                {
                    Console.WriteLine("\t" + ligne);
                } 
            }
        }
    }
}
