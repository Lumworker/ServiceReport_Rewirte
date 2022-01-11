using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;


using System.Data;
using System.Globalization;
using System.IO;

namespace ServiceReport_Rewirte
{
    public partial class WorkOrderReporting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void print_WorkOrder(object sender, EventArgs e)
        {
            Warning[] warnings;
            string[] streamIds;
            string mimeType = string.Empty;
            string encoding = string.Empty;
            string extension = string.Empty;
            string deviceInfo = null;
            String WorkOrder = snssWorkOrder.Text;
            String Report_ID = snssReport_ID.Text;

            DataTable dt = new DataTable();
            //String EmpJobTitle = snsEmpJobTitle.Text;
            dt = new ClassBrowseNew().SP_FS_Rpt_PMReport(WorkOrder);
            //Get Query
            ReportDataSource rds = new ReportDataSource("DataSet1", dt);
            // Setup the report viewer object and get the array of bytes
            ReportViewer viewer = new ReportViewer();
            viewer.Reset();
            viewer.ProcessingMode = ProcessingMode.Local;
            viewer.LocalReport.DataSources.Add(rds);
            viewer.LocalReport.ReportPath = Server.MapPath("./Report/PMReport.rdl");
            viewer.LocalReport.EnableHyperlinks = false;
            viewer.LocalReport.EnableExternalImages = true;
            ReportParameter[] param = new ReportParameter[1];
            param[0] = new ReportParameter("WorkOrder", WorkOrder);
            viewer.LocalReport.SetParameters(param);
            byte[] bytes = viewer.LocalReport.Render("PDF", deviceInfo, out mimeType, out encoding, out extension, out streamIds, out warnings);

            // Now that you have all the bytes representing the PDF report, buffer it and send it to the client.

            string path = System.Web.Hosting.HostingEnvironment.MapPath("~/");
            string FileName = Path.GetFullPath(Path.Combine(path, "..../Service_Report_FS_ListReport/" + WorkOrder+ "/ServiceReport_" + Report_ID + ".pdf"));
            Directory.CreateDirectory(Path.GetDirectoryName(FileName));

            using (FileStream fs = new FileStream(FileName, FileMode.Create))
            {

                byte[] data = new byte[fs.Length];
                fs.Write(bytes, 0, bytes.Length);
                fs.Close();
                //save the pdf byte to the folder

                Response.Buffer = true;
                Response.Clear();
                Response.ContentType = mimeType;
                Response.AddHeader("content-disposition", "attachment; filename=ServiceReport_"+ Report_ID + "." + extension);
                //Response.AddHeader("content-disposition", "attachment; filename=ServiceReport." + extension);
                Response.BinaryWrite(bytes); // create the file
                Response.Flush(); // send it to the client to download

            }
            
           



        }
    }
}