package com.kanCollections.kans.dao;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class GetPicture
 */
public class GetPicture extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetPicture() {
        super();
        // TODO Auto-generated constructor stub
        System.out.println("Inside the getpicture() function");
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
    	 OutputStream stream = response.getOutputStream();  
	     Blob imgBlob = null;
	     ResultSet rs = null;
	     //String imgString = "";
	     byte[] imbBytesAry = null;
	     //System.out.println("Inside the doGET GetPicture servelet");
	     try
	     {
	         Integer id = null;
	          try {
	              id = Integer.parseUnsignedInt(request.getParameter("id"));
	          } catch (Exception e) {
	        	  System.out.println("No ID found --Error");
	 	    	 throw new ServletException(e);
	          		}
	    	 
	         //System.out.println(" id value= " + id);
	         getImage imgtest = new getImage();
	         rs = imgtest.get(id);
	         
	         if(rs != null)
	         {
	             //while(rs.next())
	             //{
	        	   //PrintWriter out = response.getWriter();
	        	     //imgString = rs.getString(1);
	                 imgBlob = rs.getBlob(1);
	                 int len = new Integer( new Long( imgBlob.length()).toString() ).intValue(); //to get the blob byte-wise from the result set
	                 imbBytesAry = imgBlob.getBytes(1,len);
	                 if (imbBytesAry.length == 0 || imbBytesAry == null)
	                 {
	                     //noImageFound(request, response);
	                     //stream.write(null);
	                	 //response.sendRedirect(request.getContextPath() + "/resources/images/image_02.jpg");
	                	 System.out.println("No Image found --Error");
	                 }
	                 else
	                 {
	                	 //System.out.println("got image and writing");
	                     //out.print(imgString);
	                	 stream.write(imbBytesAry);
	                     stream.flush();
	                     stream.close();
	                    // out.close();
	                 }
	             //}
	         }
	         else
	         {
	             //noImageFound(request, response);
	             //stream.write(null);
	        	 // No record found, redirect to default image.
	                 //response.sendRedirect(request.getContextPath() + "/resources/images/image_02.jpg");
	        	 	System.out.println("No Record found --Error");
	                 return;
	                }
	     }
	     catch (Exception e)
	     {
	         //noImageFound(request, response);
	    	 System.out.println("No DB Connection found --Error");
	    	 throw new ServletException(e);
             //response.sendRedirect(request.getContextPath() + "/resources/images/image_02.jpg");
	     }  
		
    }

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Inside the doPost GetPicture servelet");
		doGet(request, response);
	}
	
	

}
