using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS
{
    internal class Z03
    {
        public static void Izvedi()
        {
            //Program unosi tri cijela broja
            //Program ispisuje najmanji
            int a = 4, b = 7, c = 2;

            if (a<b && a<c)
            {
                Console.WriteLine(a);
            }
            else if (b<a && b<c)  
            {
                Console.WriteLine(b);
            }
            else 
            {
                Console.WriteLine(c);
            }
        }
    }
}
