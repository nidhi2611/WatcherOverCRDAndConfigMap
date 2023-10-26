export interface LogConfig {
    level?: string;
    modules?: {
      [key: string]: {
        level: string;
      };
    };
    path?: string;
    timestampFormat?: string;
  }
export interface ConfigMapLogConfig{
    level?:string;
    modules?: {
        [key: string]: {
          level: string;
        };
    };
}