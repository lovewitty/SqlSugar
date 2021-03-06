﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SqlSugar;
using Models;
namespace WebTest.Dao
{
    public partial class Join : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var db = SugarDao.GetInstance())
            {
                var list = db.Sqlable().Form("student", "s").Join("school", "l", "s.sch_id", "l.id", JoinType.INNER).SelectToList<Student>("*");
                GetStudent(1, "a");
                var count = GetCount();
            }
        }
        public int GetCount()
        {
            using (var db = SugarDao.GetInstance())
            {
                var sable = db.Sqlable().Form("student", "s").Join("school", "l", "s.sch_id", "l.id", JoinType.INNER);
                return sable.Count();
            }
        }
        public List<Student> GetStudent(int id, string name)
        {
            int pageCount = 0;
            using (var db = SugarDao.GetInstance())
            {
                //Form("Student","s")语法优化成 Form<Student>("s")
                var sable = db.Sqlable().Form<Student>("s").Join<School>("l", "s.sch_id", "l.id", JoinType.INNER);
                if (!string.IsNullOrEmpty(name))
                {
                    sable = sable.Where("s.name=@name");
                }
                if (!string.IsNullOrEmpty(name))
                {
                    sable = sable.Where("s.id=@id or s.id=100");
                }
                if (id > 0) {
                    sable = sable.Where("l.id in (select top 10 id from school)");//where加子查询
                }
                //参数
                var pars = new { id = id, name = name };
                pageCount = sable.Count(pars);
                return sable.SelectToList<Student>("s.*", pars);
            }
        }
    }
}