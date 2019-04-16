package newspaper.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import newspaper.service.PostService;

@Controller
@RestController
public class MainController {
	
	
	@Autowired
	private PostService postService;
	
	@GetMapping("/allPosts")
	public String allPosts() {
		return postService.getAllPosts().toString();
	}
	@GetMapping("/")
	public String home() {
		return "index";
	}
}
