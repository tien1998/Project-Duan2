/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entities.Category;
import entities.Poster;
import entities.Users;
import model.CategoryModel;
import model.LoginModel;
import model.PosterModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
    
    
    @RequestMapping(value="/trangchu")
    public String home(Model m){
        PosterModel model = new PosterModel();
        m.addAttribute("listPoster", model.get4row());
        
        return "trangchu";
    }
    //Đăng nhập
    @RequestMapping(value="/dangnhap",method = RequestMethod.GET)
    public String dangnhap(ModelMap mm){
        return "dangnhap";
    }
    
    @RequestMapping(value="dangnhap", method = RequestMethod.POST)
    public String dangnhap (@ModelAttribute(value="login")Users u, ModelMap mm){
        LoginModel lm = new LoginModel();
        u=lm.login(u.getUsername(), u.getPassword());
        if(u!=null){
            return "quantri";
        }else{
            mm.addAttribute("error", "Tài khoản hoặc mật khẩu không đúng!");
            return "dangnhap";
        }
    }
    
    @RequestMapping(value = "canho")
    public String canho(ModelMap mm){
        
        PosterModel ptm = new PosterModel();
        mm.addAttribute("CANHO", ptm.getCanho());
        
        return "canho";
    }
    
    @RequestMapping(value = "kho")
    public String kho(ModelMap mm){
        PosterModel ptm = new PosterModel();
        mm.addAttribute("KHO",ptm.getKhoxuong());
        return "kho";
    }
    
    @RequestMapping(value = "ks_bt")
    public String ks_bt(ModelMap mm){
        PosterModel ptm = new PosterModel();
        mm.addAttribute("KHACHSAN",ptm.getKhachsan());
      
        return "ks_bt";
    }
    
    @RequestMapping(value = "nhanguyencan")
    public String nhanguyencan(ModelMap mm){
        PosterModel ptm = new PosterModel();
        mm.addAttribute("NHANGUYENCAN",ptm.getNhanguyencan());
        return "nhanguyencan";
    }
    
    @RequestMapping(value = "phongtro")
    public String phongtro(ModelMap mm){
        PosterModel ptm = new PosterModel();
        mm.addAttribute("PHONGTRO",ptm.getPhongtro());
        return "phongtro";
    }
    
    
}
