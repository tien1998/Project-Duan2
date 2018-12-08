/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import utils.HibernateUtil;
import entities.Poster;
import org.hibernate.Query;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author QUOCTRONG
 */
public class PosterModel {
    // Trả về tất cả bài viết
    public List<Poster> getAll(){
       Session session = HibernateUtil.getSessionFactory().openSession();
        List<Poster> listPost = new ArrayList<Poster>();
        try{
            Criteria criteria;
            session.beginTransaction();
            listPost=session.createCriteria(Poster.class).list();
            session.getTransaction().commit();
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return listPost;
    }
    public List<Poster> get4row(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        try{
            Transaction tran = session.beginTransaction();
            Query query = session.createQuery("from Poster order by id DESC").setMaxResults(8);
            tran.commit();
            return query.list();
        }catch(Exception e){
            System.out.println("Error:"+ e.toString());
        }
        return null;
    }
    
    public List<Poster> getCanho(){
        Session ss = HibernateUtil.getSessionFactory().openSession();
        Transaction trans = ss.beginTransaction();
        Query query = ss.createQuery("FROM Poster WHERE category.id = 121 order by id DESC");
        trans.commit();
        return query.list();
    }
    
    public List<Poster> getNhanguyencan(){
        Session ss = HibernateUtil.getSessionFactory().openSession();
        Transaction trans = ss.beginTransaction();
        Query query = ss.createQuery("FROM Poster WHERE category.id = 115 order by id DESC");
        trans.commit();
        return query.list();
    }
    
    public List<Poster> getPhongtro(){
        Session ss = HibernateUtil.getSessionFactory().openSession();
        Transaction trans = ss.beginTransaction();
        Query query = ss.createQuery("FROM Poster WHERE category.id = 1 order by id DESC");
        trans.commit();
        return query.list();
    }
    
    public List<Poster> getKhoxuong(){
        Session ss = HibernateUtil.getSessionFactory().openSession();
        Transaction trans = ss.beginTransaction();
        Query query = ss.createQuery("FROM Poster WHERE category.id = 122 order by id DESC");
        trans.commit();
        return query.list();
    }
    
    public List<Poster> getKhachsan(){
        Session ss = HibernateUtil.getSessionFactory().openSession();
        Transaction trans = ss.beginTransaction();
        Query query = ss.createQuery("FROM Poster WHERE category.id = 116 order by id DESC");
        trans.commit();
        return query.list();
    }
    //Lấy ra một bài viết để sửa (Theo ID)
    public Poster getPosterByID(int id){
        Session ss = HibernateUtil.getSessionFactory().openSession();
        Poster poster = new Poster();
        Transaction trans = ss.beginTransaction();
        poster = (Poster) ss.get(Poster.class, id);
        ss.getTransaction().commit();
        return poster;
    }
    // Thêm một bài viết
    public void addposter(Poster poster){
        Session ss = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction trans = ss.beginTransaction();
        ss.save(poster);
        trans.commit();
    }
    
    //Sửa một bài viết
    public void editPoster(Poster poster){
        Session ss = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction trans = ss.beginTransaction();
        ss.update(poster);
        trans.commit();
    }
    
    //Xoá một bài viết
    public void delPoster(Poster poster){
        Session ss = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction trans = ss.beginTransaction();
        ss.delete(poster);
        trans.commit();
    }
    
    //Hiển thị thông tin chi tiết bài viết (Theo ID)
    public Poster showDetailPosterByID(int id){
        Poster poster = new Poster();
        Session ss = HibernateUtil.getSessionFactory().openSession();
        Transaction trans = ss.beginTransaction();
        Query query = ss.createQuery("FROM POSTER WHERE id = :ID");
        query.setInteger("ID", id);
	poster=(Poster) query.uniqueResult();
        trans.commit();
        return poster;
    }
    
    //Tìm kiếm 
    public List<Poster> getSPTimKiem(String keyword){
        Session ss = HibernateUtil.getSessionFactory().openSession();
         Transaction trans = ss.beginTransaction();
        Query query = ss.createQuery("FROM Poster WHERE title LIKE '%"+keyword+"%' OR address LIKE '%"+keyword+"%' OR info LIKE'%"+keyword+"%'");
        trans.commit();
        
        return query.list();
    } 
}
