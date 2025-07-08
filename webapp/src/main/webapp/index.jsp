<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Ticket Booking</title>
</head>
<body>
    <h2>Book Your Ticket</h2>

    <% 
        // Check if form is submitted
        String submit = request.getParameter("submit");
        if (submit == null) {
    %>
    
    <form method="post" action="ticketBooking.jsp">
        <label for="name">Name:</label><br/>
        <input type="text" id="name" name="name" required/><br/><br/>
        
        <label for="email">Email:</label><br/>
        <input type="email" id="email" name="email" required/><br/><br/>
        
        <label for="event">Event:</label><br/>
        <select id="event" name="event" required>
            <option value="">--Select Event--</option>
            <option value="Concert">Concert</option>
            <option value="Movie">Movie</option>
            <option value="Theater">Theater</option>
        </select><br/><br/>
        
        <label for="tickets">Number of Tickets:</label><br/>
        <input type="number" id="tickets" name="tickets" min="1" max="10" required/><br/><br/>
        
        <input type="submit" name="submit" value="Book Ticket"/>
    </form>
    
    <%  
        } else {
            // Process booking and show confirmation
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String eventName = request.getParameter("event");
            String tickets = request.getParameter("tickets");
    %>
    
    <h3>Booking Confirmation</h3>
    <p>Thank you, <b><%= name %></b>, for booking <b><%= tickets %></b> ticket(s) for the <b><%= eventName %></b> event.</p>
    <p>A confirmation email will be sent to <b><%= email %></b>.</p>
    
    <a href="ticketBooking.jsp">Book Another Ticket</a>
    
    <%  
        } 
    %>
</body>
</html>

