package com.kanCollections.kans;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.Locale;
import java.util.logging.*;

import org.hibernate.annotations.common.util.impl.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kanCollections.kans.dao.DBConnection;

@Controller  // controller annotation
public class IndexController 
{
	//@Autowired
	//FeedbackDao fdao;
	//Feedback feedback;
	
	    
	@RequestMapping("/")
	public String home() 
	{
		return "index";
	}
	
	
	/*@RequestMapping("Login")
	public String signin()
	{
		return "Login";
	}
	*/
	
	@RequestMapping("/validate_usr")
    public String validate_usr(@RequestParam("name") String name, @RequestParam("password") String pwd )
	 //2 public String validate_usr(@ModelAttribute("user") user user)
	{
		 System.out.print("name= "+ name);
		 System.out.print("pwd= "+ pwd);

		//1 marketDao updb = new marketDao();
		//1 updb.updateDB();
		//1 user = new user(name,pwd,null);
		//2 updb.updateDB(user);
		
		 DBConnection DBcon = new DBConnection(); 
		 if (DBcon.check(name, pwd))
		 {
			System.out.println("User is validated -- GOOD");
			return "Home";
		 }
		 
		 System.out.println("User is invalidated --******check the user *******");
		// for future feature: think of error pop using JS and then go the the same lo 
		 //return null;
		 return "Login";
		
}
	
	//@RequestMapping("/user.htm")
	//public String feedback() 
	//{
	//	return "userfeedback.jsp";
	//}
	
	@RequestMapping("/addfeedback")
	public String addfeedback(@RequestParam ("realname") String realname, @RequestParam ("email") String email, @RequestParam ("product") String product, @RequestParam ("service") String service, @RequestParam ("comments") String comments, @RequestParam ("rating") String rating) 
	
	//1public String addfeedback(@ModelAttribute("feedback") Feedback feedback)
	//public String addfeedback(@RequestParam ("name") String realname, @RequestParam ("password") String pwd)
	{
		//feedback = new Feedback(realname, email,product,service,comments, rating);
         //System.out.print("inside indexcontroll");
		//1fdao.addFeedback(feedback);
		 DBConnection DBcon = new DBConnection(); 
		if (DBcon.insert(realname, email,product,service,comments,rating))
		 {
			System.out.print("User is validated -- GOOD");
			return "Home";
		 }
		 
		System.out.print("User is invalid --check the user ");
		 return "Error";
	}
	
	
	@RequestMapping("/uploadfile")
	public String ImageUpload (@RequestParam("image") String path, @RequestParam ("imageName") String desc) 
	{
		//ImageUpload
         System.out.print("inside indexcontroller");
         System.out.print("inside indexcontroller Path=" + path);
		 DBConnection DBcon = new DBConnection(); 
		
		if (DBcon.insertImage(path, desc))
		 {
			System.out.print("Image uploaded successfully");
			return "Home";
		 }
		 
		System.out.print("Image is not uploaded ");
		 return "Error";
	}
	

	
@RequestMapping("/DesignUpload")
public String DesignUpload (@RequestParam("file") String DesignPath, @RequestParam ("imageName") String Ddescription,@RequestParam ("category") String imgid) 
{
	
     System.out.print("inside indexcontroller");
     System.out.print("inside indexcontroller Path=" + DesignPath);
     System.out.print("inside indexcontroller Desription=" + Ddescription);
     System.out.println("Selected item=" + imgid);
     
	 DBConnection DBcon = new DBConnection(); 
	
	if (DBcon.insertDesign(DesignPath, Ddescription,imgid))
	 {
		System.out.print("Image uploaded successfully");
		return "Home";
	 }
	 
	System.out.print("Image is not uploaded ");
	 return "Error";
}

@RequestMapping("/pick")
public String DesignSearch(@RequestParam("pickbtn") String pickid, @RequestParam("Radioselection") String radioid , HttpServletResponse response,HttpServletRequest request) 
{
	//commenting cookie related 
	//Cookie prdid = new Cookie("pickbtn", radioid);
	//prdid.setMaxAge(60*60*24); 
	//response.addCookie(prdid);
	
	request.getSession().setAttribute("id", radioid);
	
 //System.out.println("In IDX1 "+request.getCookies());
 //System.out.println("In IDX2 "+  prdid.getValue());
 // special syntax used for string comaparison -> variable.equals
	if (pickid.equals("SEARCH") ) 
	{ 
		return "Search"; 
	
	}else
	{
	
	if (pickid.equals("DELETE"))
		
	{
		DBConnection DBcon = new DBConnection(); 
		System.out.println("radioid:" + radioid);
		DBcon.DeleteTheme(radioid);
		System.out.println("deleted sucessfully");
		return "Display"; 
	}
	else {
	return "Home"; 
	}
	
	}}

 // to use the  gohome option
@RequestMapping("main")
public String main() 
{
	return "Home";
	
}

@RequestMapping("/MusicStatic")
public String MusicStatic() 
{
	return "Musical.jsp";
}

/*private static final org.jboss.logging.Logger logger = LoggerFactory.logger(IndexController.class);

/**
 * Simply selects the home view to render by returning its name.
 */
/*@RequestMapping(value = "/", method = RequestMethod.GET)
public String Musical(Locale locale, Model model) {
    logger.infof("Welcome home! The client locale is {}.", locale);
    return "Musical";
}
*/
	
}





