package com.hongqi.findmeWeb;

import com.sina.sae.storage.*;
import com.sina.sae.util.SaeUserInfo;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class fileUpdate extends HttpServlet{
	
	
	public fileUpdate(){
		
	}

	
	@Override
	public void destroy(){
		super.destroy();
	}
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException , IOException{


		response.setContentType("text/html; charset=UTF-8" ); 
		String result = "";
		String realPath= SaeUserInfo.getSaeTmpPath()+"/";
		
		try{
			
			DiskFileItemFactory factory=new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			upload.setFileSizeMax(1024*1024);
			List<FileItem> items=null;
	        items=upload.parseRequest(request);
	            for(FileItem item:items)
	            {
	              if(!item.isFormField())
	              {
	                 File fullFile=new File(item.getName());
	                 File uploadFile=new File(realPath,fullFile.getName());
	                 item.write(uploadFile);
	                 SaeStorage saeStorage = new SaeStorage();
	                 saeStorage.upload("findmedomain", realPath+fullFile.getName(),"userImage/"+ fullFile.getName());
	                
	                 
	                 result += "upload file:"+realPath+fullFile.getName()+"</br>";
	              }
	            } 
			
		}catch (Exception e){
			result += e.getMessage();
		}
		

		
		PrintWriter out = response.getWriter();
		out.print(result);
		out.flush();
		out.close();
	}
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);

	}
	@Override
	public void init() throws ServletException {
		// Put your code here
	}

}
