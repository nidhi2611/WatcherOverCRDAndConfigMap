package main

import (
	"context"
	"fmt"
	kubernetes "gitlab.eng.vmware.com/nsx-allspark_users/m7/policymodel.git/pkg/k8sclients/1.22/client/clientset/versioned"
	v1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	"k8s.io/apimachinery/pkg/watch"
	"k8s.io/client-go/tools/clientcmd"
	"k8s.io/client-go/util/homedir"
	"log"
	"path/filepath"
)

func main() {
	// Get the Kubernetes configuration
	config, err := clientcmd.BuildConfigFromFlags("", filepath.Join(homedir.HomeDir(), ".kube", "config"))
	if err != nil {
		log.Fatal(err)
	}
	// Create a custom resource client
	clientset, err := kubernetes.NewForConfig(config)
	if err != nil {
		log.Fatal(err)
	}

	ch, err := clientset.PolicyClientV1().DiagnosticPolicies("*").Watch(context.Background(), v1.ListOptions{})
	if err != nil {
		log.Fatal(err)
	}
	e := ch.ResultChan()
	Watch(e)

	// Create a list watch for the custom resource
	// Start watching for events on the custom resource
}
func Watch(e <-chan watch.Event) error {
	for {
		select {
		case eve := <-e:
			fmt.Println(eve.Type)
			fmt.Println(eve.Object)

		}
	}
}
