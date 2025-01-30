import random

def generate_random_words(num_words=10):
    words = ["apple", "banana", "cherry", "date", "elderberry", "fig", "grape", "honeydew", "kiwi", "lemon"]
    return random.sample(words, num_words)

def create_html_file(words):
    html_content = "<html><head><title>Random Words</title><style>body { background-color: red; }</style></head><body><h1>Random Words</h1><ul>"
    for word in words:
        html_content += f"<li>{word}</li>"
    html_content += "</ul></body></html>"
    
    with open("random_words.html", "w") as file:
        file.write(html_content)

if __name__ == "__main__":
    random_words = generate_random_words()
    create_html_file(random_words)
