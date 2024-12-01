# Function for color-coded logging
from colorama import Fore, Style


def log(message, level="info"):
    if level == "info":
        print(f"{Fore.CYAN}[INFO] {message}{Style.RESET_ALL}")
    elif level == "success":
        print(f"{Fore.GREEN}[SUCCESS] {message}{Style.RESET_ALL}")
    elif level == "warning":
        print(f"{Fore.YELLOW}[WARNING] {message}{Style.RESET_ALL}")
    elif level == "error":
        print(f"{Fore.RED}[ERROR] {message}{Style.RESET_ALL}")