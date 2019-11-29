using System;
using System.ComponentModel;

namespace Dll_Metro
{
    public class Message
    {
        private string mes1;

        public string Mes1
        {
            get { return this.mes1; }
            set
            {
                if (this.mes1 != value)
                {
                    this.mes1 = value;
                }
            }
        }
    }    

}
