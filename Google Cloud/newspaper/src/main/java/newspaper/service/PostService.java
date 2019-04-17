package newspaper.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import newspaper.dao.PostRepository;
import newspaper.Models.PostModel;
@Service
@Transactional
public class PostService {
	private final PostRepository postRepository;

	public PostService(PostRepository postRepository) {
		this.postRepository = postRepository;
	}
	
	public List<PostModel> getAllPosts(){
		List<PostModel> lstPosts= new ArrayList<>();
		for(PostModel posts:postRepository.findAll()) {
			lstPosts.add(posts);
		}
		return lstPosts;
	}
	
	public void createPost(PostModel postModel) {
		postRepository.save(postModel);
	}
	
	public void deletePost(int id) {
		postRepository.delete(id);
	}
}
