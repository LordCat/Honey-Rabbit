#include <iostream>
#include <filesystem>


int main(int argc, char* argv[]){
    if (argc != 3){
        std::cerr << "Usage: " << argv[0] << " <cowrie_log_file> <opencanary_log_file>" << std::endl;
        return 1;
    }
    std::cout << "Hello, from honey-rabbit!\n";

    std::filesystem::path cowrie_path = argv[1];
    std::filesystem::path opencanary_path = argv[2];

    if (!std::filesystem::exists(cowrie_path)) {
        std::cerr << "Error: Cannot Find cowrie log file: " << cowrie_path << std::endl;
        return 1;
    }

    if (!std::filesystem::exists(opencanary_path)){
        std::cerr << "Error: Cannot Find opencanary log file: " << opencanary_path << std::endl;
        return 1;
    }

    std::cout << "Selected files: " << std::endl;
    std::cout << "Cowrie log: " << cowrie_path << std::endl;
    std::cout << "OpenCanary log: " << opencanary_path << std::endl;

    return 0;
}
