package main

import (
	"context"
	"fmt"
	policyv1 "gitlab.eng.vmware.com/nsx-allspark_users/m7/policymodel.git/pkg/apis/policy.mesh7.io/v1"
	m7clientset "gitlab.eng.vmware.com/nsx-allspark_users/m7/policymodel.git/pkg/k8sclients/1.22/client/clientset/versioned"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	"k8s.io/apimachinery/pkg/watch"
	"k8s.io/client-go/tools/clientcmd"
	"log"
)

func main() {
	// Get the Kubernetes configuration
	configLoader := clientcmd.NewNonInteractiveDeferredLoadingClientConfig(
		clientcmd.NewDefaultClientConfigLoadingRules(),
		&clientcmd.ConfigOverrides{},
	)
	// create the Config object
	cfg, err := configLoader.ClientConfig()
	if err != nil {
		panic(err)
	}
	crdClient, err := m7clientset.NewForConfig(cfg)
	if err != nil {
		panic(fmt.Sprintf("Error building crd clientset: %v", err))
	}

	timeOut := int64(0)
	watcher, err := crdClient.PolicyV1().DiagnosticPolicies("default").Watch(context.Background(), metav1.ListOptions{TimeoutSeconds: &timeOut})
	if err != nil {
		panic(fmt.Sprintf("Error building crd clientset: %v", err))
	}
	log.Print("Watching now ")
	for event := range watcher.ResultChan() {
		item := event.Object.(*policyv1.DiagnosticPolicy)
		switch event.Type {

		case watch.Modified:
			actOnModify(item)
		case watch.Bookmark:
		case watch.Error:
		case watch.Deleted:
		case watch.Added:
			processNamespace(item.GetName())
		}
	}

}
func processNamespace(namespace string) {
	log.Print("Some processing for newly created namespace : ", namespace)
}

func actOnModify(obj *policyv1.DiagnosticPolicy) {
	log.Print("modified CRD : ", obj.Name)
	log.Print("Global Logging Level %v", obj.Spec.Application.Logging.Level)
	for i := range obj.Spec.Application.Logging.Modules {
		fmt.Printf("ModuleName %v , Module level Logging %v \n", i, obj.Spec.Application.Logging.Modules[i].Level)
	}
}
