using BusinessObjects;
using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Data; // for DataTable
using System.Data.SqlClient; // for SqlParameter
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogicLayer
{
    public class BLL
    {
        public BLL()
        {

        }

        public void AddNewMember(Member objMembers)
        {
            DAL objDAL = new DAL();
            SqlParameter[] parameters = new SqlParameter[4];
            parameters[0] = objDAL.AddParameter("@Name", objMembers.Name, SqlDbType.VarChar, 300);
            parameters[1] = objDAL.AddParameter("@Address", objMembers.Address, SqlDbType.VarChar, 300);
            parameters[2] = objDAL.AddParameter("@Email", objMembers.Email, SqlDbType.VarChar, 300);
            parameters[3] = objDAL.AddParameter("@Mobile", objMembers.Mobile, SqlDbType.Int, 100);

            DataTable dt = objDAL.ExecuteDTByProcedure("SP_AddNewMember", parameters);
        }

        public void UpdateMember(Member objShoppingCart)
        {
            DAL objDAL = new DAL();
            SqlParameter[] parameters = new SqlParameter[1];
            //parameters[0] = objDAL.AddParameter("@CategoryName", objShoppingCart.CategoryName, SqlDbType.VarChar, 200);
            DataTable dt = objDAL.ExecuteDTByProcedure("UpdateMember", parameters);
        }

        public void DeleteMember(Member objShoppingCart)
        {
            DAL objDAL = new DAL();
            SqlParameter[] parameters = new SqlParameter[1];
            //parameters[0] = objDAL.AddParameter("@CategoryName", objShoppingCart.CategoryName, SqlDbType.VarChar, 200);
            DataTable dt = objDAL.ExecuteDTByProcedure("DeleteMember", parameters);
        }

        public void GetMember(Member objShoppingCart)
        {
            DAL objDAL = new DAL();
            SqlParameter[] parameters = new SqlParameter[1];
            //parameters[0] = objDAL.AddParameter("@CategoryName", objShoppingCart.CategoryName, SqlDbType.VarChar, 200);
            DataTable dt = objDAL.ExecuteDTByProcedure("GetMember", parameters);
        }

        public void GetAllMembesr(Member objShoppingCart)
        {
            DAL objDAL = new DAL();
            SqlParameter[] parameters = new SqlParameter[1];
            //parameters[0] = objDAL.AddParameter("@CategoryName", objShoppingCart.CategoryName, SqlDbType.VarChar, 200);
            DataTable dt = objDAL.ExecuteDTByProcedure("GetAllMembers", parameters);
        }
    }

    
}
