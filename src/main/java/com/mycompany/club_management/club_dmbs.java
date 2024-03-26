/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.club_management;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author HP
 */
@Controller
public class club_dmbs {

    String username = "";
    String prn = "";
    String email = "";
    String clubname = "";
    String clubemail = "";

    @RequestMapping("/home")
    public String index() {
        return "hello";
    }

    @RequestMapping(value = "/tp", method = RequestMethod.GET)
    public String tp() {
        return "trial";
    }

    @RequestMapping(value = "/start", method = RequestMethod.GET)
    public String start() {
        return "start";
    }

    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String about_us() {
        return "aboutus";
    }

    @RequestMapping(value = "/loginpage", method = RequestMethod.GET)
    public String login() {
        return "selectlogin";
    }

    @RequestMapping(value = "/studlogin", method = RequestMethod.GET)
    public String studlogin() {
        return "stud_login";
    }

    @RequestMapping(value = "/clublogin", method = RequestMethod.GET)
    public String clublogin() {
        return "club_login";
    }

    @RequestMapping(value = "/sign", method = RequestMethod.GET)
    public String register() {
        return "selectregister";
    }

    @RequestMapping(value = "/studregis", method = RequestMethod.GET)
    public String studregister() {
        return "stud_register";
    }

    @RequestMapping(value = "/clubregis", method = RequestMethod.GET)
    public String clbregister() {
        return "club_register";
    }

    @RequestMapping(value = "/wlcm", method = RequestMethod.POST)
    public String wlcmuser(@RequestParam("prn") String a,
            @RequestParam("email") String b,
            @RequestParam("password") String c,
            Model object) 
    {
        object.addAttribute("UserName",username);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clubdbms", "root", "Root@12345#");

            PreparedStatement stmt = con.prepareStatement("select * from studregister where PRN=? and email=? or PRN=? and pass=?");
            stmt.setString(1, a);
            stmt.setString(2, b);
            stmt.setString(3, a);
            stmt.setString(4, c);
            ResultSet rs = stmt.executeQuery();
            String l = "", m = "", s = "", name = "";
            while (rs.next()) {
                m = rs.getString("PRN");
                l = rs.getString("email");
                s = rs.getString("pass");
                name = rs.getString("fname");
            }
            if (m.equals(a) && l.equals(b) && s.equals(c)) {
                object.addAttribute("UserName", name);
                object.addAttribute("UserPRN", m);
                object.addAttribute("UserEmail", l);
                username = name;
                prn = m;
                email = l;
                return "welcomeuser";
            } else {
                return "error";
            }
        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        return "error";
    }

    @RequestMapping(value = "/wlcmclub", method = RequestMethod.POST)
    public String wlcmclub(@RequestParam("club") String a,
            @RequestParam("email") String b,
            @RequestParam("password") String c,
            Model object2) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clubdbms", "root", "Root@12345#");

            PreparedStatement stmt = con.prepareStatement("select * from clubregister where cname=? and email=? or cname=? and pass=?");
            stmt.setString(1, a);
            stmt.setString(2, b);
            stmt.setString(3, a);
            stmt.setString(4, c);
            ResultSet rs = stmt.executeQuery();
            String cl = "", cn = "", s = "", name = "";
            while (rs.next()) {
                cn = rs.getString("cname");
                cl = rs.getString("email");
                s = rs.getString("pass");
//                name = rs.getString("fname");
            }
            if (cn.equals(a) && cl.equals(b) && s.equals(c)) {

//                object1.addAttribute("UserPRN", name);
                object2.addAttribute("Clubname", cn);
                object2.addAttribute("UserEmail", cl);
                clubname = cn;
                clubemail = cl;
                return "welcomeclub";
            } else {
                return "error";
            }
        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        return "error";
    }

    @RequestMapping(value = "/stud", method = RequestMethod.POST)
    public String Handleform(
            @RequestParam("a") String a,
            @RequestParam("b") String b,
            @RequestParam("c") String c,
            @RequestParam("d") String d,
            @RequestParam("e") String e,
            @RequestParam("f") String f,
            @RequestParam("g") String g,
            org.springframework.ui.Model object1) {
        System.out.println("I am from Processform");
//                         System.out.println(a+b+c+d+e+f+g);

        object1.addAttribute("msg", "record inserted Successfully ");
        try {
            Class.forName("com.mysql.jdbc.Driver");

//step2 create  the connection object  
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clubdbms", "root", "Root@12345#");
            PreparedStatement stmt = con.prepareStatement("INSERT INTO studregister VALUES(?,?,?,?,?,?,?)");

            stmt.setString(1, a);
            stmt.setString(2, b);//1 specifies the first parameter in the query  
            stmt.setString(3, c);
            stmt.setString(4, d);
            stmt.setString(5, e);
            stmt.setString(6, f);
            stmt.setString(7, g);

            stmt.executeUpdate();
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        return "successfullstud";
    }

    @RequestMapping(value = "/club", method = RequestMethod.POST)
    public String Handleclub(
            @RequestParam("a") String a,
            @RequestParam("b") String b,
            @RequestParam("c") String c,
            @RequestParam("d") String d,
            @RequestParam("e") String e,
            @RequestParam("f") String f,
            org.springframework.ui.Model object1) {
        System.out.println("I am from inserting the data");
//                         System.out.println(a+b+c+d+e+f+g);

        object1.addAttribute("msg", "record inserted Successfully ");
        try {
            Class.forName("com.mysql.jdbc.Driver");

//step2 create  the connection object  
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clubdbms", "root", "Root@12345#");
            PreparedStatement stmt = con.prepareStatement("INSERT INTO clubregister VALUES(?,?,?,?,?,?)");

            stmt.setString(1, a);
            stmt.setString(2, b);//1 specifies the first parameter in the query  
            stmt.setString(3, c);
            stmt.setString(4, d);
            stmt.setString(5, e);
            stmt.setString(6, f);

            stmt.executeUpdate();
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        return "successfullclub";
    }

    @RequestMapping(value = "/LiteraryClub", method = RequestMethod.GET)
    public String litclub(Model m) {
        m.addAttribute("UserName",username);
        return "/club/Club_Literary";
    }

    @RequestMapping(value = "/Invictus", method = RequestMethod.GET)
    public String invclub(Model m) {
        m.addAttribute("UserName",username);
        return "/club/Club_Invictus";
    }

    @RequestMapping(value = "/GDSC", method = RequestMethod.GET)
    public String gdscclub(Model m) {
        m.addAttribute("UserName",username);
        return "/club/Club_GDSC";
    }

    @RequestMapping(value = "/AV", method = RequestMethod.GET)
    public String avclub() {
        return "/club/Club_AV";
    }

    @RequestMapping(value = "/AMC", method = RequestMethod.GET)
    public String amcclub() {
        return "/club/Club_AMC";
    }

    @RequestMapping(value = "/GS", method = RequestMethod.GET)
    public String girlscript() {
        return "/club/Club_GS";
    }

    @RequestMapping(value = "/alclub", method = RequestMethod.GET)
    public String clubdisplay() {
        return "allclub";
    }

    @RequestMapping(value = "/addevents", method = RequestMethod.GET)
    public String event(Model model) {
        model.addAttribute("cname", clubname);
        return "adevent";
    }

    @RequestMapping(value = "/Profile", method = RequestMethod.POST)
    public String profile(Model object) {
        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clubdbms", "root", "Root@12345#");
            PreparedStatement stmt = con.prepareStatement("SELECT * FROM studregister WHERE PRN=?");
            stmt.setString(1, prn);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                object.addAttribute("name", rs.getString("fname"));
                object.addAttribute("phone", rs.getString("phone"));
                object.addAttribute("prn", rs.getString("PRN"));
                object.addAttribute("branch", rs.getString("branch"));
                object.addAttribute("gender", rs.getString("gender"));
                object.addAttribute("email", rs.getString("email"));
                object.addAttribute("pass", rs.getString("pass"));
            }

            return "stud_profile";
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        return "stud_profile";
    }

    @RequestMapping(value = "/clubprofile", method = RequestMethod.POST)
    public String clubprofile(Model object2) {
        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clubdbms", "root", "Root@12345#");
            PreparedStatement stmt = con.prepareStatement("SELECT * FROM clubregister WHERE cname=?");
            stmt.setString(1, clubname);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                object2.addAttribute("cname", rs.getString("cname"));
                object2.addAttribute("ccdname", rs.getString("ccdname"));
                object2.addAttribute("domain", rs.getString("domain"));
                object2.addAttribute("other", rs.getString("other"));
                object2.addAttribute("cemail", rs.getString("email"));
                object2.addAttribute("cpass", rs.getString("pass"));
            }

            return "club_profile";
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        return "club_profile";
    }

    @RequestMapping(value = "/clubRegister", method = RequestMethod.POST)
    public String UserRegister(@RequestParam("clubName") String club, Model obj) {
        obj.addAttribute("clubName", club);
        return "raw";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String deleteprofile(@RequestParam("UserPRN") String a, Model object) {
        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clubdbms", "root", "Root@12345#");
            PreparedStatement stmt = con.prepareStatement("delete FROM studregister WHERE PRN=?");
            stmt.setString(1, a);

            stmt.executeUpdate();
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        return "delete";
    }

    @RequestMapping(value = "/updatepass", method = RequestMethod.POST)
    public String Handleformm(@RequestParam("UserPRN") String prn,
            @RequestParam("pass") String b,
            Model object1) {
        object1.addAttribute("msg", "record updateed Successfully ");
        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clubdbms?characterEncoding=utf8", "root", "Root@12345#");
            PreparedStatement stmt = con.prepareStatement("update studregister set pass=? where PRN=?");

            stmt.setString(1, b);
            stmt.setString(2, prn);

            stmt.executeUpdate();
        } catch (Exception k) {
            System.out.println(k.getMessage());
        }

        return "update";
    }

    @RequestMapping(value = "/registerevent", method = RequestMethod.POST)
    public String addevent(
            @RequestParam("e") String e,
            @RequestParam("a") String a,
            @RequestParam("b") String b,
            @RequestParam("c") String c,
            @RequestParam("d") String d,
            org.springframework.ui.Model object1) {
        System.out.println("I am from Processform");

        object1.addAttribute("msg", "record inserted Successfully ");
        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clubdbms", "root", "Root@12345#");
            PreparedStatement stmt = con.prepareStatement("INSERT INTO event VALUES(?,?,?,?,?)");

            stmt.setString(1, e);
            stmt.setString(2, a);//1 specifies the first parameter in the query  
            stmt.setString(3, b);
            stmt.setString(4, c);
            stmt.setString(5, d);

            stmt.executeUpdate();
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        return "eventregistermessage";
    }

    @RequestMapping(value = "/displayallclub", method = RequestMethod.GET)
    public String alldisplay() {
        return "display_allevent";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String regi(Model m) {
        m.addAttribute("prn",prn);
        return "register";
    }

    @RequestMapping(value = "/cregister", method = RequestMethod.POST)
    public String cregister(
            @RequestParam("a") String a,
            @RequestParam("b") String b,
            @RequestParam("c") String c,
            @RequestParam("d") String d,
            @RequestParam("e") String e,
            @RequestParam("f") String f,
            @RequestParam("g") String g,
            //            @RequestParam("g") String g,
            org.springframework.ui.Model object1) {

        System.out.println("I am from Processform");
//                         System.out.println(a+b+c+d+e+f+g);

        object1.addAttribute("msg", "record inserted Successfully ");
        try {
            Class.forName("com.mysql.jdbc.Driver");

//step2 create  the connection object  
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clubdbms", "root", "Root@12345#");
            PreparedStatement stmt = con.prepareStatement("INSERT INTO cregister VALUES(?,?,?,?,?,?,?)");

            stmt.setString(1, a);
            stmt.setString(2, b);//1 specifies the first parameter in the query  
            stmt.setString(3, c);
            stmt.setString(4, d);
            stmt.setString(5, e);
            stmt.setString(6, f);
            stmt.setString(7, g);
            
//            stmt.setString(7, g);

            stmt.executeUpdate();
        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        return "stud_club_register";
    }

    @RequestMapping(value = "/appliedstud", method = RequestMethod.GET)
    public String appliedstud(Model model3) {
        model3.addAttribute("cname", clubname);
        return "appliedstud_gdsc";
    }
    
    @RequestMapping(value = "/upcominggdsc", method = RequestMethod.GET)
    public String upcominggdsc(Model model4) {
        model4.addAttribute("cname", clubname);
        return "upcoming_gdsc";
    }

}
