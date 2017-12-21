package com.zr.handler;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.util.Streams;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FileHandler {
	@RequestMapping("fileUpload.handler")
	public ModelAndView upload(
			@RequestParam("upFile") MultipartFile file,HttpSession session){
		ModelAndView mv = new ModelAndView("welcome");
		//�ϴ���Ŀ����ļ���file
//		String path = session.getServletContext().getRealPath("/file");
		String path = "E:/imgs/";
		mv.addObject("path", path);
		//��ȡ�ϴ����ļ���
		String fileName = file.getOriginalFilename();
		path = path + fileName;
		/*try {
			InputStream in =file.getInputStream();
			OutputStream out = new FileOutputStream(path,true);
			int data = in.read();
			while(data!=-1){
				out.write(data);
				data = in.read();
			}
			in.close();
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		try {
			Streams.copy(file.getInputStream(), new FileOutputStream(path), true);
		} catch (IOException e) {
			System.out.println("�ϴ�ʧ��");
			e.printStackTrace();
		}
		
		mv.addObject("fileName", fileName);
	  return mv;		
				
	}
	@RequestMapping("downFile.handler")
	public ModelAndView downLoad(HttpServletRequest request,HttpServletResponse response){
		//�޸ĵ�ǰ��Դmine����Ϊ��������
		response.setContentType("application/x-msdownload");
		String fileName = request.getParameter("fileName");
		response.setHeader("Content-Disposition", "attachment;filename="+fileName);
		//���������ص�ǰ�ļ�
		String path = "E:/imgs/"+fileName;
		//��֪�����������ȡ���ļ�
		try {
			Streams.copy(new FileInputStream(path),response.getOutputStream() , true);
			
		} catch (IOException e) {
			
		}
		return new ModelAndView("welcome");
	}

}

