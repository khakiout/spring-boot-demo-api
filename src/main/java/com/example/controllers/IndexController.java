package com.example.controllers;

import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class IndexController {

    @RequestMapping(method= RequestMethod.GET)
    void index(HttpServletResponse response) throws IOException {
        response.sendRedirect("swagger-ui.html");
    }
}
