package main

import (
	"errors"
	"fmt"
	"gitlab.eng.vmware.com/nsx-allspark_users/lib-go/observability"
)

func main() {
	fmt.Print("hello")
	_, err := observability.NewConfig("config.yaml")
	if err != nil {
		fmt.Println()
		err2 := errors.Join(errors.New("trying to generate error"), err)
		fmt.Print("new ", err2)
	}
	// we will have the config path and the component name , with that we will setConfig()
	//log.setup-logger()- ForModule returns Logger.WithField for given module name or creates new one if not exist into an array called logger which is of type map[string]*logrus.logger
	//log.tsmLogger() -- do not have access to it

	// logrus is doing what --> component name in log file in pkg in k8-rd connector then they are having an array maintaing it with module name as key as value as log level
	// insitialise stop channel
	//var stop chan struct{}
	//config, err := observability.NewConfig("logging-config.yaml")
	//if err != nil {
	//	fmt.Print(err)
	//	return
	//}
	////observability.SetConfigObject(config, "asm-supervisor")
	//w, er := observability.NewWatcher("logging-config.yaml", config)
	//if er != nil {
	//	fmt.Print(er)
	//}
	//fmt.Print(w.Watch(stop))
	//observability.SetConfig()
}

//string (component name ): global log level
//                        : module name [name : value]
//: submodules{key value}
