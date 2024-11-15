#include "Log_Parser.hpp"

class HoneyPotLogger : public LogParser {
public:

    virtual std::string getHoneypotType() const = 0;
    virtual std::string getLogFormat() const = 0;

    virtual bool isAttackEntry(const LogEntry& entry) const = 0;
};