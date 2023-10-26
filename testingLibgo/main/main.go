package main

import (
	"errors"
	"gitlab.eng.vmware.com/nsx-allspark_users/lib-go/observability"
	"time"
)

func main() {
	time.Sleep(1 * time.Second)
	observability.Errorf(errors.New("shasshhhii"), "nidhhhiiiiiii")
	time.Sleep(1 * time.Second)
}
