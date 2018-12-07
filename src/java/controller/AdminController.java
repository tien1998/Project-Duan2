/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entities.Category;
import entities.Poster;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import model.CategoryModel;
import model.PosterModel;
import org.springframework.stereotype.Controller;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.request;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author QUOCTRONG
 */
@Controller
public class AdminController {
    
    
    //Trả về danh sách bài viết
    @RequestMapping(value="baiviet")
    public String listPoster(ModelMap mm){
        PosterModel posterModel = new PosterModel();
        mm.addAttribute("LIST_POSTER", posterModel.getAll());
        
        CategoryModel categoryModel = new CategoryModel();
        mm.addAttribute("CATEGORY",categoryModel.getAllCategory());
        return "baiviet";
    }
    // Trả về để sửa bài viết theo ID
    @RequestMapping(value = "suabaiviet")
    public String suabaiviet(ModelMap mm, @RequestParam("id")int id){ //@RequestParam lấy ID ở trang view
        PosterModel pm = new PosterModel();
        CategoryModel cm = new CategoryModel();
        mm.addAttribute("POSTER", pm.getPosterByID(id)); //Gọi hàm lấy bài viết theo ID với tham số id = RequestParam vừa lấy ở trên
        mm.addAttribute("COMBOBOX", cm.getAllCategory());
        return "suabaiviet";
    }
    //Thực hiện edit bài viết
    @RequestMapping(value = "suabaiviet", method = RequestMethod.POST)
    public String thuchiensuabaiviet(HttpServletRequest request,@RequestParam("file")MultipartFile file, @ModelAttribute(value="poster")Poster pt){
        
        PosterModel pm = new PosterModel();
        try {
            
            
            //Đoạn này upload ảnh
            String date = new SimpleDateFormat("ddMMyyyy_HHmmss").format(Calendar.getInstance().getTime());
            String rootDirectory = request.getSession().getServletContext().getRealPath("/");
            String getDuoiFile = file.getContentType();
            String duoiFile=getDuoiFile.substring(getDuoiFile.lastIndexOf("/")).replace("/","");
            file.transferTo(new File(rootDirectory+"image\\"+date+"."+duoiFile));
            pt.setImage("image/"+date+"."+duoiFile);
            pm.editPoster(pt);
        } catch (IOException ex) {
            Logger.getLogger(PosterController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalStateException ex) {
            Logger.getLogger(PosterController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return "redirect:baiviet.htm";
    }
    
    @RequestMapping(value = "xoabaiviet")
    public String xoabaiviet(@RequestParam("id")int id){
        PosterModel pm = new PosterModel();
        Poster poster = pm.getPosterByID(id);
        pm.delPoster(poster);
        return "redirect:baiviet.htm";
    }
    
    @RequestMapping(value = "/baiviet123.htm", method = RequestMethod.POST)
    public String baiviet(HttpServletRequest request, @RequestParam("file")MultipartFile file, 
            @ModelAttribute("poster")Poster pt){
        try {
            
            PosterModel posterModel = new PosterModel();
            
            //Đoạn này upload ảnh
            String date = new SimpleDateFormat("ddMMyyyy_HHmmss").format(Calendar.getInstance().getTime());
            String rootDirectory = request.getSession().getServletContext().getRealPath("/");
            String getDuoiFile = file.getContentType();
            String duoiFile=getDuoiFile.substring(getDuoiFile.lastIndexOf("/")).replace("/","");
            file.transferTo(new File(rootDirectory+"image\\"+date+"."+duoiFile));
            pt.setImage("image/"+date+"."+duoiFile);
            
            
            posterModel.addposter(pt);
        } catch (IOException ex) {
            Logger.getLogger(PosterController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalStateException ex) {
            Logger.getLogger(PosterController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "redirect:baiviet";
    }
    
    @RequestMapping(value = "quantri")
    public String quantri(){
        return "quantri";
    }
    //Danh sách CATEGORY
    @RequestMapping(value = "loaihinh")
    public String loaihinh(ModelMap mm){
        CategoryModel cm = new CategoryModel();
        mm.addAttribute("LIST_CATEGORY", cm.getAllCategory());
        return "loaihinh";
    }
    //Sửa CATEGORY
    @RequestMapping(value = "sualoaihinh")
    public String sualoaihinh(ModelMap mm, @RequestParam("id")int id){
        CategoryModel cm = new CategoryModel();
        mm.addAttribute("NAME_CATEGORY", cm.getCategoryByID(id));
        return "sualoaihinh";
    }
    //Thực hiện lệnh sửa CATEGORY
     @RequestMapping(value = "sualoaihinh", method = RequestMethod.POST)
     public String capnhatloaihinh(Category category){
         CategoryModel cm = new CategoryModel();
         cm.editCategory(category);
         return "redirect:loaihinh.htm";
     }
    // Xoá CATEGORY
    @RequestMapping(value = "xoaloaihinh")
    public String xoaloaihinh(ModelMap mm, @RequestParam("id") int id){
        
        CategoryModel cm = new CategoryModel();
        Category category = cm.getCategoryByID(id);
        cm.delCategory(category);
        return "redirect:loaihinh.htm";
    }
    //Thêm CATEGORY
    @RequestMapping(value = "loaihinh", method = RequestMethod.POST)
    public String themloaihinh(ModelMap mm, @RequestParam("name")String name){
        
        Category category = new Category();
        CategoryModel cm = new CategoryModel();
        category.setName(name);
        cm.insertCategory(category);
        
        return "redirect:loaihinh.htm";
    }
    
    
    
    @RequestMapping(value = "binhluan")
    public String binhluan(){
        return "binhluan";
    }
     
    //Test list
    @RequestMapping(value = "list")
    public String list(){
        return "list";
    }
    
}
