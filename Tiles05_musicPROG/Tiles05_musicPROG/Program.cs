using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace Tiles05_musicPROG
{
    class Program
    {
        static void Main()
        {
            const string inpDir = "input";
            const string outDir = "output";

            IList<string> lines = new List<string>();
            string[] inpFiles = Directory.GetFiles(inpDir);
            foreach (string inpFile in inpFiles)
            {
                string outFile = inpFile;

                outFile = outFile.Replace(inpDir, String.Empty);
                outFile = outFile.Replace("\\", String.Empty);
                outFile = outFile.Replace("Trivial Pursuit", String.Empty);
                outFile = outFile.Replace(" ", String.Empty);
                outFile = outFile.Replace("-", String.Empty);
                
                string number = outFile.Substring(0, 3);
                string outName = "TP" + number;
                string outData = outDir + "\\" + outName + ".vgm";

                if (!File.Exists(outData))
                {
                    File.Copy(inpFile, outData);
                }

                string line = String.Format("vgm2psg {0}.vgm {0}.psg", outName);
                lines.Add(line);
            }

            File.WriteAllLines("bank6.bat", lines.ToArray());
            Console.WriteLine("Hello World!");
        }
    }
}
