#pragma once
#include <string>
#include <vector>
#include <memory>
#include <fstream>
#include <optional>
#include <filesystem>

struct LogEntry {
    virtual ~LogEntry() = default;
};

class LogParser {

protected:
    std::ifstream file_;

public:
    virtual ~LogParser() = default;

    virtual bool init(const std::filesystem::path& logPath) {
        file_.open(logPath, std::ios::in);
        return file_.is_open();
    }

    virtual std::optional<std::unique_ptr<LogEntry>> parseNext() = 0;

    virtual bool hasMore() const {
        return file_.good() && !file_.eof();
    }

    virtual void reset() {
        file_.clear();
        file_.seekg(0);
    }

    virtual std::vector<std::unique_ptr<LogEntry>> parseAll() {
        std::vector<std::unique_ptr<LogEntry>> entries;
        while (auto entry = parseNext()) {
            entries.push_back(std::move(*entry));
        }
        return entries;
    }
};