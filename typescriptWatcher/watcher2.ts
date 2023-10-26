//import { k8s } from '@kubernetes/client-node';
import * as k8s from '@kubernetes/client-node';
import * as yaml from 'js-yaml'
import { ConfigMapLogConfig, LogConfig } from './model';
import { exec, execSync } from 'child_process';
import { time } from 'console';
const x : ConfigMapLogConfig = {}
const y : ConfigMapLogConfig = {}
function loadKubeConfig(): k8s.KubeConfig {
    const kubeConfig = new k8s.KubeConfig();
    kubeConfig.loadFromDefault();
    return kubeConfig;
}

async function updateLoggingLevelsForCRD(apiObject: any){
  const response=JSON.parse(JSON.stringify(apiObject))
  x.level = response.spec.application.logging.level
  x.modules =response.spec.application.logging.modules
  console.log("logging level",x)
}

async function updateLoggingLevelsForConfigMap(apiObject:any) {
    const yamlObject=JSON.parse(JSON.stringify(apiObject.data))["config.yml"]
    const response:any = yaml.load(yamlObject);
    y.level=response.components["allspark-ca"].level
    console.log("config map level",y.level)
    for (const i in response.components["allspark-ca"].modules){
        console.log("module name",i)
        console.log("module level",response.components["allspark-ca"].modules[i].level)
        response.components["allspark-ca"].modules[i].level="nidhi"
        console.log("module name after updation",response.components["allspark-ca"].modules[i])
    }
    y.modules=response.components["allspark-ca"].modules
    console.log("y====",y)
}
async function watchCRDInNamespace(){
  const kubeConfig = loadKubeConfig();
  //const customObjectsApi = kubeConfig.makeApiClient(k8s.CustomObjectsApi);

  const crdGroup = 'policy.mesh7.io'; // Replace with your CRD's API group
  const crdVersion = 'v1'; // Replace with your CRD's API version
  const crdPlural = 'diagnosticpolicies'; // Replace with your CRD's plural resource name
  const namespace = 'default'; // Replace with the desired namespace

  const watch = new k8s.Watch(kubeConfig);
  watch.watch(
    `/apis/${crdGroup}/${crdVersion}/namespaces/${namespace}/${crdPlural}`,{},
    async (type:any, apiObj:any) => {
      if (type === 'ADDED') {
          await updateLoggingLevelsForCRD(apiObj)
          console.log("logging object after Adding CRD :",x)
      } else if (type==="MODIFIED"){
          await updateLoggingLevelsForCRD(apiObj)
          console.log("logging object after modifying CRD :",x)
      }else if (type === 'DELETED') {
          console.log(`CRD DELETED:`, JSON.stringify(apiObj, null, 2));
      }
    },
    (err:any) => {
      console.error('Watcher error:', err);
    }
  );

}

async function watchConfigMapInNamespace(namespace: string, configMapName: string){
    const kubeConfig = loadKubeConfig();
    //const k8sApi = kubeConfig.makeApiClient(k8s.CoreV1Api);
    try {
      //const response = await k8sApi.readNamespacedConfigMap(configMapName, namespace);
      //console.log('Initial ConfigMap data:', response.body);

      const watcher = new k8s.Watch(kubeConfig);
      watcher.watch(
          `/api/v1/namespaces/${namespace}/configmaps`,
          {},
          (type, apiObj) => {
              if (apiObj.metadata.name === configMapName) {
                  console.log("Now Watching ConfigMap")
                  if (type === 'DELETED') {
                      console.log(`ConfigMap ${configMapName} deleted.`);
                  } else {
                      console.log(`ConfigMap ${configMapName} updated`);
                      updateLoggingLevelsForConfigMap(apiObj)
                      console.log("nidhihiii aagya ::", y)
                  }
              }
          },
          (err) => {
              console.error('Error watching ConfigMap:', err);
          }
      );
  } catch (err) {
      console.error('Error reading ConfigMap:', err);
  }
}
//watchCRDInNamespace()
//watchConfigMapInNamespace("default","logging")

async function isCRDPresent(customObjectsApi:k8s.CustomObjectsApi){
    await customObjectsApi.getNamespacedCustomObject(
        "policy.mesh7.io",
        "v1",
        "t01169079b2600f638feb375336bb702c5d",
        "diagnosticpolicies",
        "diag-testing"
    ).then((response)=>{
        console.log("nidjhi",response)
    }).catch((er)=>{
        console.log("error",er)
    })
}
const customObjectsApi = loadKubeConfig().makeApiClient(k8s.CustomObjectsApi);
console.log("nidhiii hello000000")
console.log(isCRDPresent(customObjectsApi))
console.log("nidhiii hello")