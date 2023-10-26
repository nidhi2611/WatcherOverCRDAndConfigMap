const winston = require('winston');

// Create a Winston logger instance
const logger = winston.createLogger({
    format: winston.format.printf(info => {
        const fileName = info.logger ? info.logger.fileName : '-';
        const lineNumber = info.logger ? info.logger.lineNumber : '-';
        return `${info.timestamp} [${info.level.toUpperCase()}]  [${fileName}:${lineNumber}] - ${info.message}`;
    }),
    transports: [
        new winston.transports.Console() // Log to console
    ]
});

// Wrap the logger function to include line number
function wrapLoggerFunction(loggerFunction) {
    return function (...args) {
        const stackTrace = new Error().stack.split('\n');
        console.log("stack lines",stackTrace)
        const fileName = stackTrace[2].match(/\/([^\/]+)$/)[1].split(':')[0];
        const lineNumber = stackTrace[2].match(/:(\d+):\d+/)[1];
        const loggerInfo = {
            logger: { fileName, lineNumber },
            timestamp: new Date().toISOString(),
            level: loggerFunction.level,
            message: args.join(' ')
        };
        loggerFunction.call(logger, loggerInfo);
    };
}

// Wrap logger functions to include line numbers
logger.error = wrapLoggerFunction(logger.error);
logger.warn = wrapLoggerFunction(logger.warn);
logger.info = wrapLoggerFunction(logger.info);
logger.verbose = wrapLoggerFunction(logger.verbose);
logger.debug = wrapLoggerFunction(logger.debug);
logger.silly = wrapLoggerFunction(logger.silly);

// Example usage
function printFilenameLineNumbers() {
    logger.info('This is an info log');
    logger.error('An error occurred');
}

printFilenameLineNumbers();