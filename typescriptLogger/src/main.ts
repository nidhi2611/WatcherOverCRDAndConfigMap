import { logger } from ".";
logger.info('This is an info log message.'); // Log without stack trace
logger.error('This log message.', { stack: new Error});
logger.info('This info message.', { stack: new Error });
logger.debug("hbjhsdb")