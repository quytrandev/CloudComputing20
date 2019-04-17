package newspaper.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import newspaper.service.PostService;

@Controller
public class MainController {
	
	
	@Autowired
	private PostService postService;
	@GetMapping("/")
	public String home(HttpServletRequest request) {
		request.setAttribute("posts", postService.getAllPosts());
		return "index";
	}
	
}
