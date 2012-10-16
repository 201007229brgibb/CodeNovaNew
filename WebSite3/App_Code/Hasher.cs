using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;

/// <summary>
/// Summary description for Hasher
/// </summary>
public class Hasher
{
    private SHA1 sha;

	public Hasher()
	{
        sha = new SHA1CryptoServiceProvider();
	}

    //returns a 16 character hashed string 
    public string hash(string data)
    {
        char[] charArr = data.ToCharArray();
        byte[] result = new byte[charArr.Length];

        for (int i = 0; i < charArr.Length; i++)
        {
            result[i] = Convert.ToByte(charArr[1]);
        }

        result = sha.ComputeHash(result);

        charArr = new char[16];
        for (int i = 0; i < 16; i++)
        {
            charArr[i] = Convert.ToChar(result[i]);
        }
        return new string(charArr);
    }
}