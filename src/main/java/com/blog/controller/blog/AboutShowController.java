package com.blog.controller.blog;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author ly
 */
@Controller
public class AboutShowController {

    @GetMapping("about")
    public String about(){
        return "common/about";
    }
}
