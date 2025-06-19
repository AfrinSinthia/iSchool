<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chatbot</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>

<div class="chatbot">
    <header>
    
        <span class="close-btn" onclick="toggleChatbot()"><i class="fas fa-times"></i></span>
        <div class="header-container">
            <img src="chatbot.png" alt="Chatbot Logo" class="header-image">
            <div class="heading">
                <h3>iSchool Bot</h3>
                <p>online</p>
            </div>
        </div>
    </header>
    
    <div id="chat-box" class="chatbox"></div>
    
    <form id="chat-form" class="chat-input">
        <textarea id="user-input" placeholder="Type a message here..." spellcheck="false" required></textarea>
        <button type="submit" id="send-btn" class="send-button">Send</button>
        <!--<button type="button" id="voice-btn" class="voice-button" onclick="startVoiceInput()">&#x1F3A4;</button>-->
    </form>
</div>

<button class="chatbot-btn" onclick="toggleChatbot()">
    <img src="mini.png" alt="Chatbot Button Image" class="chatbot-btn-image">
</button>

<script src="chatbot.js"></script>
</body>
</html>
