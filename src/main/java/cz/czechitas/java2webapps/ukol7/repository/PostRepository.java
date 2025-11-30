package cz.czechitas.java2webapps.ukol7.repository;

import cz.czechitas.java2webapps.ukol7.entity.Post;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface PostRepository extends JpaRepository<Post, Long> {


    Optional<Post> findBySlug(String slug);

    @Query("select p from Post p where p.published is not null and p.published <= current_timestamp order by p.published desc")
    Page<Post> findAllPublished(Pageable pageable);
}
