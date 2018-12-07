/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

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
public class PosterController {
//    @RequestMapping(value = "dangtin")
//    public String dangtin(){
//        return "dangtin";
//    }
    //Đăng tin
    @RequestMapping(value= "dangtin", method = RequestMethod.POST)
    public String addPoster(HttpServletRequest request,@RequestParam("file")MultipartFile file,@ModelAttribute("poster")Poster pt){
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
        return "redirect:trangchu.htm";
    }
    
    //Lấy danh sách Category gửi về COMBOBOX ở dangtin.jsp
    @RequestMapping(value="dangtin", method=RequestMethod.GET)
    public String listCategory(ModelMap mm){
        CategoryModel category = new CategoryModel();
        mm.addAttribute("LIST_CATEGORY", category.getAllCategory());
        return "dangtin";
    }
    
   
    
    //Tìm kiếm
    @RequestMapping(value = "timkiem", method = RequestMethod.GET)
    public String timkiem(){
        return "redirect:trangchu.htm";
    }
    
    @RequestMapping(value = "timkiem", method = RequestMethod.POST)
    public String timkiem(ModelMap mm, @RequestParam(value = "search")String keyword){
        PosterModel pm = new PosterModel();
        mm.addAttribute("pt", pm.getSPTimKiem(keyword));
        mm.addAttribute("keyword", keyword);
        return "timkiem";
    }
}
