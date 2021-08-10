using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Project_ASP.App_Code
{
    public class customer //FoodMenuTB
    {
        public int CustomerID { get; set; }
        public string CustomerName { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string Email { get; set; }
        public string password { get; set; }
        public string DateOfBirth { get; set; }
    }

    [DataObject(true)]
    public static class OnlineShop //FoodTB
    {
        [DataObjectMethod(DataObjectMethodType.Select)]
        public static IEnumerable GetAllOnlineShop()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RetailerShopConnectionString"].ConnectionString);
            string sql = "select * from CustomerTable";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            return rdr;

        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public static IEnumerable GetOnlineShopByID(int CustomerID)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RetailerShopConnectionString"].ConnectionString);
            string sql = "select * from CustomerTable where CustomerID=@CustomerID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("CustomerID", CustomerID);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            return rdr;

        }

        [DataObjectMethod(DataObjectMethodType.Insert)]
        public static int InsertOnlineShop(customer cm)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RetailerShopConnectionString"].ConnectionString);
            string sql = "insert into customer values(@CustomerID,@CustomerName,@Address,@City,@)Email,@password,@DateOfBirth";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("CustomerID", cm.CustomerID);
            cmd.Parameters.AddWithValue("CustomerName", cm.CustomerName);
            cmd.Parameters.AddWithValue("Address", cm.Address);
            cmd.Parameters.AddWithValue("City", cm.City);
            cmd.Parameters.AddWithValue("Email", cm.Email);
            cmd.Parameters.AddWithValue("password", cm.password);
            cmd.Parameters.AddWithValue("DateOfBirth", cm.DateOfBirth);
            con.Open();
            int n = cmd.ExecuteNonQuery();
            return n;

        }

        [DataObjectMethod(DataObjectMethodType.Update)]
        public static int UpdateOnlineShop(customer orig_cm, customer cm)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RetailerShopConnectionString"].ConnectionString);
            string sql = "update customer set CustomerID=@CustomerID,CustomerName=@CustomerName,Address=@Address,City@City,Email@Email,password@password,DateOfBirth@DateOfBirth where CustomerID=@orig_id ";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("orig_id", orig_cm.CustomerID);
            cmd.Parameters.AddWithValue("CustomerID", cm.CustomerID);
            cmd.Parameters.AddWithValue("CustomerName", cm.CustomerName);
            cmd.Parameters.AddWithValue("Address", cm.Address);
            cmd.Parameters.AddWithValue("City", cm.City);
            cmd.Parameters.AddWithValue("Email", cm.Email);
            cmd.Parameters.AddWithValue("password", cm.password);
            cmd.Parameters.AddWithValue("DateOfBirth", cm.DateOfBirth);
            con.Open();
            int n = cmd.ExecuteNonQuery();
            return n;

        }
        [DataObjectMethod(DataObjectMethodType.Delete)]
        public static int DeleteOnlineShop(customer cm)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RetailerShopConnectionString"].ConnectionString);
            string sql = "delete from customer where CustomerID=@CustomerID";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("CustomerID", cm.CustomerID);
            con.Open();
            int n = cmd.ExecuteNonQuery();
            return n;

        }
        public static int SelectCount()
        {
            return 100;

        }
    }
}