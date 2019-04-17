package newspaper.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import newspaper.Models.PostModel;
import newspaper.service.PostService;

@RestController
public class RestingController {
	@Autowired
	private PostService postService;
	
	@GetMapping("/allPosts")
	public String allPosts() {
		return postService.getAllPosts().toString();
	}
	
	@GetMapping("/createPost")
	public String createPost(@RequestParam String title, @RequestParam String description,
			@RequestParam String content1,@RequestParam String content2,
			@RequestParam String content3,@RequestParam String content4, @RequestParam String type)
	{
		PostModel postModel=new PostModel(title,description,null,content1,content2,
				content3,content4,null,null,null,null,type);
		postService.createPost(postModel);
		return "Post created";
	}
	@GetMapping("/deletePost")
	public String deletePost(int id)
	{
		
		postService.deletePost(id);
		return "Post deleted";
	}
}
