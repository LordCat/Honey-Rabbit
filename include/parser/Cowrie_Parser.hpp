#pragma once

#include "Log_Parser.hpp"
#include "I_Log_Parser.hpp"
#include <nlohmann/json.hpp>
#include <string>
#include <memory>
#include <vector>
#include <unordered_set>
#include <iostream>


struct CowrieLogEntry : public LogEntry {
    std::string timestamp;
    std::string eventid;
    std::string src_ip;
    std::string session;
    std::string message;

    std::optional<std::string> username;
    std::optional<std::string> password;
    std::optional<std::string> version;
    std::optional<double> duration;
    std::optional<std::string> protocol;
    std::optional<int> src_port;
    std::optional<std::string> dst_ip;
    std::optional<int> dst_port;

    bool isAuthAttempt() const {
        static const std::unordered_set<std::string> authEvents = {
            "cowrie.login.success",
            "cowrie.login.failed"
        };
        return authEvents.find(eventid) != authEvents.end();
    }

    bool isSuccessfulAuth() const {
        return eventid == "cowrie.login.success";
    }
};

class CowrieLogParser : public HoneyPotLogger {
    public:
        CowrieLogParser() = default;

        std::string getHoneypotType() const override {
            return "Cowrie";
        }

        std::string getLogFormat() const override {
            return "JSON";
        }

        bool isAttackEntry(const LogEntry& entry) const override {
            const auto* cowrieEntry = dynamic_cast<const CowrieLogEntry*>(&entry);
            if (!cowrieEntry) return false;

            static const std::unordered_set<std::string> attackEvents = {
                "cowrie.login.failed",
                "cowrie.login.success",
                "cowrie.command.input",
                "cowrie.session.fale_download",
                "cowrie.session.file_upload"
            };

            return attackEvents.find(cowrieEntry->eventid) != attackEvents.end();
        }

        std::optional<std::unique_ptr<LogEntry>> parseNext() override {
            std::string line;
            if (!std::getline(file_, line) || line.empty()) {
                return std::nullopt;
            }

            try {
                auto jsonData = nlohmann::json::parse(line);
                auto entry = std::make_unique<CowrieLogEntry>();

                entry->timestamp = jsonData["timestamp"].get<std::string>();
                entry->eventid = jsonData["eventid"].get<std::string>();
                entry->src_ip = jsonData["src_ip"].get<std::string>();
                entry->session = jsonData["session"].get<std::string>();
                entry->message = jsonData["message"].get<std::string>();

                if (jsonData.contains("username"))
                    entry->username = jsonData["username"].get<std::string>();
                if (jsonData.contains("password"))
                    entry->password = jsonData["password"].get<std::string>();
                if (jsonData.contains("version"))
                    entry->version = jsonData["version"].get<std::string>();
                if (jsonData.contains("duration"))
                    entry->duration = jsonData["duration"].get<double>();
                if (jsonData.contains("protocol"))
                    entry->protocol = jsonData["protocol"].get<std::string>();
                if (jsonData.contains("src_port"))
                    entry->src_port = jsonData["src_port"].get<int>();
                if (jsonData.contains("dst_ip"))
                    entry->dst_ip = jsonData["dst_ip"].get<std::string>();
                if (jsonData.contains("dst_port"))
                    entry->dst_port = jsonData["dst_port"].get<int>();
                
                return entry;
            } catch (const nlohmann::json::parse_error& e) {
                std::cerr << "Error parsing JSON: " << e.what() << std::endl;
                return std::nullopt;
            }
        }
};