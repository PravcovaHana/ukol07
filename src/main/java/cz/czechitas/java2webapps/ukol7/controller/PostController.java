package cz.czechitas.java2webapps.ukol7.controller;

import cz.czechitas.java2webapps.ukol7.entity.Post;
import cz.czechitas.java2webapps.ukol7.service.PostService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Optional;

@Controller
public class PostController {

    private final PostService postService;

    @Autowired
    public PostController(PostService postService) {
        this.postService = postService;
    }

    @GetMapping("/")
    public ModelAndView seznam(@PageableDefault(size = 20) Pageable pageable) {
        return new ModelAndView("seznam").addObject("prispevky", postService.list(pageable));
    }

    @GetMapping("/admin")
    public ModelAndView seznamAdmin(@PageableDefault(size = 20) Pageable pageable) {
        return new ModelAndView("seznamAdmin").addObject("prispevky", postService.findAll(pageable));
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

    @GetMapping("/edit/{slug}")
    public ModelAndView detailEdit(@PathVariable String slug) {
        return new ModelAndView("detailAdmin")
                .addObject("prispevek", postService.singlePost(slug).orElseGet(() -> new Post()));
    }

    @PostMapping("/{slug}")
    public String ulozit(@PathVariable String slug, @Valid Post prispevek, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "detail";
        }
        postService.update(prispevek);
        return "redirect:/";
    }

    @PostMapping(value = "/{slug}", params = "akce=smazat")
    public String smazat(@PathVariable String slug) {
        postService.delete(slug);
        return "redirect:/";
    }

    @GetMapping("/novy")
    public ModelAndView novy() {
        return new ModelAndView("detail")
                .addObject("prispevek", new Post());
    }

    @PostMapping("/novy")
    public String pridat(@ModelAttribute("proispevek") @Valid Post prispevek, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "detail";
        }
        postService.create(prispevek);
        return "redirect:/";
    }

}
