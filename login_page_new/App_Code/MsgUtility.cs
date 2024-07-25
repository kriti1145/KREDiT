using System;
using System.Web;
using System.Text;
using System.Web.UI;
public class MsgUtility
{
    public MsgUtility()
	{
	}
    public static string UnicodeHexadecimal(string input)
    {
        string result = string.Empty;
        foreach (char c in input)
        {
            int tmp = c;
            result += String.Format("{0:x4}", (uint)System.Convert.ToUInt32(tmp.ToString()));
        }
        result = result.ToUpper();
        return result;
    }
    public static void ShowMessage(Page page, string Message)
    {
        page.ClientScript.RegisterStartupScript(page.GetType(), "Msg", "alert('" + Message + "');", true);
    }
    public static void ShowMessage(Page page, string Message, string navigateUrl)
    {
        string s = "alert('" + Message + "');var vers = navigator.appVersion;if(vers.indexOf('MSIE 7.0') != -1) { window.location.href='" + navigateUrl + "';} else{ window.location.href='" + navigateUrl + "';}";
        page.ClientScript.RegisterStartupScript(page.GetType(), "Information", s, true);
    }
    public static string Base64Encode(string str)
    {
        byte[] encbuff = Encoding.UTF8.GetBytes(str);
        return HttpServerUtility.UrlTokenEncode(encbuff);
    }
    public static string Base64Decode(string str)
    {
        byte[] decbuff = HttpServerUtility.UrlTokenDecode(str);
        return Encoding.UTF8.GetString(decbuff);
    }
}