package skc.common.controller; 
import java.io.File;
import java.net.URLEncoder;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.io.FileUtils;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import skc.common.common.CommandMap;
import skc.common.service.CommonService;
@Controller public class CommonController {
	@Resource(name="commonService") private CommonService commonService; 
	@RequestMapping(value="/common/downloadFreeFile")
	public void downloadFreeFile(CommandMap commandMap, HttpServletResponse response) throws Exception{
		
		Map<String,Object> map = commonService.selectFreeFileInfo(commandMap.getMap());
		String storedFileName = (String)map.get("STORED_FILE_NAME");
		System.out.println(commandMap.getMap());
		String originalFileName = (String)map.get("ORIGINAL_FILE_NAME");
		byte fileByte[] = FileUtils.readFileToByteArray(new File("C:\\dev\\file\\"+storedFileName));
		response.setContentType("application/octet-stream");
		response.setContentLength(fileByte.length);
		response.setHeader("Content-Disposition", "attachment; fileName=\"" + URLEncoder.encode(originalFileName,"UTF-8")+"\";");
		response.setHeader("Content-Transfer-Encoding", "binary");
		response.getOutputStream().write(fileByte);
		response.getOutputStream().flush();
		response.getOutputStream().close();
	}
	@RequestMapping(value="/common/downloadAcademyFile")
	public void downloadAcademyFile(CommandMap commandMap, HttpServletResponse response) throws Exception{
		
		Map<String,Object> map = commonService.selectAcademyFileInfo(commandMap.getMap());
		String storedFileName = (String)map.get("STORED_FILE_NAME");
		System.out.println(commandMap.getMap());
		String originalFileName = (String)map.get("ORIGINAL_FILE_NAME");
		byte fileByte[] = FileUtils.readFileToByteArray(new File("C:\\dev\\file\\"+storedFileName));
		response.setContentType("application/octet-stream");
		response.setContentLength(fileByte.length);
		response.setHeader("Content-Disposition", "attachment; fileName=\"" + URLEncoder.encode(originalFileName,"UTF-8")+"\";");
		response.setHeader("Content-Transfer-Encoding", "binary");
		response.getOutputStream().write(fileByte);
		response.getOutputStream().flush();
		response.getOutputStream().close();
	}
	@RequestMapping(value="/common/downloadParentFile")
	public void downloadParentFile(CommandMap commandMap, HttpServletResponse response) throws Exception{
		
		Map<String,Object> map = commonService.selectParentFileInfo(commandMap.getMap());
		String storedFileName = (String)map.get("STORED_FILE_NAME");
		System.out.println(commandMap.getMap());
		String originalFileName = (String)map.get("ORIGINAL_FILE_NAME");
		byte fileByte[] = FileUtils.readFileToByteArray(new File("C:\\dev\\file\\"+storedFileName));
		response.setContentType("application/octet-stream");
		response.setContentLength(fileByte.length);
		response.setHeader("Content-Disposition", "attachment; fileName=\"" + URLEncoder.encode(originalFileName,"UTF-8")+"\";");
		response.setHeader("Content-Transfer-Encoding", "binary");
		response.getOutputStream().write(fileByte);
		response.getOutputStream().flush();
		response.getOutputStream().close();
	}
	@RequestMapping(value="/common/downloadStudentFile")
	public void downloadStudentFile(CommandMap commandMap, HttpServletResponse response) throws Exception{
		
		Map<String,Object> map = commonService.selectStudentFileInfo(commandMap.getMap());
		String storedFileName = (String)map.get("STORED_FILE_NAME");
		System.out.println(commandMap.getMap());
		String originalFileName = (String)map.get("ORIGINAL_FILE_NAME");
		byte fileByte[] = FileUtils.readFileToByteArray(new File("C:\\dev\\file\\"+storedFileName));
		response.setContentType("application/octet-stream");
		response.setContentLength(fileByte.length);
		response.setHeader("Content-Disposition", "attachment; fileName=\"" + URLEncoder.encode(originalFileName,"UTF-8")+"\";");
		response.setHeader("Content-Transfer-Encoding", "binary");
		response.getOutputStream().write(fileByte);
		response.getOutputStream().flush();
		response.getOutputStream().close();
	}
}