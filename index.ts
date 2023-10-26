import winston, { format } from 'winston';

function getCallerInfo(stack:any): {lineNumber: number } {
    //const e=new Error(stack)
    const stackLines = stack.stack ? stack.stack.split('\n') : [];
    console.log ("stackLines",stackLines)
    // The stack trace starts from the third line as the first two lines are for the Error object creation.
    const callerLine = stackLines[1] || '';
    // console.log ("stackLines",stackLines[2])
    // The stack trace line typically looks like this:
    // "    at functionName (/path/to/your/file.js:10:15)"
    const matchResult = callerLine.match(/\s+at\s+(.+)\s+\((.*):(\d+):(\d+)\)/);
  
    if (matchResult) {
      const [, , , lineNumber] = matchResult;
      return {lineNumber: parseInt(lineNumber, 10) };
    }
  
    // If the stack trace line doesn't match the expected pattern, return default values.
    return {lineNumber: 0 };
}

const customFormat = format.printf(({ level, message, label, timestamp,stack}) => {
    //console.log("stack",stack)
    const {lineNumber } = getCallerInfo(stack);
    const logMessage = `[${timestamp}] [${label || 'No label'}] [${level}]: ${message}`;
    const callerInfo = lineNumber ? ` (${lineNumber})` : '';
    return `${logMessage}${callerInfo}`;
  });

export const logger = winston.createLogger({
  level: 'info',
  format: format.combine(
    format.colorize(),
    format.timestamp({ format: 'YYYY-MM-DD HH:mm:ss' }),
    customFormat
  ),
  transports: [
    new winston.transports.Console(),
  ],
});

// logger.info('This is an info log message.'); // Log without stack trace
// logger.error('This is an error log message.', { stack: new Error() }); // Log with stack trace