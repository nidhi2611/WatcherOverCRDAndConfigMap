package main

import (
	"fmt"
	"gitlab.eng.vmware.com/nsx-allspark_users/lib-go/observability"
)

func main() {
	//fmt.Println(bytes.Equal(slice1, slice2))
	//fmt.Println(bytes.Equal(slice1, slice3))
	//file, err := os.Open("main/config1.yaml")
	//if err != nil {
	//	fmt.Println(err)
	//	return
	//}
	//defer file.Close()
	//
	//// Get the file size
	//stat, err := file.Stat()
	//if err != nil {
	//	fmt.Println(err)
	//	return
	//}
	//
	//// Read the file into a byte slice
	//bs1 := make([]byte, stat.Size())
	//_, err = bufio.NewReader(file).Read(bs1)
	//if err != nil && err != io.EOF {
	//	fmt.Println(err)
	//	return
	//}
	//fmt.Println(bs1)
	//
	//file2, err := os.Open("main/config2.yaml")
	//if err != nil {
	//	fmt.Println(err)
	//	return
	//}
	//defer file2.Close()
	//
	//// Get the file size
	//stat2, err := file2.Stat()
	//if err != nil {
	//	fmt.Println(err)
	//	return
	//}
	//
	//// Read the file into a byte slice
	//bs2 := make([]byte, stat2.Size())
	//_, err = bufio.NewReader(file2).Read(bs2)
	//if err != nil && err != io.EOF {
	//	fmt.Println(err)
	//	return
	//}
	//fmt.Println(bs2)
	//
	//fmt.Println(bytes.Equal(bs1, bs2))
	//four type of logging levels -- default level for logger = info
	//slog.Error("This is the error log")
	//slog.Info("This is the info log")
	//slog.Debug("This is the debug log")
	//slog.Warn("This is the warn level")
	//err:=errors.New("Iam the the error")
	//log.Error().Str("error",err.Error()).Send()
	// to change the default option we have - handler options in text as well as json logs
	//textHandler := slog.NewTextHandler(os.Stdout, &slog.HandlerOptions{Level: slog.LevelDebug})
	//logger := slog.New(textHandler)
	//logger.Info("i am info from text handler")
	//logger.Debug("i am debug from text handler")
	//
	//textHandler := slog.NewTextHandler(os.Stdout, &slog.HandlerOptions{AddSource: true, Level: slog.LevelDebug})
	//Logger := slog.New(textHandler)
	//slog.SetDefault(Logger)
	//Logger.Error("This is the error log from json handler")
	//Logger.Info("This is the info log from json handler")
	//Logger.Debug("This is the debug log from json handler")
	//Logger.Warn("This is the warn level from json handler")
	////converting string level to slogLevel
	//
	//level := parseLoggingLevel("info")
	//log.Print("nidhiiiiii", level)
	//grouping attributes
	// jLogger.Info("Usage Statistics",
	// 	slog.Group("memory",
	// 		slog.Int("current", 50),
	// 		slog.Int("min", 20),
	// 		slog.Int("max", 80)),
	// 	slog.Int("cpu", 10),
	// 	slog.String("app-version", "v0.0.1-beta"),
	// )

	//common attributes
	// attributes := slog.NewTextHandler(os.Stdout, nil).WithAttrs([]slog.Attr{slog.String("module", "main")})
	// cm := slog.New(attributes)

	// cm.Info("Generating logger")
	// cm.Info("Usage",
	// 	slog.Group("allspark-ca",
	// 		slog.Int("cmd", 50),
	// 		slog.Int("main", 20),
	// 		slog.Int("init", 80)),
	// 	slog.Int("server", 10),
	// )

	//parsing logger in context
	//NewContext creates a new context containing the logger.
	// grabbing context from  logger works with only this version of slog - v0.0.0-20221126150942-6ab00d035af9
	// slog.NewContext(context.Background(), jLogger) // context containing logger
	// contextHandler := slog.NewTextHandler(os.Stdout).WithAttrs([]slog.Attr{slog.String("app-version", "v0.0.1-beta")})
	// contextLogger := slog.New(contextHandler)

	// ctx := slog.NewContext(context.Background(), contextLogger) // context containing logger
	// sendUsageStatus(ctx)
	//sample(5)
	logger := observability.NewTsmLogger("main")
	logger.Infof("sfdhgfsh")
	fmt.Print("doneee")
}
