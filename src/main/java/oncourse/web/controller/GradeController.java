package oncourse.web.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import oncourse.model.Course;
import oncourse.model.Grade;
import oncourse.model.GradeRecord;
import oncourse.model.User;
import oncourse.model.dao.GradeRecordDao;
import oncourse.security.SecurityUtils;

@Controller
public class GradeController {

    @Autowired
    private GradeRecordDao gradeRecordDao;

    
    @RequestMapping("/grade/list.html")
    public String list( ModelMap models )
    {
        User user = SecurityUtils.getUser();
        models.put( "user", user );
        models.put( "gradeRecords", gradeRecordDao.getGradeRecords( user ) );
        return "grade/list";
    }
    @RequestMapping(value = "/grade/add.html", method = RequestMethod.GET)
	public String add(ModelMap models) {
    	User user = SecurityUtils.getUser();
        models.put( "user", user );
		models.put("grade", new Grade());
		models.put("graderecord", gradeRecordDao.getGradeRecords(user));
		return "grade/add";
	}

	@RequestMapping(value = "/grade/add.html", method = RequestMethod.POST)
	public String add(@ModelAttribute GradeRecord grade, BindingResult bindingResult, ModelMap models,
			HttpServletRequest request) {

		/*grade.setGrade(gradeRecordDao.getGradeRecord(Long.parseLong(request.getParameter("grade"))));
		user.setDelete(false);
		user.setCreateDate(new Date());
		userDao.saveUser(user);
		models.addAttribute("modalShow", "Saved");*/
		return "index";
	}
	
}
