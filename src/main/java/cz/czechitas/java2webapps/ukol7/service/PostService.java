package cz.czechitas.java2webapps.ukol7.service;

import cz.czechitas.java2webapps.ukol7.entity.Post;
import cz.czechitas.java2webapps.ukol7.repository.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class PostService {

    private PostRepository postRepository;

    @Autowired
    public PostService(PostRepository postRepository) {
        this.postRepository = postRepository;
    }

    public Page<Post> list(Pageable pageable) {
        return postRepository.findAllPublished(pageable);
    }

    public Page<Post> findAll(Pageable pageable) {
        return postRepository.findAll(pageable);
    }

    public Optional<Post> singlePost(String slug) {
        return postRepository.findBySlug(slug);
    }

    public Post update(Post post) {
        return postRepository.save(post);
    }

    public void delete(String slug) {
        Optional<Post> post = postRepository.findBySlug(slug);
        if (post.isPresent()) {
            postRepository.delete(post.get());
        }
    }

    public Post create(Post post) {
        post.setId(null);
        return postRepository.save(post);
    }
}
