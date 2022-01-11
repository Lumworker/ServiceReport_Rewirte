using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;

namespace ServiceReport_Rewirte
{
    /// <summary>
    /// Summary description for LoadExcel
    /// </summary>
    public class LoadExcel : IHttpHandler
    {
        public static String conDMZ = "Data Source=PK-Leave\\PKLEAVEDB;Initial Catalog=FS_PMReport;Persist Security Info=True;User ID=sa;Password=P@ssw0rd; Connect Timeout=0; pooling=true; Max Pool Size=50000";

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            try
            {
                //string filePath = "C:\\Users\\chonprakun.pa\\Desktop\\Service Report\\Temp";
                //for Test
                
                string webRootPath = context.Server.MapPath("~");
                string filePath = Path.GetFullPath(Path.Combine(webRootPath, "./Temp"));
                //1) Install Microsoft.ACE.OLEDB.12.0 in server 
                //2) Enable 32 bits Application  in  Advanced Setting IIS 
                //for Server

                if (!Directory.Exists(filePath))
                {
                    Directory.CreateDirectory(filePath);
                }
                string table = "";
                string type = context.Request.Form["type"];
                if (type == "WorkOrder")
                {
                    table = "TB_FS_PM_Temp_WorkOrder";
                }
                else if (type == "Report")
                {
                    table = "TB_FS_PM_Temp_ReportWorkOrder";
                }
                else if (type == "Checklist")
                {
                    table = "TB_FS_PM_Temp_Checklist";
                }
                else if (type == "Sparepart")
                {
                    table = "TB_FS_PM_Temp_Sparepart";
                }
                HttpPostedFile file = context.Request.Files["file"];
                string fileName = file.FileName;
                string str_excel = filePath + "\\" + fileName;

                file.SaveAs(str_excel);
                //string excelConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:/Users/Zach/Documents/test1.xls;Extended Properties=Excel 12.0,HDR=Yes;IMEX=1";
                string excelConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + str_excel + ";Extended Properties='Excel 8.0;HDR={1}'";

                // Create Connection to Excel Workbook


                using (OleDbConnection connection = new OleDbConnection(excelConnectionString))
                {

                    connection.Open(); //HERE IS WHERE THE ERROR IS

                    DataTable  dtSchema = connection.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, new object[] { null, null, null, "TABLE" });
                    string Sheet1 = dtSchema.Rows[0].Field<string>("TABLE_NAME");
                    //Get Sheet1 name
                    OleDbCommand command = new OleDbCommand("Select * FROM ["+ Sheet1 +"]", connection);


                    // Create DbDataReader to Data Worksheet
                    using (DbDataReader dr = command.ExecuteReader())
                    {
                        // SQL Server Connection String-----------

                        //string sqlConnectionString = "Data Source=SLDB1\\SYTELINEDBC1;Initial Catalog=ERP_PKS_App;Persist Security Info=True;User ID=dv;Password=@Wanlapa; Connect Timeout=0; pooling=true; Max Pool Size=50000";
                        // Bulk Copy to SQL Server
                        using (SqlBulkCopy bulkCopy = new SqlBulkCopy(conDMZ))
                        {
                            if (type == "WorkOrder")
                            {
                                bulkCopy.DestinationTableName = table;
                                // Set up the column mappings by name.
                                SqlBulkCopyColumnMapping WorkOrderNumber =
                                    new SqlBulkCopyColumnMapping("Work Order Number", "[WorkOrder]");
                                bulkCopy.ColumnMappings.Add(WorkOrderNumber);

                                SqlBulkCopyColumnMapping Subject =
                                new SqlBulkCopyColumnMapping("เรื่อง", "[Subject]");
                                bulkCopy.ColumnMappings.Add(Subject);

                                SqlBulkCopyColumnMapping Start_Date =
                                new SqlBulkCopyColumnMapping("เวลาเริ่มงาน", "[Start_Date]");
                                bulkCopy.ColumnMappings.Add(Start_Date);

                                SqlBulkCopyColumnMapping End_Date =
                                new SqlBulkCopyColumnMapping("เวลาสิ้นสุดงาน", "[End_Date]");
                                bulkCopy.ColumnMappings.Add(End_Date);

                                SqlBulkCopyColumnMapping Customer =
                                new SqlBulkCopyColumnMapping("ชื่อลูกค้า", "[Customer]");
                                bulkCopy.ColumnMappings.Add(Customer);

                                SqlBulkCopyColumnMapping Address =
                                new SqlBulkCopyColumnMapping("ที่อยู่", "[Address]");
                                bulkCopy.ColumnMappings.Add(Address);

                                SqlBulkCopyColumnMapping Machine_Data =
                                new SqlBulkCopyColumnMapping("Machine Data: Machine Data Name", "[Machine_Data]");
                                bulkCopy.ColumnMappings.Add(Machine_Data);

                                SqlBulkCopyColumnMapping Technician =
                                new SqlBulkCopyColumnMapping("Technician Name", "[Technician]");
                                bulkCopy.ColumnMappings.Add(Technician);

                                SqlBulkCopyColumnMapping Report_By =
                                new SqlBulkCopyColumnMapping("Report by", "[Report_By]");
                                bulkCopy.ColumnMappings.Add(Report_By);

                                SqlBulkCopyColumnMapping Checked_By =
                                new SqlBulkCopyColumnMapping("Checkedby", "[Checked_By]");
                                bulkCopy.ColumnMappings.Add(Checked_By);

                                SqlBulkCopyColumnMapping SRO =
                                new SqlBulkCopyColumnMapping("SRO", "[SRO]");
                                bulkCopy.ColumnMappings.Add(SRO);

                                SqlBulkCopyColumnMapping Service_Contract =
                                new SqlBulkCopyColumnMapping("Contract Number", "[Service_Contract]");
                                bulkCopy.ColumnMappings.Add(Service_Contract);
                                
                                SqlBulkCopyColumnMapping Compressor_Operating_Hour =
                                new SqlBulkCopyColumnMapping("Compressor Operating Hour", "[Compressor_Operating_Hour]");
                                bulkCopy.ColumnMappings.Add(Compressor_Operating_Hour);

                                SqlBulkCopyColumnMapping Oil_Pressure =
                                new SqlBulkCopyColumnMapping("Oil Pressure", "[Oil_Pressure]");
                                bulkCopy.ColumnMappings.Add(Oil_Pressure);

                                SqlBulkCopyColumnMapping Discharge_Pressure =
                                new SqlBulkCopyColumnMapping("Discharge Pressure", "[Discharge_Pressure]");
                                bulkCopy.ColumnMappings.Add(Discharge_Pressure);

                                SqlBulkCopyColumnMapping Freezing_Time_Per_Cycle =
                                new SqlBulkCopyColumnMapping("Freezing Time Per Cycle", "[Freezing_Time_Per_Cycle]");
                                bulkCopy.ColumnMappings.Add(Freezing_Time_Per_Cycle);

                                SqlBulkCopyColumnMapping Sunction_Pressure =
                                new SqlBulkCopyColumnMapping("Sunction Pressure", "[Sunction_Pressure]");
                                bulkCopy.ColumnMappings.Add(Sunction_Pressure);

                                SqlBulkCopyColumnMapping Ice_Capacity =
                                new SqlBulkCopyColumnMapping("Ice Capacity", "[Ice_Capacity]");
                                bulkCopy.ColumnMappings.Add(Ice_Capacity);

                                SqlBulkCopyColumnMapping Suggestion_Summary =
                                new SqlBulkCopyColumnMapping("สรุปรายละเอียดการเข้าซ่อม", "[Suggestion_Summary]");
                                bulkCopy.ColumnMappings.Add(Suggestion_Summary);

                                SqlBulkCopyColumnMapping WorkOrder_Record_Type =
                                new SqlBulkCopyColumnMapping("Work Order Record Type", "[WorkOrder_Record_Type]");
                                bulkCopy.ColumnMappings.Add(WorkOrder_Record_Type);

                                bulkCopy.WriteToServer(dr);
                            }
                            else if (type == "Report")
                            {
                                bulkCopy.DestinationTableName = table;
                                // Set up the column mappings by name.
                                SqlBulkCopyColumnMapping WorkOrder =
                                new SqlBulkCopyColumnMapping("Work Order Number", "[WorkOrder]");
                                bulkCopy.ColumnMappings.Add(WorkOrder);

                                SqlBulkCopyColumnMapping Refrigeration_Piping =
                                new SqlBulkCopyColumnMapping("Refrigeration Piping", "[Refrigeration_Piping]");
                                bulkCopy.ColumnMappings.Add(Refrigeration_Piping);

                                SqlBulkCopyColumnMapping Refrigeration_Piping_Remark_Suggestion =
                                new SqlBulkCopyColumnMapping("Refrigeration Piping Remark/Suggestion", "[Refrigeration_Piping_Remark_Suggestion]");
                                bulkCopy.ColumnMappings.Add(Refrigeration_Piping_Remark_Suggestion);

                                SqlBulkCopyColumnMapping Refrigeration_Piping_Result =
                                new SqlBulkCopyColumnMapping("Refrigeration Piping Result", "[Refrigeration_Piping_Result]");
                                bulkCopy.ColumnMappings.Add(Refrigeration_Piping_Result);

                                SqlBulkCopyColumnMapping Refrigeration_Piping_Solve =
                                new SqlBulkCopyColumnMapping("Refrigeration Piping Solve", "[Refrigeration_Piping_Solve]");
                                bulkCopy.ColumnMappings.Add(Refrigeration_Piping_Solve);
                                //Refrigeration

                                SqlBulkCopyColumnMapping Electrical_Current_Description =
                                new SqlBulkCopyColumnMapping("Electrical Current Description", "[Electrical_Current_Description]");
                                bulkCopy.ColumnMappings.Add(Electrical_Current_Description);

                                SqlBulkCopyColumnMapping Electrical_Current_Remark =
                                new SqlBulkCopyColumnMapping("Electrical Current Remark", "[Electrical_Current_Remark]");
                                bulkCopy.ColumnMappings.Add(Electrical_Current_Remark);

                                SqlBulkCopyColumnMapping Electrical_Current_Result =
                                new SqlBulkCopyColumnMapping("Electrical Current Result", "[Electrical_Current_Result]");
                                bulkCopy.ColumnMappings.Add(Electrical_Current_Result);

                                SqlBulkCopyColumnMapping Electrical_Current_Solve =
                                new SqlBulkCopyColumnMapping("Electrical Current Solve", "[Electrical_Current_Solve]");
                                bulkCopy.ColumnMappings.Add(Electrical_Current_Solve);
                                //Electrical

                                SqlBulkCopyColumnMapping Package_Freezer_Description =
                                new SqlBulkCopyColumnMapping("Package Freezer Description", "[Package_Freezer_Description]");
                                bulkCopy.ColumnMappings.Add(Package_Freezer_Description);

                                SqlBulkCopyColumnMapping Package_Freezer_Result =
                                new SqlBulkCopyColumnMapping("Package Freezer Remark", "[Package_Freezer_Result]");
                                bulkCopy.ColumnMappings.Add(Package_Freezer_Result);

                                SqlBulkCopyColumnMapping Package_Freezer_Remark =
                                new SqlBulkCopyColumnMapping("Package Freezer Result", "[Package_Freezer_Remark]");
                                bulkCopy.ColumnMappings.Add(Package_Freezer_Remark);

                                SqlBulkCopyColumnMapping Package_Freezer_Solve =
                                new SqlBulkCopyColumnMapping("Package Freezer Solve", "[Package_Freezer_Solve]");
                                bulkCopy.ColumnMappings.Add(Package_Freezer_Solve);
                                //Package_Freezer

                                SqlBulkCopyColumnMapping Package_Compressor_Description =
                                new SqlBulkCopyColumnMapping("Package Compressor Description", "[Package_Compressor_Description]");
                                bulkCopy.ColumnMappings.Add(Package_Compressor_Description);

                                SqlBulkCopyColumnMapping Package_Compressor_Result =
                                new SqlBulkCopyColumnMapping("Package Compressor Result", "[Package_Compressor_Result]");
                                bulkCopy.ColumnMappings.Add(Package_Compressor_Result);

                                SqlBulkCopyColumnMapping Package_Compressor_Remark =
                                new SqlBulkCopyColumnMapping("Package Compressor Remark", "[Package_Compressor_Remark]");
                                bulkCopy.ColumnMappings.Add(Package_Compressor_Remark);

                                SqlBulkCopyColumnMapping Package_Compressor_Solve =
                                new SqlBulkCopyColumnMapping("Package Compressor Solve", "[Package_Compressor_Solve]");
                                bulkCopy.ColumnMappings.Add(Package_Compressor_Solve);
                                //Package Compressor
                                
                                SqlBulkCopyColumnMapping Package_EVAP_Condenser_Description =
                                new SqlBulkCopyColumnMapping("Package EVAP/Condenser Description", "[Package_EVAP_Condenser_Description]");
                                bulkCopy.ColumnMappings.Add(Package_EVAP_Condenser_Description);

                                SqlBulkCopyColumnMapping Package_EVAP_Condenser_Remark =
                                new SqlBulkCopyColumnMapping("Package EVAP/Condenser Remark", "[Package_EVAP_Condenser_Remark]");
                                bulkCopy.ColumnMappings.Add(Package_EVAP_Condenser_Remark);

                                SqlBulkCopyColumnMapping Package_EVAP_Condenser_Result =
                                new SqlBulkCopyColumnMapping("Package EVAP/Condenser Result", "[Package_EVAP_Condenser_Result]");
                                bulkCopy.ColumnMappings.Add(Package_EVAP_Condenser_Result);

                                SqlBulkCopyColumnMapping Package_EVAP_Condenser_Solve =
                                new SqlBulkCopyColumnMapping("Package EVAP/Condenser Solve", "[Package_EVAP_Condenser_Solve]");
                                bulkCopy.ColumnMappings.Add(Package_EVAP_Condenser_Solve);
                                //Package Compressor
                                

                                bulkCopy.WriteToServer(dr);
                            }
                            else if (type == "Checklist")
                            {
                                bulkCopy.DestinationTableName = table;
                                // Set up the column mappings by name.
                                SqlBulkCopyColumnMapping WorkOrder =
                                    new SqlBulkCopyColumnMapping("Work Order Number", "[WorkOrder]");
                                bulkCopy.ColumnMappings.Add(WorkOrder);

                                SqlBulkCopyColumnMapping WorkType =
                                    new SqlBulkCopyColumnMapping("Work Type", "[WorkType]");
                                bulkCopy.ColumnMappings.Add(WorkType);

                                SqlBulkCopyColumnMapping WorkOrderLineItemNumber =
                                    new SqlBulkCopyColumnMapping("Work Order Line Item Number", "[WorkOrderLineItemNumber]");
                                bulkCopy.ColumnMappings.Add(WorkOrderLineItemNumber);

                                SqlBulkCopyColumnMapping Description =
                                    new SqlBulkCopyColumnMapping("Description", "[Description]");
                                bulkCopy.ColumnMappings.Add(Description);
                                
                                SqlBulkCopyColumnMapping model =
                                    new SqlBulkCopyColumnMapping("Model", "[model]");
                                bulkCopy.ColumnMappings.Add(model);
                                
                                SqlBulkCopyColumnMapping Result =
                                    new SqlBulkCopyColumnMapping("Result", "[Result]");
                                bulkCopy.ColumnMappings.Add(Result);
                                
                                SqlBulkCopyColumnMapping Value =
                                    new SqlBulkCopyColumnMapping("Value", "[Value]");
                                bulkCopy.ColumnMappings.Add(Value);
                                
                                SqlBulkCopyColumnMapping Solution =
                                    new SqlBulkCopyColumnMapping("Solution", "[Solution]");
                                bulkCopy.ColumnMappings.Add(Solution);
                                
                                SqlBulkCopyColumnMapping Problem =
                                    new SqlBulkCopyColumnMapping("Problem", "[Problem]");
                                bulkCopy.ColumnMappings.Add(Problem);
                                
                                SqlBulkCopyColumnMapping Fixed =
                                    new SqlBulkCopyColumnMapping("Fixed Value", "[Fixed]");
                                bulkCopy.ColumnMappings.Add(Fixed);
                                
                                
                                
                                bulkCopy.WriteToServer(dr);
                            }
                            else if (type == "Sparepart")
                            {
                                bulkCopy.DestinationTableName = table;
                                // Set up the column mappings by name.
                                SqlBulkCopyColumnMapping WorkOrder =
                                    new SqlBulkCopyColumnMapping("Work Order Number", "[WorkOrder]");
                                bulkCopy.ColumnMappings.Add(WorkOrder);

                                SqlBulkCopyColumnMapping Item =
                                new SqlBulkCopyColumnMapping("Product Consumed Number", "[Item]");
                                bulkCopy.ColumnMappings.Add(Item);

                                SqlBulkCopyColumnMapping Item_Desc =
                                new SqlBulkCopyColumnMapping("Product Description", "[Item_Desc]");
                                bulkCopy.ColumnMappings.Add(Item_Desc);

                                SqlBulkCopyColumnMapping Qty =
                                new SqlBulkCopyColumnMapping("Quantity Consumed", "[Qty]");
                                bulkCopy.ColumnMappings.Add(Qty);

                                SqlBulkCopyColumnMapping Item_Size =
                                new SqlBulkCopyColumnMapping("Unit of Measurement Text", "[Item_Size]");
                                bulkCopy.ColumnMappings.Add(Item_Size);
                                
                                bulkCopy.WriteToServer(dr);
                            }
                            
                        }
                    }
                }
                //UpdateRefID();
                if (System.IO.File.Exists(str_excel))
                {
                    try
                    {
                        System.IO.File.Delete(str_excel);
                    }
                    catch (IOException ex)
                    {
                        context.Response.Write(ex);
                    }
                }

                context.Response.Write(str_excel);
            }
            catch (Exception ex)
            {
                context.Response.Write(ex.ToString());
                //context.Response.Write("Error");
            }


        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}