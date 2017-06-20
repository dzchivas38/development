using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Api_RandomNumber
{
    /// <summary>
    /// Summary description for test
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class test : System.Web.Services.WebService
    {

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = true, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public string HelloWorld()
        {
            return "Hello World";
        }
        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = true, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public object getAll()
        {
            using (var db = new Models.RandomNumberEntities())
            {
                var obj = db.tbltests.ToList();
                return obj;
            }
        }
    }
}
