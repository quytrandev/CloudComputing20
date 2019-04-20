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
		List<PostModel> posts= new ArrayList<>();
		for(PostModel post:postRepository.findAll()) {
			posts.add(post);
		}
		return posts;
	}
	
	public List<PostModel> getPostById(int id){
		List<PostModel> posts= new ArrayList<>();
		for(PostModel post:postRepository.findById(id)) {
			posts.add(post);
		}
		return posts;
	}
	public List<PostModel> getPostsByType(String type){
		if(type.equalsIgnoreCase("thoisu")) {
			type = "Thời Sự";
		}
		else if(type.equalsIgnoreCase("thegioi")) {
			type = "Thế Giới";
		}
		else if(type.equalsIgnoreCase("congnghe")) {
			type = "Công Nghệ";
		}
		else if(type.equalsIgnoreCase("thethao")) {
			type = "Thể Thao";
		}
		else if(type.equalsIgnoreCase("chinhtri")) {
			type = "Chính Trị";
		}
		List<PostModel> posts= new ArrayList<>();
		for(PostModel post:postRepository.findByType(type)) {
			posts.add(post);
		}
		return posts;
	}
	public PostModel findPostID(int id) {
		return postRepository.findOne(id);
	}
	
	public void createPost(PostModel postModel) {
		postRepository.save(postModel);
	}
	
	public void deletePost(int id) {
		postRepository.delete(id);
	}
}
