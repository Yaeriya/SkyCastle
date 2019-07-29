package skc.member.controller;



import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import skc.member.model.MemberDTO;
import skc.member.service.JoinService;

@Controller
@RequestMapping(value="/member")
public class JoinController 
{
	@Resource
	private JoinService joinService;
	
	@RequestMapping(value = "/getMemberList", method = RequestMethod.GET) 
	public String getMemberList(Model model) throws Exception
	{ 
		model.addAttribute("memberList", joinService.getMemberList()); 
		
		return "member/memberList"; 
	} 
	
	@RequestMapping(value = "/inserMember", method = RequestMethod.POST) 
	public String insertMember(@ModelAttribute("MemberDTO") MemberDTO memberDTO , RedirectAttributes rttr) throws Exception 
	{ 
		joinService.insertMember(memberDTO); 
		
		return "redirect:/member/getMemberList"; 
	}

	
}
