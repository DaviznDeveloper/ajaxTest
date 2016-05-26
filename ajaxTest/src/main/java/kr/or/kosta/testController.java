package kr.or.kosta;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class testController {
	
	@Autowired
	SqlSession sqlsession;
	
	@RequestMapping("/test.do")
	public ModelAndView practice(){
		System.out.println("컨트롤러 타니");
		MemberDao dao = sqlsession.getMapper(MemberDao.class);
		List<member> list = dao.selectList();
		ModelAndView mv = new ModelAndView();
		mv.addObject("list",list);
		mv.setViewName("jsonView");
		
		return mv;
		
	}
}
