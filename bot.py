# Simple Python Bot

def main():
    print("Hello! I am a simple bot. Type 'help' for commands.")
    
    while True:
        user_input = input("You: ").strip().lower()
        
        if user_input == "hello":
            print("Bot: Hello! How can I assist you today?")
        elif user_input == "help":
            print("Bot: You can ask me anything! Type 'exit' to quit.")
        elif user_input == "exit":
            print("Bot: Goodbye!")
            break
        else:
            print("Bot: I'm sorry, I don't understand that command.")

if __name__ == "__main__":
    main()
