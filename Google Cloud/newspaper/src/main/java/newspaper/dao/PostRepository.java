package newspaper.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import newspaper.Models.PostModel;
public interface PostRepository extends CrudRepository<PostModel,Integer>{
	List<PostModel> findByType(String type);
	List<PostModel> findById(int id);
}
