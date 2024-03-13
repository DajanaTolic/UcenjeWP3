using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS
{
    internal class E02VarijableTipoviPodatakaOperatori
    {


        public static void Izvedi()
        {
            int CijeliBroj;

            CijeliBroj = 7;
            Console.WriteLine(CijeliBroj);

            Console.WriteLine("Unesi cijeli broj");
            int Broj = int.Parse(Console.ReadLine());
            Console.WriteLine(CijeliBroj + Broj);

            string v1 = "Osijek";
            var v2 = "Edunova";

            Console.WriteLine(v1 + v2);

            float db = 3.14f;
            double vdb = 0.4958528;

            Console.WriteLine("Unesi visinu u metrima");
            float Visina = float.Parse(Console.ReadLine());


            Console.WriteLine(Visina);

            int NajveciBroj = int.MaxValue;
            Console.WriteLine(NajveciBroj + 1);

            int i = 2, j = 3;

            Console.WriteLine(i - j); //-1
            Console.WriteLine(i * j); //6
            Console.WriteLine(i / (float)j);//0,666

            //iz dvoznamenkastog broja ispiši prvi broj

            Console.Write("Unesi dvoznamenkasti broj: ");
            int dbroj = int.Parse(Console.ReadLine());
            Console.WriteLine(dbroj / 10);

            //Iz dvoznamenkastog broja ispiši drugi broj
            Console.WriteLine(dbroj % 10); //modulo je ostatak nakon cjelobrojnog djeljenja

            bool uvjet = true;// true ili false

            //operator jednakosti ==
            int k = 2, l = 2;
            Console.WriteLine(k==l);

            //različito !=
            Console.WriteLine(k!=l);

            Console.WriteLine("{0} {1} {2} {3}",k>l, k>=l, k<l, k<=l);

            //Uvećanje za 1

            int v = 1;
            Console.WriteLine(v);//1
            v = v + 1;
            Console.WriteLine(v);//2

            v += 1;
                Console.WriteLine(v);//3

            //inkrement i dekrement

            v = 1;
            //ispisati i uvećati


            Console.WriteLine(v++);
            //isto vrijedi i za dekrement npr. --v i v--





            int x = 2,  y = 1;
            x = x + ++y; //x=4, y=2
            y = --x; //x=3, y=3
            Console.WriteLine(x+y); //6

           




        }
    }
}
