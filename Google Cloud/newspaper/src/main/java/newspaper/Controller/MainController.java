package newspaper.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import newspaper.Models.PostModel;
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
	@RequestMapping(value= {"postmanagement"}, method =RequestMethod.GET)
	public void viewPostManagement(HttpServletRequest request,Model model){
		request.setAttribute("posts", postService.getAllPosts());
		request.setAttribute("mode", "MODE_POSTS");

	}
	@RequestMapping(value= {"category"}, method =RequestMethod.GET)
	public void viewThoiSuPost(@RequestParam String type,HttpServletRequest request,Model model){
		
		request.setAttribute("posts", postService.getPostsByType(type));

	}
	@GetMapping ("postmanagement/add")
	public String addPost(HttpServletRequest request){
		request.setAttribute("mode", "MODE_NEW");

		return "postmanagement";
	}
	
	@PostMapping (value= {"postmanagement/save"})
	public String savePost(@ModelAttribute PostModel postModel,BindingResult bindingResult,HttpServletRequest request){
		postService.createPost(postModel);
		request.setAttribute("posts", postService.getAllPosts());
		request.setAttribute("mode", "MODE_POSTS");
		return "redirect:/postmanagement";
	}
	
	@GetMapping (value= {"postmanagement/update"})
	public String updatePost(@RequestParam int id, HttpServletRequest request){
		request.setAttribute("post", postService.findPostID(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "postmanagement";
	}
	
	@GetMapping ("postmanagement/delete")
	public String deletePost(@RequestParam int id, HttpServletRequest request){
		postService.deletePost(id);
		request.setAttribute("posts", postService.getAllPosts());
		request.setAttribute("mode", "MODE_POSTS");
		return "redirect:/postmanagement";
	}
}
