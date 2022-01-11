using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Collections.Specialized;
using System.Globalization;
using System.Text;
using System.Collections.Generic;
using System.Collections;
using System.Web.UI;
using System.Configuration;
using System.IO;
using System.Web.UI.WebControls;

namespace ServiceReport_Rewirte
{
    public class ClassBrowseNew
    {
        public static String conDMZ = "Data Source=PK-Leave\\PKLEAVEDB;Initial Catalog=FS_PMReport;Persist Security Info=True;User ID=sa;Password=P@ssw0rd; Connect Timeout=0; pooling=true; Max Pool Size=50000";
        public static String conPM = "Data Source=PK-Leave\\PKLEAVEDB;Initial Catalog=PMOnline;Persist Security Info=True;User ID=sa;Password=P@ssw0rd; Connect Timeout=0; pooling=true; Max Pool Size=50000";
        public static String conFS_PMReport = "Data Source=PK-Leave\\PKLEAVEDB;Initial Catalog=FS_PMReport;Persist Security Info=True;User ID=sa;Password=P@ssw0rd; Connect Timeout=0; pooling=true; Max Pool Size=50000";
        public List<ArrayList> Signin(string username, string password)
        {
            List<ArrayList> Signin = new List<ArrayList>();
            using (SqlConnection connection = new SqlConnection(conFS_PMReport))
            {
                string sql = "SELECT [Emp_Num],[pass_id] FROM [VW_PMReport_Login] ";

                sql += "WHERE [Emp_Num] = '" + username + "' AND [pass_id] = '" + password + "'";

                using (SqlCommand cmd = new SqlCommand(sql, connection))
                {
                    cmd.CommandType = CommandType.Text;
                    connection.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            Signin.Add(detail);
                        }
                    }
                    connection.Close();
                }
            }
            return Signin;
        }
        

        public List<ArrayList> TB_FS_PM_WorkOrder(string search)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conDMZ))
            {
                string sql = "SELECT [ID],[WorkOrder],[Subject],[Start_Date],[End_Date],[Customer],[Address],[Machine_Data]" +
                    ",[Technician],[Report_By],[Checked_By],[SRO],[Service_Contract],[WorkOrder_Record_Type]  FROM[FS_PMReport].[dbo].[TB_FS_PM_WorkOrder]";
                if(search != "")
                {
                    sql += " WHERE [Customer] like '%" + search + "%' OR [Service_Contract] like '%" + search + "%' OR [WorkOrder] like '%" + search + "%'";
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }
        public List<ArrayList> TB_FS_PM_WorkOrder_PM_only(string search)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conDMZ))
            {
                string sql = "SELECT [ID],[WorkOrder],[Subject],[Start_Date],[End_Date],[Customer],[Address],[Machine_Data]" +
                    ",[Technician],[Report_By],[Checked_By],[SRO],[Service_Contract],[WorkOrder_Record_Type]  FROM[FS_PMReport].[dbo].[TB_FS_PM_WorkOrder]";
                sql += " WHERE [WorkOrder_Record_Type]='PM Work Order' ";
                if(search != "")
                {
                    sql += " AND [Customer] like '%" + search + "%' OR [Service_Contract] like '%" + search + "%' OR [WorkOrder] like '%" + search + "%'";
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }
        public List<ArrayList> TB_FS_PM_WorkOrder_Service_only(string search)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conDMZ))
            {
                string sql = "SELECT [ID],[WorkOrder],[Subject],[Start_Date],[End_Date],[Customer],[Address],[Machine_Data]" +
                    ",[Technician],[Report_By],[Checked_By],[SRO],[Service_Contract],[WorkOrder_Record_Type]  FROM[FS_PMReport].[dbo].[TB_FS_PM_WorkOrder]";
                sql += " WHERE [WorkOrder_Record_Type]='Service Work Order' ";
                if (search != "")
                {
                    sql += " AND [Customer] like '%" + search + "%' OR [Subject] like '%" + search + "%' OR [WorkOrder] like '%" + search + "%'";
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }
        public List<ArrayList> VW_FS_PM_WorkOrder_Report_Title(string WorkOrder)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conDMZ))
            {
                string sql = "SELECT [WorkOrder],[Subject],[Start_Date],[End_Date],[Customer],[Address],[Machine_Data],[Technician],[Report_By],[Checked_By],[SRO],[Service_Contract],[ID_information],[Compressor_Operating_Hour],[Oil_Pressure],[Discharge_Pressure],[Freezing_Time_Per_Cycle],[Sunction_Pressure],[Ice_Capacity],[Suggestion_Summary] FROM [FS_PMReport].[dbo].[VW_FS_PM_WorkOrder_Report_Title]";
                if(WorkOrder != "")
                {
                    sql += " WHERE [WorkOrder] = '" + WorkOrder + "'";
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }
        public List<ArrayList> TB_FS_PM_Sparepart(string WorkOrder)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conDMZ))
            {
                string sql = "SELECT [ID],[WorkOrder],[Item],[Item_Desc],[Qty],[Item_Size]FROM [FS_PMReport].[dbo].[TB_FS_PM_Sparepart]";
                if (WorkOrder != "")
                {
                    sql += " WHERE [WorkOrder] = '" + WorkOrder + "'";
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }
        public List<ArrayList> TB_FS_PM_Electrical_Current(string WorkOrder)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conDMZ))
            {
                string sql = "SELECT [ID],[WorkOrder],[Electrical_Current_Description],[Electrical_Current_Remark],[Electrical_Current_Result],[Electrical_Current_Solve],[Electrical_Current_Before_IMG],[Electrical_Current_During_IMG],[Electrical_Current_After_IMG] FROM [FS_PMReport].[dbo].[TB_FS_PM_Electrical_Current]";
                if (WorkOrder != "")
                {
                    sql += " WHERE [WorkOrder] = '" + WorkOrder + "'";
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }
        public List<ArrayList> TB_FS_PM_Package_Comp(string WorkOrder)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conDMZ))
            {
                string sql = "SELECT TOP (1000) [ID],[WorkOrder],[Package_Compressor_Description],[Package_Compressor_Result],[Package_Compressor_Remark],[Package_Compressor_Solve],[Package_Comp_Before_IMG],[Package_Comp_During_IMG],[Package_Comp_After_IMG]FROM [FS_PMReport].[dbo].[TB_FS_PM_Package_Comp]";
                if (WorkOrder != "")
                {
                    sql += " WHERE [WorkOrder] = '" + WorkOrder + "'";
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }
        public List<ArrayList> TB_FS_PM_Package_EV_Con(string WorkOrder)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conDMZ))
            {
                string sql = "SELECT TOP (1000) [ID],[WorkOrder],[Package_EVAP_Condenser_Description],[Package_EVAP_Condenser_Result],[Package_EVAP_Condenser_Remark],[Package_EVAP_Condenser_Solve],[Package_Evap_Before_IMG],[Package_Evap_During_IMG],[Package_Evap_After_IMG]  FROM [FS_PMReport].[dbo].[TB_FS_PM_Package_EV_Con]";
                if (WorkOrder != "")
                {
                    sql += " WHERE [WorkOrder] = '" + WorkOrder + "'";
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }
        public List<ArrayList> TB_FS_PM_Package_Freezer(string WorkOrder)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conDMZ))
            {
                string sql = "SELECT TOP (1000) [ID],[WorkOrder],[Package_Freezer_Description],[Package_Freezer_Result],[Package_Freezer_Remark],[Package_Freezer_Solve],[Package_Freezer_Before_IMG],[Package_Freezer_During_IMG],[Package_Freezer_After_IMG]  FROM [FS_PMReport].[dbo].[TB_FS_PM_Package_Freezer]";
                if (WorkOrder != "")
                {
                    sql += " WHERE [WorkOrder] = '" + WorkOrder + "'";
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }
        public List<ArrayList> TB_FS_PM_Refrigeration(string WorkOrder)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conDMZ))
            {
                string sql = "SELECT TOP (1000) [ID],[WorkOrder],[Refrigeration_Piping],[Refrigeration_Piping_Remark_Suggestion],[Refrigeration_Piping_Result],[Refrigeration_Piping_Solve],[Refrigeration_Before_Img],[Refrigeration_During_Img],[Refrigeration_After_Img]  FROM [FS_PMReport].[dbo].[TB_FS_PM_Refrigeration]";
                if (WorkOrder != "")
                {
                    sql += " WHERE [WorkOrder] = '" + WorkOrder + "'";
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }
        public List<ArrayList> TB_FS_PM_Checklist(string WorkOrder)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conDMZ))
            {
                string sql = "SELECT  [ID],[WorkOrder],[WorkType],[WorkOrderLineItemNumber],[Description],[Model],[Result],[Value],[Solution],[Problem],[Fixed],[CheckList_Before],[CheckList_During],[CheckList_After] FROM [dbo].[TB_FS_PM_Checklist]";
                       sql += " WHERE [WorkOrder] = '" + WorkOrder + "'";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }
        public List<ArrayList> Search_TB_FS_PM_Checklist(string WorkOrder,string search)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conDMZ))
            {
                string sql = "SELECT  [ID],[WorkOrder],[WorkType],[WorkOrderLineItemNumber],[Description],[Model],[Result],[Value],[Solution],[Problem],[Fixed],[CheckList_Before],[CheckList_During],[CheckList_After] FROM [dbo].[TB_FS_PM_Checklist]";
                sql += " WHERE [WorkOrder] = '" + WorkOrder + "'";
                if (search != "")
                {
                    sql += " AND  ([WorkOrderLineItemNumber] like '%" + search + "%'  OR [Model] like '%" + search + "%'  ) ";
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }
        public List<ArrayList> GetTB_FS_PM_Checklist(string WorkOrder,string WorkOrderLineItemNumber)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conDMZ))
            {
                string sql = "SELECT  [ID],[WorkOrder],[WorkType],[WorkOrderLineItemNumber],[Description],[Model],[Result],[Value],[Solution],[Problem],[Fixed],[CheckList_Before],[CheckList_During],[CheckList_After] FROM [dbo].[TB_FS_PM_Checklist]";
                sql += " WHERE [WorkOrder] = '" + WorkOrder + "'  AND  [WorkOrderLineItemNumber] = '" + WorkOrderLineItemNumber + "'  ";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }
        public List<ArrayList> GetTB_FS_PM_ServiceCall(string WorkOrder,string WorkOrderLineItemNumber,string type)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conDMZ))
            {
                string sql = "SELECT [ID],[WorkOrder],[Subject],[Service_Call_Before_IMG],[Service_Call_During_IMG],[Service_Call_After_IMG],[Update_By],[WorkOrderLineItemNumber],[Type] FROM [dbo].[TB_FS_PM_ServiceCall] ";
                sql += " WHERE [WorkOrder] = '" + WorkOrder + "' AND [Type]='"+ type + "' ";
                if (WorkOrderLineItemNumber != "")
                {
                    sql += "AND  [WorkOrderLineItemNumber] = '" + WorkOrderLineItemNumber + "'  ";
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }

        public List<ArrayList> DELETE_TB_FS_PM_Temp_WorkOrder()
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conDMZ))
            {
                string sql = "DELETE FROM [dbo].[TB_FS_PM_Temp_WorkOrder]";
               
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }

        public List<ArrayList> DELETE_TB_FS_PM_Temp_Checklist()
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conDMZ))
            {
                string sql = "DELETE FROM[dbo].[TB_FS_PM_Temp_Checklist]";
               
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }

        public List<ArrayList> DELETE_TB_FS_PM_Temp_ReportWorkOrder()
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conDMZ))
            {
                string sql = "DELETE FROM [dbo].[TB_FS_PM_Temp_ReportWorkOrder]";
               
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }

        public List<ArrayList> DELETE_TB_FS_PM_Temp_Sparepart()
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conDMZ))
            {
                string sql = "DELETE FROM [dbo].[TB_FS_PM_Temp_Sparepart]";
               
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }

        public List<ArrayList> TB_FS_PM_ListReport(string WorkOrder)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conDMZ))
            {
                string sql = "SELECT [ID],[WorkOrder],[Path],[Create_By],[Create_Date] FROM [FS_PMReport].[dbo].[TB_FS_PM_ListReport]";
                 sql += " WHERE [WorkOrder]= '"+ WorkOrder + "' ORDER BY ID DESC";
               
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }

        public List<ArrayList> Delete_TB_FS_PM_ServiceCall(string ID)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conDMZ))
            {
                string sql = "DELETE FROM [dbo].[TB_FS_PM_ServiceCall] WHERE [ID] = '"+ID+"'";
               
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }

        public void SP_FS_PM_ReportIMG(string WorkOrder)
        {
            SqlConnection con = new SqlConnection(conDMZ);
            SqlCommand cmd = new SqlCommand("SP_FS_PM_ReportIMG", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("WorkOrder", WorkOrder);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void SP_FS_PM_Temp_WorkOrder(string username)
        {
            SqlConnection con = new SqlConnection(conDMZ);
            SqlCommand cmd = new SqlCommand("SP_FS_PM_Temp_WorkOrder", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Update_By", username);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void SP_FS_PM_Temp_ReportWorkOrder(string username)
        {
            SqlConnection con = new SqlConnection(conDMZ);
            SqlCommand cmd = new SqlCommand("SP_FS_PM_Temp_ReportWorkOrder", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Update_By", username);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void SP_FS_PM_Temp_Checklist(string username)
        {
            SqlConnection con = new SqlConnection(conDMZ);
            SqlCommand cmd = new SqlCommand("SP_FS_PM_Temp_Checklist", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Update_By", username);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void SP_FS_PM_Temp_Sparepart(string username)
        {
            SqlConnection con = new SqlConnection(conDMZ);
            SqlCommand cmd = new SqlCommand("SP_FS_PM_Temp_Sparepart", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Update_By", username);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void SP_FS_PM_CheckListIMG(string WorkOrder, string WorkOrderLineItemNumber,string username)
        {
            SqlConnection con = new SqlConnection(conDMZ);
            SqlCommand cmd = new SqlCommand("SP_FS_PM_CheckListIMG", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("WorkOrder", WorkOrder);
            cmd.Parameters.AddWithValue("WorkOrderLineItemNumber", WorkOrderLineItemNumber);
            cmd.Parameters.AddWithValue("Update_By", username);
            con.Open();
            //cmd.ExecuteNonQuery();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataTable SP_FS_Rpt_PMReport(string WorkOrder)
        {
            string sql = "EXEC SP_FS_Rpt_PMReport '" + WorkOrder + "'";
            DataTable DT = new DataTable();
            SqlConnection connection = new SqlConnection(conDMZ);
            SqlCommand cmd = new SqlCommand(sql, connection);
            try
            {
                connection.Open();
                cmd.Connection = connection;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sql;
                cmd.CommandTimeout = 0;
                DT.Load(cmd.ExecuteReader());
            }
            catch (SqlException ex)
            {
                connection.Close();
                cmd.Dispose();
                return DT;
            }
            connection.Close();
            cmd.Dispose();
            return DT;
        }
        public string SP_FS_PM_ListReport(string WorkOrder, string username)
        {
            SqlConnection con = new SqlConnection(conDMZ);
            SqlCommand cmd = new SqlCommand("SP_FS_PM_ListReport", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("WorkOrder", WorkOrder);
            cmd.Parameters.AddWithValue("Update_By", username);
            con.Open();
            //cmd.ExecuteNonQuery();
            SqlDataReader rs = cmd.ExecuteReader();
            string returnData = "";
            if (rs.Read())
            {
                returnData = rs["ID"].ToString();
            }
            con.Close();
            return returnData;
        }
        public List<String[]> SP_FS_PM_ServiceCall_IMG(int ID, string WorkOrder, string WorkOrderLineItemNumber, string Subject, string Type, string username)
        {
            SqlConnection con = new SqlConnection(conDMZ);
            SqlCommand cmd = new SqlCommand("SP_FS_PM_ServiceCall_IMG", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", ID);
            cmd.Parameters.AddWithValue("WorkOrder", WorkOrder);
            cmd.Parameters.AddWithValue("WorkOrderLineItemNumber", WorkOrderLineItemNumber);
            cmd.Parameters.AddWithValue("Subject", Subject);
            cmd.Parameters.AddWithValue("Type", Type);
            cmd.Parameters.AddWithValue("Update_By", username);
            con.Open();
            //cmd.ExecuteNonQuery();
            SqlDataReader rs = cmd.ExecuteReader();
            List<String[]> GetData = new List<String[]>();
            if (rs.Read())
            {
                String[] Data = new String[2];
                Data[0] = rs["ID"].ToString();
                Data[1] = rs["WorkOrderLineItemNumber"].ToString();
                GetData.Add(Data);
            }
            con.Close();
            return GetData;
        }


    }
}