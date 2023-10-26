module gitlab.eng.vmware.com/nsx-allspark_users/lib-go

go 1.18

require (
	code.cloudfoundry.org/bytefmt v0.0.0-20211005130812-5bb3c17173e5
	github.com/avast/retry-go v3.0.0+incompatible
	github.com/aws/aws-sdk-go v1.44.105
	github.com/bluele/gcache v0.0.2
	github.com/davecgh/go-spew v1.1.1
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/elazarl/goproxy v0.0.0-20180725130230-947c36da3153
	github.com/ghodss/yaml v1.0.0
	github.com/golang/mock v1.6.0
	github.com/golang/protobuf v1.5.3
	github.com/google/uuid v1.3.0
	github.com/grpc-ecosystem/go-grpc-middleware v1.3.0
	github.com/imdario/mergo v0.3.12
	github.com/inconshreveable/go-vhost v0.0.0-20160627193104-06d84117953b
	github.com/johnnadratowski/golang-neo4j-bolt-driver v0.0.0-20200323142034-807201386efa
	github.com/onsi/ginkgo v1.16.5
	github.com/onsi/gomega v1.27.6
	github.com/pkg/errors v0.9.1
	github.com/prometheus/client_golang v1.15.1
	github.com/prometheus/client_model v0.3.0 // indirect
	github.com/rcrowley/go-metrics v0.0.0-20201227073835-cf1acfcdf475
	github.com/rs/zerolog v1.26.1
	github.com/satori/go.uuid v1.2.0
	github.com/satori/uuid v1.2.0
	github.com/stretchr/testify v1.8.2
	gitlab.eng.vmware.com/nsx-allspark_users/go-protos/kubernetes v0.0.0-20230606053740-976e3609c719
	gitlab.eng.vmware.com/nsx-allspark_users/go-protos/mocks v0.0.0-20211102213424-35eab2ebda6b
	gitlab.eng.vmware.com/nsx-allspark_users/go-protos/pkg v0.0.0-20230606053740-976e3609c719
	go.opentelemetry.io/contrib/instrumentation/runtime v0.41.1
	// `go.opentelemetry.io/otel` package versions are released in pairs of versions
	//   check https://github.com/open-telemetry/opentelemetry-go/releases
	go.opentelemetry.io/otel v1.15.1
	go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetricgrpc v0.38.1
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc v1.15.1
	go.opentelemetry.io/otel/exporters/prometheus v0.38.1
	go.opentelemetry.io/otel/metric v0.38.1
	go.opentelemetry.io/otel/sdk v1.15.1
	go.opentelemetry.io/otel/sdk/metric v0.38.1
	go.opentelemetry.io/otel/trace v1.15.1
	go.uber.org/atomic v1.9.0
	go.uber.org/zap v1.21.0
	golang.org/x/net v0.9.0
	golang.org/x/oauth2 v0.5.0
	google.golang.org/grpc v1.54.0
	google.golang.org/protobuf v1.30.0
	gopkg.in/fsnotify.v1 v1.4.7
	gopkg.in/yaml.v2 v2.4.0
	k8s.io/api v0.26.3
	k8s.io/apiextensions-apiserver v0.25.4
	k8s.io/apimachinery v0.26.3
	k8s.io/cli-runtime v0.26.3
	k8s.io/client-go v0.26.3
)

require (
	gitlab.eng.vmware.com/nsx-allspark_users/go-protos/nexus v0.0.0-20230606053740-976e3609c719
	gitlab.eng.vmware.com/nsx-allspark_users/m7/policymodel.git v0.0.0-20230202110455-0b9b862aa8be
	gitlab.eng.vmware.com/nsx-allspark_users/m7/policymodel.git/pkg/k8sclients/1.22 v0.0.0-20230202110455-0b9b862aa8be
	gitlab.eng.vmware.com/nsx-allspark_users/nexus/golang v0.0.0-20230606235100-3f135e8412f5
	golang-appnet.eng.vmware.com/cosmos-datamodel v0.0.0-20230606051531-d66002a2e05a
	golang.org/x/sync v0.1.0
)

require (
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/cenkalti/backoff/v4 v4.2.1 // indirect
	github.com/cert-manager/cert-manager v1.10.2 // indirect
	github.com/cespare/xxhash/v2 v2.2.0 // indirect
	github.com/cncf/xds/go v0.0.0-20230105202645-06c439db220b // indirect
	github.com/coreos/go-semver v0.3.0 // indirect
	github.com/coreos/go-systemd/v22 v22.3.2 // indirect
	github.com/elliotchance/orderedmap v1.5.0 // indirect
	github.com/emicklei/go-restful/v3 v3.9.0 // indirect
	github.com/envoyproxy/go-control-plane v0.10.3 // indirect
	github.com/envoyproxy/protoc-gen-validate v0.9.1 // indirect
	github.com/evanphx/json-patch v5.6.0+incompatible // indirect
	github.com/evanphx/json-patch/v5 v5.6.0 // indirect
	github.com/fsnotify/fsnotify v1.5.4 // indirect
	github.com/getkin/kin-openapi v0.76.0 // indirect
	github.com/go-errors/errors v1.4.2 // indirect
	github.com/go-logr/logr v1.2.4 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/go-openapi/jsonpointer v0.19.5 // indirect
	github.com/go-openapi/jsonreference v0.20.0 // indirect
	github.com/go-openapi/swag v0.21.1 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/google/btree v1.0.1 // indirect
	github.com/google/gnostic v0.6.9 // indirect
	github.com/google/go-cmp v0.5.9 // indirect
	github.com/google/gofuzz v1.2.0 // indirect
	github.com/google/shlex v0.0.0-20191202100458-e7afc7fbc510 // indirect
	github.com/gopherjs/gopherjs v0.0.0-20220410123724-9e86199038b0 // indirect
	github.com/gregjones/httpcache v0.0.0-20190611155906-901d90724c79 // indirect
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.7.2 // indirect
	github.com/inconshreveable/mousetrap v1.0.1 // indirect
	github.com/jmespath/go-jmespath v0.4.0 // indirect
	github.com/josharian/intern v1.0.0 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/liggitt/tabwriter v0.0.0-20181228230101-89fcab3d43de // indirect
	github.com/lithammer/shortuuid v3.0.0+incompatible // indirect
	github.com/mailru/easyjson v0.7.7 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.4 // indirect
	github.com/mitchellh/mapstructure v1.5.0 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/monochromegane/go-gitignore v0.0.0-20200626010858-205db1a8cc00 // indirect
	github.com/munnerz/goautoneg v0.0.0-20191010083416-a7dc8b61c822 // indirect
	github.com/nxadm/tail v1.4.8 // indirect
	github.com/onsi/ginkgo/v2 v2.9.4 // indirect
	github.com/peterbourgon/diskv v2.0.1+incompatible // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/prometheus/common v0.42.0 // indirect
	github.com/prometheus/procfs v0.9.0 // indirect
	github.com/sirupsen/logrus v1.8.1 // indirect
	github.com/spf13/cobra v1.6.0 // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	github.com/vmware-tanzu/graph-framework-for-microservices/common-library v0.0.0-20230322063254-fa1af5c3cdcf // indirect
	github.com/vmware-tanzu/graph-framework-for-microservices/nexus v0.0.0-20230322063254-fa1af5c3cdcf // indirect
	github.com/xlab/treeprint v1.1.0 // indirect
	go.etcd.io/etcd/api/v3 v3.6.0-alpha.0 // indirect
	go.etcd.io/etcd/client/pkg/v3 v3.6.0-alpha.0 // indirect
	go.etcd.io/etcd/client/v3 v3.6.0-alpha.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp/internal/retry v1.15.1 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlpmetric v0.38.1 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace v1.15.1 // indirect
	go.opentelemetry.io/proto/otlp v0.19.0 // indirect
	go.starlark.net v0.0.0-20220203230714-bb14e151c28f // indirect
	go.uber.org/multierr v1.8.0 // indirect
	golang.org/x/sys v0.7.0 // indirect
	golang.org/x/term v0.7.0 // indirect
	golang.org/x/text v0.9.0 // indirect
	golang.org/x/time v0.0.0-20220609170525-579cf78fd858 // indirect
	gomodules.xyz/jsonpatch/v2 v2.2.0 // indirect
	google.golang.org/appengine v1.6.7 // indirect
	google.golang.org/genproto v0.0.0-20230110181048-76db0878b65f // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	gopkg.in/tomb.v1 v1.0.0-20141024135613-dd632973f1e7 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	istio.io/api v0.0.0-20230327210753-eb5bfad7b73b // indirect
	istio.io/client-go v1.17.1 // indirect
	k8s.io/klog/v2 v2.100.1 // indirect
	k8s.io/kube-openapi v0.0.0-20221012153701-172d655c2280 // indirect
	k8s.io/utils v0.0.0-20221108210102-8e77b1f39fe2 // indirect
	knative.dev/networking v0.0.0-20230518173013-7c2f7ac1cbeb // indirect
	knative.dev/pkg v0.0.0-20230518105712-dfb4bf04635d // indirect
	sigs.k8s.io/controller-runtime v0.13.0 // indirect
	sigs.k8s.io/gateway-api v0.5.0 // indirect
	sigs.k8s.io/json v0.0.0-20220713155537-f223a00ba0e2 // indirect
	sigs.k8s.io/kustomize/api v0.12.1 // indirect
	sigs.k8s.io/kustomize/kyaml v0.13.9 // indirect
	sigs.k8s.io/structured-merge-diff/v4 v4.2.3 // indirect
	sigs.k8s.io/yaml v1.3.0 // indirect
)

replace github.com/getkin/kin-openapi => github.com/getkin/kin-openapi v0.35.0
