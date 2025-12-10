package com.eventmanagement.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.eventmanagement.main.model.Event;
import com.eventmanagement.main.model.User;
import com.eventmanagement.main.repository.EventRepo;
import com.eventmanagement.main.repository.UserRepo;

@Controller
public class EventController {

    private final EventRepo eventRepo;

    @Autowired
    private UserRepo userRepo;

    EventController(EventRepo eventRepo) {
        this.eventRepo = eventRepo;
    }

    // Default root URL
    @GetMapping("/")
    public String home() {
        return "landing"; // no need to add .jsp
    }

    //  Show login page
    @GetMapping("/login")
    public String showLoginPage() {
        return "Login";
    }

    //  Handle login POST
    @PostMapping("/login")
    public String login(@RequestParam("email") String email,
                        @RequestParam("password") String password) {
    	
    	if(password.equals("Admin123") && email.equals("admin@gmail.com"))
    	    return "redirect:/admin";

        User u = userRepo.findByEmail(email);
        
        if (u != null && u.getPassword().equals(password)) {
            return "home";
        } else {
            return "Login";
        }
    }
    
    @GetMapping("/register")
    public String showRegisterPage() {
        return "Registration"; // opens Register.jsp
    }

    //  Handle registration POST
    @PostMapping("/register")
    public String registerUser(@RequestParam("participantName") String name,
                               @RequestParam("email") String email,
                               @RequestParam("password") String password) {

        // Check if email already exists
        User existing = userRepo.findByEmail(email);
        if (existing != null) {
            System.out.println("⚠️ User already exists with this email!");
            return "Registration"; // stay on same page
        }

        // Create and save new user
        User u = new User();
        u.setparticipantName(name);
        u.setEmail(email);
        u.setPassword(password);

        userRepo.save(u);
        System.out.println("✅ Registration successful!");

        // After registration, go to login page
        return "Login";
    }
    
 // Show Add Event Form
    @GetMapping("/addEventForm")
    public String showAddEventForm() {
        return "home"; // or your form page (like addEvent.jsp)
    }
    

 // Add Event (Prevent duplicate date)
    @PostMapping("/addEvent")
    public String addEvent(@ModelAttribute Event event, Model model) {

        // check if same date exists
        boolean exists = eventRepo.existsByDate(event.getDate());
        if (exists) {
            model.addAttribute("message", "Date not available! Another event already exists on this date.");
            model.addAttribute("event", new Event());
            return "home"; // redirect नाही — same page वर राहील
        }

        // Save event
        eventRepo.save(event);
        model.addAttribute("message", "✅ Event added successfully!");
        model.addAttribute("event", new Event());
        return "eventadd";
}

}

