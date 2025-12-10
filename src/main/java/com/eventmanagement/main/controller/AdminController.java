package com.eventmanagement.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.eventmanagement.main.model.Event;
import com.eventmanagement.main.repository.EventRepo;

@Controller
public class AdminController {

    @Autowired
    private EventRepo eventRepo;

    // ✅ Display all events
    @GetMapping("/admin")
    public String showAllEvents(Model model) {
        model.addAttribute("eventlist", eventRepo.findAll());
        return "adminlist"; // open admin.jsp
    }

    // ✅ Show Edit form
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") int id, Model model) {
        Event event = eventRepo.findById(id).orElse(null);
        model.addAttribute("event", event);
        return "EditEvent"; // EditEvent.jsp
    }

    // ✅ Update Event
    @PostMapping("/update")
    public String updateEvent(@ModelAttribute Event event) {
        eventRepo.save(event);
        return "redirect:/admin";
    }

    // ✅ Delete Event
    @GetMapping("/delete/{id}")
    public String deleteEvent(@PathVariable("id") int id) {
        eventRepo.deleteById(id);
        return "redirect:/admin";
    }
    
 // ✅ Show Add Event Form
    @GetMapping("/admin/addEventForm")
    public String showAddEventForm() {
        return "admin_addEvent";
    }

    // ✅ Handle Add Event POST
    @PostMapping("/admin/addEvent")
    public String addEvent(@ModelAttribute Event event, Model model) {
        if (eventRepo.existsByDate(event.getDate())) {
            model.addAttribute("error", "⚠️ Date not available! Another event exists on this date.");
            return "admin_addEvent";
        }

        eventRepo.save(event);
        model.addAttribute("message", "✅ Event added successfully!");
        return "redirect:/admin";
    }

}
