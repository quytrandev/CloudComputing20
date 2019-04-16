package newspaper.dao;

import org.springframework.data.repository.CrudRepository;
import newspaper.Models.PostModel;
public interface PostRepository extends CrudRepository<PostModel,Integer>{

}
