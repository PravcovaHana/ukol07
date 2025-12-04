package cz.czechitas.java2webapps.ukol7.controller;

import cz.czechitas.java2webapps.ukol7.entity.Post;
import cz.czechitas.java2webapps.ukol7.service.PostService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Optional;

@Controller
public class PostController {

    private final PostService postService;

    @Value("${spring.blog.page-size}")
    private int pageSize;


    @Autowired
    public PostController(PostService postService) {
        this.postService = postService;
    }

    @GetMapping("/")
    public ModelAndView seznam(@RequestParam(defaultValue = "0") int page) {
        Pageable pageable = PageRequest.of(page, pageSize);
        return new ModelAndView("seznam").addObject("prispevky", postService.list(pageable));
    }


    @GetMapping("/{slug}")
    public Object detail(@PathVariable String slug) {
        Optional<Post> opt = postService.singlePost(slug);
        if (opt.isPresent()) {
            return new ModelAndView("detail")
                    .addObject("prispevek", opt.get());
        } else {
            return "redirect:/";
        }
    }




    @GetMapping("/admin")
    public ModelAndView seznamAdmin(@RequestParam(defaultValue = "0") int page) {
        Pageable pageable = PageRequest.of(page, pageSize,  Sort.by("published").descending());
        return new ModelAndView("seznamAdmin").addObject("prispevky", postService.findAll(pageable));
    }


    @GetMapping("/edit/{slug}")
    public ModelAndView detailEdit(@PathVariable String slug) {
        return new ModelAndView("detailAdmin")
                .addObject("prispevek", postService.singlePost(slug).orElseGet(() -> new Post()));
    }

    @PostMapping("/edit/{slug}")
    public String ulozit(@PathVariable String slug, @ModelAttribute("prispevek") @Valid Post prispevek, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "detailAdmin";
        }
        postService.update(prispevek);
        return "redirect:/admin";
    }

    @PostMapping(value = "/edit/{slug}", params = "akce=smazat")
    public String smazat(@PathVariable String slug) {
        postService.delete(slug);
        return "redirect:/admin";
    }

    @GetMapping("/edit/novy")
    public ModelAndView novy() {
        return new ModelAndView("detailAdmin")
                .addObject("prispevek", new Post());
    }

    @PostMapping("/edit/novy")
    public String pridat(@ModelAttribute("prispevek") @Valid Post prispevek, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "detailAdmin";
        }
        postService.create(prispevek);
        return "redirect:/admin";
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
}
