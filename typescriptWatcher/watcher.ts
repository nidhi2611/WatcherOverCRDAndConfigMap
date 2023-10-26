import * as k8s from '@kubernetes/client-node';
import { diffieHellman } from 'crypto';

async function getPods() {
    const kc = new k8s.KubeConfig();
    kc.loadFromDefault();
    const client = kc.makeApiClient(k8s.CoreV1Api);
    //console.log("client",client.listNamespace)
    try{
        const crdRes = await client.
        //const podsRes = await client.listNamespacedPod('kube-system');
        //console.log(podsRes.body.items);
    }
    catch (err) {
        console.error('Error getting pods:', err);
    }
}
getPods()
