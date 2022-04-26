package com.vkarakay.sweater.controller;

import com.vkarakay.sweater.domain.Message;
import com.vkarakay.sweater.domain.User;
import com.vkarakay.sweater.repository.MessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class MainController {
    @Autowired
    private MessageRepository messageRepository;

    @GetMapping("/")
    public String greeting(Map<String, Object> model) {
        return "greeting";
    }

    @GetMapping("/main")
    public String main(@RequestParam (required = false) String filter, Model model) {
        Iterable<Message> allMessages = messageRepository.findAll();
        if (filter != null && !filter.isEmpty()) {
            allMessages = messageRepository.findBytag(filter);
        }
        else {
            filter = "Поиск";
            allMessages = messageRepository.findAll();
        }
        model.addAttribute("messages", allMessages);
        model.addAttribute("filter", filter);
        return "main";
    }

    @PostMapping("/main")
    public String add(
            @AuthenticationPrincipal User user,
            @RequestParam String text,
            @RequestParam String tag,
            Map<String, Object> model) {
        Message message = new Message(text, tag, user);
        messageRepository.save(message);

        Iterable<Message> allMessages = messageRepository.findAll();
        model.put("messages", allMessages);
        return "main";
    }
}
