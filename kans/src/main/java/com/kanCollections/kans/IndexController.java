package com.kanCollections.kans;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
		return "index.jsp";
	}
	
	@RequestMapping("main")
	public String main() 
	{
		return "Home.jsp";
		
	}
	
	@RequestMapping("Login")
	public String signin()
	{
		return "Login.jsp";
	}
	
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
			System.out.print("User is validated -- GOOD");
			return "Home.jsp";
		 }
		 
		 System.out.print("User is invalidated --XXX ");
		 return null;
		
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
			return "Home.jsp";
		 }
		 
		 System.out.print("User is invalidated --XXX ");
		 return "Home.jsp";
	}
	
	
	@RequestMapping("/uploadfile")
	public String ImageUpload (@RequestParam("image") String path, @RequestParam ("imageName") String desc) 
	{
		
         System.out.print("inside indexcontroller");
         System.out.print("inside indexcontroller Path=" + path);
		 DBConnection DBcon = new DBConnection(); 
		
		if (DBcon.insertImage(path, desc))
		 {
			System.out.print("Image uploaded successfully");
			return "Home.jsp";
		 }
		 
		System.out.print("Image is not uploaded ");
		 return "Home.jsp";
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
		return "Home.jsp";
	 }
	 
	System.out.print("Image is not uploaded ");
	 return "Home.jsp";
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
 
	if (pickid.equals("SEARCH") ) 
	{ 
		return "Search.jsp"; 
	
	}else
	{
	
	if (pickid.equals("DELETE"))
	{ return "underconstruction.jsp"; 
	}
	else {
	return "Home.jsp"; 
	}
	
	}}
	
	
}




