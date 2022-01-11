using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Collections;
using System.Web.Services;
namespace ServiceReport_Rewirte
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static List<ArrayList> Signin(string username, string password)
        {
            return new ClassBrowseNew().Signin(username, password);
        }

        [WebMethod]
        public static List<ArrayList> TB_FS_PM_WorkOrder(string search)
        {
            return new ClassBrowseNew().TB_FS_PM_WorkOrder(search);
        }

        [WebMethod]
        public static List<ArrayList> TB_FS_PM_WorkOrder_PM_only(string search)
        {
            return new ClassBrowseNew().TB_FS_PM_WorkOrder_PM_only(search);
        }

        [WebMethod]
        public static List<ArrayList> TB_FS_PM_WorkOrder_Service_only(string search)
        {
            return new ClassBrowseNew().TB_FS_PM_WorkOrder_Service_only(search);
        }
        
        [WebMethod]
        public static List<ArrayList> VW_FS_PM_WorkOrder_Report_Title(string WorkOrder)
        {
            return new ClassBrowseNew().VW_FS_PM_WorkOrder_Report_Title(WorkOrder);
        }
        
        [WebMethod]
        public static List<ArrayList> TB_FS_PM_Sparepart(string WorkOrder)
        {
            return new ClassBrowseNew().TB_FS_PM_Sparepart(WorkOrder);
        }
        
        [WebMethod]
        public static List<ArrayList> TB_FS_PM_Electrical_Current(string WorkOrder)
        {
            return new ClassBrowseNew().TB_FS_PM_Electrical_Current(WorkOrder);
        }
        
        [WebMethod]
        public static List<ArrayList> TB_FS_PM_Package_Comp(string WorkOrder)
        {
            return new ClassBrowseNew().TB_FS_PM_Package_Comp(WorkOrder);
        }
        
        [WebMethod]
        public static List<ArrayList> TB_FS_PM_Package_EV_Con(string WorkOrder)
        {
            return new ClassBrowseNew().TB_FS_PM_Package_EV_Con(WorkOrder);
        }
        
        [WebMethod]
        public static List<ArrayList> TB_FS_PM_Package_Freezer(string WorkOrder)
        {
            return new ClassBrowseNew().TB_FS_PM_Package_Freezer(WorkOrder);
        }
        
        [WebMethod]
        public static List<ArrayList> TB_FS_PM_Refrigeration(string WorkOrder)
        {
            return new ClassBrowseNew().TB_FS_PM_Refrigeration(WorkOrder);
        }
        
        [WebMethod]
        public static List<ArrayList> TB_FS_PM_Checklist(string WorkOrder)
        {
            return new ClassBrowseNew().TB_FS_PM_Checklist(WorkOrder);
        }
        
        [WebMethod]
        public static List<ArrayList> Search_TB_FS_PM_Checklist(string WorkOrder, string search)
        {
            return new ClassBrowseNew().Search_TB_FS_PM_Checklist(WorkOrder, search);
        }
        
        [WebMethod]
        public static List<ArrayList> GetTB_FS_PM_Checklist(string WorkOrder, string WorkOrderLineItemNumber)
        {
            return new ClassBrowseNew().GetTB_FS_PM_Checklist( WorkOrder ,WorkOrderLineItemNumber);
        }
        
        [WebMethod]
        public static List<ArrayList> GetTB_FS_PM_ServiceCall(string WorkOrder, string WorkOrderLineItemNumber,string Type)
        {
            return new ClassBrowseNew().GetTB_FS_PM_ServiceCall(WorkOrder, WorkOrderLineItemNumber, Type);
        }
        
        [WebMethod]
        public static List<ArrayList> DELETE_TB_FS_PM_Temp_WorkOrder()
        {
            return new ClassBrowseNew().DELETE_TB_FS_PM_Temp_WorkOrder();
        }
        
        [WebMethod]
        public static List<ArrayList> DELETE_TB_FS_PM_Temp_ReportWorkOrder()
        {
            return new ClassBrowseNew().DELETE_TB_FS_PM_Temp_ReportWorkOrder();
        }
        
        [WebMethod]
        public static List<ArrayList> DELETE_TB_FS_PM_Temp_Checklist()
        {
            return new ClassBrowseNew().DELETE_TB_FS_PM_Temp_Checklist();
        }
        
        [WebMethod]
        public static List<ArrayList> DELETE_TB_FS_PM_Temp_Sparepart()
        {
            return new ClassBrowseNew().DELETE_TB_FS_PM_Temp_Sparepart();
        }
        
        [WebMethod]
        public static List<ArrayList> TB_FS_PM_ListReport(string WorkOrder)
        {
            return new ClassBrowseNew().TB_FS_PM_ListReport(WorkOrder);
        }

        [WebMethod]
        public static List<ArrayList> Delete_TB_FS_PM_ServiceCall(string ID)
        {
            return new ClassBrowseNew().Delete_TB_FS_PM_ServiceCall(ID);
        }

        [WebMethod]
        public static void SP_FS_PM_ReportIMG(string WorkOrder)
        {
            new ClassBrowseNew().SP_FS_PM_ReportIMG(WorkOrder);
        }
        
        [WebMethod]
        public static void SP_FS_PM_Temp_WorkOrder(string username)
        {
            new ClassBrowseNew().SP_FS_PM_Temp_WorkOrder(username);
        }
        
        [WebMethod]
        public static void SP_FS_PM_Temp_ReportWorkOrder(string username)
        {
            new ClassBrowseNew().SP_FS_PM_Temp_ReportWorkOrder(username);
        }
        
        [WebMethod]
        public static void SP_FS_PM_Temp_Checklist(string username)
        {
            new ClassBrowseNew().SP_FS_PM_Temp_Checklist(username);
        }
        
        [WebMethod]
        public static void SP_FS_PM_Temp_Sparepart(string username)
        {
            new ClassBrowseNew().SP_FS_PM_Temp_Sparepart(username);
        }
        
        [WebMethod]
        public static void SP_FS_PM_CheckListIMG(string WorkOrder, string WorkOrderLineItemNumber, string username)
        {
            new ClassBrowseNew().SP_FS_PM_CheckListIMG( WorkOrder,  WorkOrderLineItemNumber, username);
        }
        
        [WebMethod]
        public static string SP_FS_PM_ListReport(string WorkOrder, string username)
        {
            return  new ClassBrowseNew().SP_FS_PM_ListReport( WorkOrder, username);
        }
        
        [WebMethod]
        public static List<String[]> SP_FS_PM_ServiceCall_IMG(int ID, string WorkOrder, string WorkOrderLineItemNumber, string Subject, string Type, string username)
        {
            return  new ClassBrowseNew().SP_FS_PM_ServiceCall_IMG(ID, WorkOrder, WorkOrderLineItemNumber, Subject, Type, username);
        }

    }
}