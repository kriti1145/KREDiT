using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.IO;
using System.Text;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;

/// <summary>
/// Summary description for ImageWebService
///  </summary>
[WebService(Namespace = "http://localhost/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class ImageWebService : System.Web.Services.WebService {

    public ImageWebService () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 

    }

    string curKey = "DGRC@NIC2020";
    string randomNum = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Millisecond.ToString();
    [WebMethod]
    public string InsertImage( string _path, string _Photo, string _filename)
    {
        //return "0";
        try
        {
            if (_path != "" && _Photo != "" && _filename != "")
            {
                string path = SaveImage(_Photo, _filename, ".jpeg", _path);

                return path;
            }
            else
            {
                return "0";
            }
        }
        catch (Exception ex)
        {
            return "0";
            throw;
        }

    }

    [WebMethod]
    public string InsertDoc(string _Doc, string _Docpath, string _filename, string _FileExt)
    {
        //return "0";
        try
        {
            if (_Docpath != "" && _Doc != "" && _filename != "")
            {
                string path = "";
                if (_FileExt.ToLower().Contains(".jpg") || _FileExt.ToLower().Contains(".jpeg") || _FileExt.ToLower().Contains(".png"))
                {
                    path = SaveImage(_Doc, _filename, _FileExt, _Docpath);
                }
                else
                {
                    path = InsertPDF(_Docpath, _Doc, _filename, _FileExt);
                }
                return path;
            }
            else
            {
                return "0";
            }
        }
        catch (Exception ex)
        {
            return "0";
            throw;
        }

    }

    [WebMethod]

    public string DeleteDOC(string _path)
    {

        try
        {
           
            if (File.Exists(Server.MapPath(_path)))
                File.Delete(Server.MapPath(_path));

            return "1";
        }
        catch (Exception ex)
        {
            return "0";
            throw;
        }

    }


    public string SaveImage(string image, string imageTitle, string ext, string path)
    {

        string ImageFolderPath = "";



        ImageFolderPath = HttpContext.Current.Server.MapPath(path); //path= "~/AGRFRM/" + "/Uploads/" + "/" + id.Trim() + "/"\\ hint


        if (!Directory.Exists(ImageFolderPath))
        {
            Directory.CreateDirectory(ImageFolderPath);
        }
        string fullUploadPathToDelete3 = Path.Combine(ImageFolderPath, imageTitle + ext);
        if (File.Exists(fullUploadPathToDelete3))
            File.Delete(fullUploadPathToDelete3);
        System.Drawing.Image convertedImage = ConvertToImage(image);

        try
        {
            System.IO.File.Delete(ImageFolderPath + imageTitle + ext);
            
            convertedImage.Save(ImageFolderPath + imageTitle + ext, System.Drawing.Imaging.ImageFormat.Jpeg);
           
            string _path = path + imageTitle + ext;
           
            path = _path.Replace(@"\", "/");
            return path;
        }
        catch (Exception ex)
        {
            return "0";
        }
    }

   

    public System.Drawing.Image ConvertToImage(string image)
    {

        byte[] imageBytes = Convert.FromBase64String(image);
        var ms = new MemoryStream(imageBytes, 0, imageBytes.Length);


        ms.Write(imageBytes, 0, imageBytes.Length);
        System.Drawing.Image img = System.Drawing.Image.FromStream(ms, true);
        return img;

    }


    [WebMethod]

    public string InsertPDF(string _path, string _Photo, string _filename, string _fileExt = ".pdf")
    {
        //return "0";
        try
        {
            if (_path != "" && _Photo != "" && _filename != "")
            {
                _filename = _filename + _fileExt;

                string path = Convert.ToString(WriteByteArrayToPdf(_Photo, _filename, _path));

                return path;
            }
            else
            {
                return "0";
            }
        }
        catch (Exception ex)
        {
            return "0";
            throw;
        }

    }


    [WebMethod]

    public string InsertPDF1(string _path, string _Photo, string _filename)
    {
       // return "0";
        try
        {
            if (_path != "" && _Photo != "" && _filename != "")
            {
                //_filename = _filename ;

                string path = Convert.ToString(WriteByteArrayToPdf(_Photo, _filename, _path));

                return path;
            }
            else
            {
                return "0";
            }
        }
        catch (Exception ex)
        {
            return ex.ToString();
            throw;
        }

    }


    public string WriteByteArrayToPdf(string inPDFByteArrayStream, string fileName,string pdfPath)
    {
        string i = "0";
        try
        {
            string pdflocation = pdfPath;
            byte[] data = Convert.FromBase64String(inPDFByteArrayStream);



            if (!Directory.Exists( Server.MapPath(pdflocation)))
            {
                Directory.CreateDirectory(Server.MapPath(pdflocation));
            }

            if (Directory.Exists(Server.MapPath(pdflocation)))
            {
                pdflocation = Server.MapPath(pdflocation) + fileName;
                System.IO.File.Delete(pdflocation);

                using (FileStream Writer = new System.IO.FileStream(pdflocation, FileMode.Create, FileAccess.Write))
                {

                    Writer.Write(data, 0, data.Length);
                }
                i = pdfPath+fileName;
            }
            else
            {
                i = "0";
               // throw new System.Exception("PDF Shared Location not found");
            }
        }
        catch
        {
            i = "0";
        }
        return i;

    }
    private string InsSaveFile(string _Image, string fileName, string pdfPath)
    {
        byte[] tobyte = Encoding.ASCII.GetBytes(_Image);
        string serverFileName = string.Empty;
        string uploadDirectory = string.Empty;
        string i = "0";
        try
        {
            uploadDirectory = pdfPath;

            uploadDirectory = Server.MapPath(uploadDirectory);
            if (!Directory.Exists(uploadDirectory))
            {
                Directory.CreateDirectory(uploadDirectory);
            }
            uploadDirectory = uploadDirectory + fileName + ".pdf";
            System.IO.File.WriteAllBytes(uploadDirectory, tobyte);
            i = pdfPath + fileName;
            

        }
        catch (Exception ee)
        {
            i = "0";
        }
        return i;
    }


    [WebMethod]

    public ReturnValue[] ViewDoc(string skey, string _path, string _Cap, string _Type)
    {
        List<ReturnValue> ReturnValue = new List<ReturnValue>();

        try
        {


            string key = Encryptor.PrivateKey.ToString();
            EncryptorNirikshan enc = new EncryptorNirikshan(Encryptor.PrivateKey);
            skey = enc.Decrypt(skey, curKey);

            //SoapHead.AuthenticationToken = enc.Decrypt(SoapHead.AuthenticationToken, skey);
            //if (SoapHead.IsUserCredentialsValid(SoapHead))
            //{
            _path = enc.Decrypt(_path, skey);
            _Type = enc.Decrypt(_Type, skey);
            _Cap = enc.Decrypt(_Cap, skey);


            if (_Cap != "NicCoop@123#")
            {
                return ReturnValue.ToArray();
            }
            if (_path != "" && _Type.ToUpper() == "JPEG")
            {

                string path = ImageToBase64(Server.MapPath(_path));

                ReturnValue R = new ReturnValue();
                R.Skey = enc.Encrypt(randomNum, curKey);
                R.SValue = path;
                R.cap = enc.Encrypt(_Cap, randomNum);
                ReturnValue.Add(R);
            }
            if (_path != "" && _Type.ToUpper() == "PDF")
            {

                string path = PDFToBase64(Server.MapPath(_path));

                ReturnValue R = new ReturnValue();
                R.Skey = enc.Encrypt(randomNum, curKey);
                R.SValue = path;
                R.cap = enc.Encrypt(_Cap, randomNum);
                ReturnValue.Add(R);
            }
            else
            {

                return ReturnValue.ToArray();
            }
            //}
        }
        catch (Exception ex)
        {
            ex.ToString();
            return ReturnValue.ToArray();
            throw;
        }

        return ReturnValue.ToArray();
    }





    [WebMethod]

    public ReturnValue[] ViewMergeDoc(string skey, string Filepath, string _Cap)
    {
        List<ReturnValue> ReturnValue = new List<ReturnValue>();

        try
        {


            string key = Encryptor.PrivateKey.ToString();
            EncryptorNirikshan enc = new EncryptorNirikshan(Encryptor.PrivateKey);
            skey = enc.Decrypt(skey, curKey);

            //SoapHead.AuthenticationToken = enc.Decrypt(SoapHead.AuthenticationToken, skey);
            //if (SoapHead.IsUserCredentialsValid(SoapHead))
            //{
            Filepath = enc.Decrypt(Filepath, skey);
          
            _Cap = enc.Decrypt(_Cap, skey);


            if (_Cap != "NicCoop@123#")
            {
                return ReturnValue.ToArray();
            }
            if (Filepath != "")
            {
                DirectoryInfo DI2 = new DirectoryInfo(Server.MapPath(Filepath));
                string FileName = DateTime.Now.Year.ToString() + DateTime.Now.Year.ToString("D4") + DateTime.Now.Month.ToString("D2") + DateTime.Now.Day.ToString("D2") + DateTime.Now.Hour.ToString("D2") + DateTime.Now.Minute.ToString("D2") + DateTime.Now.Second.ToString("D2") + ".PDF";
                string FolderPath = Server.MapPath("~/tempPdfMerge/");
                string FileFullPath = FolderPath + "//" + FileName;
                if (System.IO.Directory.Exists(FolderPath) == false)
                {
                    System.IO.Directory.CreateDirectory(FolderPath);

                }
                MergePDFs(FileFullPath, DI2);

                string path = PDFToBase64(FileFullPath);
              
              
                ReturnValue R = new ReturnValue();
                R.Skey = enc.Encrypt(randomNum, curKey);
                R.SValue = path;
                R.cap = enc.Encrypt(_Cap, randomNum);
             
                ReturnValue.Add(R);
              
            }
            
            else
            {

                return ReturnValue.ToArray();
            }
            //}
        }
        catch (Exception ex)
        {
            ex.ToString();
            return ReturnValue.ToArray();
            throw;
        }

        return ReturnValue.ToArray();
    }



    public class ReturnValue
    {
        public string Skey { get; set; }
        public string SValue { get; set; }
        public string cap { get; set; }
    }

    public static string PDFToBase64(string _path)
    {

        if (!string.IsNullOrEmpty(_path))
        {
            FileStream fs = new FileStream(_path,
                                           FileMode.Open,
                                           FileAccess.Read);
            byte[] filebytes = new byte[fs.Length];
            fs.Read(filebytes, 0, Convert.ToInt32(fs.Length));
            string encodedData = Convert.ToBase64String(filebytes, Base64FormattingOptions.InsertLineBreaks);

            return encodedData;




        }
        else
        {
            return "N";
        }
    }

    public static string ImageToBase64(string _imagePath)
    {
        string _base64String = null;

        using (System.Drawing.Image _image = System.Drawing.Image.FromFile(_imagePath))
        {
            using (MemoryStream _mStream = new MemoryStream())
            {
                _image.Save(_mStream, _image.RawFormat);
                byte[] _imageBytes = _mStream.ToArray();
                _base64String = Convert.ToBase64String(_imageBytes);

                return _base64String;
            }
        }
    }


    private void MergePDFs(string outPutFilePath, DirectoryInfo DI)
    {
        //Define a new output document and its size, type
        Document document = new Document(PageSize.LETTER, 5, 5, 5, 5);
        //Create blank output pdf file and get the stream to write on it.
        PdfWriter writer = PdfWriter.GetInstance(document, new FileStream(outPutFilePath, FileMode.Create));
        document.Open();
        List<PdfReader> readerList = new List<PdfReader>();
        foreach (var i in DI.GetFiles())
        {
            PdfReader pdfReader = new PdfReader(i.FullName);
            readerList.Add(pdfReader);
        }
        foreach (PdfReader reader in readerList)
        {
            for (int i = 1; i <= reader.NumberOfPages; i++)
            {
                PdfImportedPage page = writer.GetImportedPage(reader, i);

                iTextSharp.text.Image img = iTextSharp.text.Image.GetInstance(page);

                //img.SetAbsolutePosition(0, 0);
                img.ScaleToFit(document.PageSize.Width, document.PageSize.Height);


                document.Add(img);
            }
        }
        document.Close();

    }



}
