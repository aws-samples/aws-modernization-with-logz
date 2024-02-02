---
title: Installation
chapter: false
weight: 51
---

Now that we have our Kubernetes cluster we can **deploy the OpenTelemetry demo application**.
To make our lives easier we will be utilizing the helm charts to deploy the application.

First of all, let's add the OpenTelemetry repo to our Helm repository

```shell
$ helm repo add open-telemetry https://open-telemetry.github.io/opentelemetry-helm-charts
$ helm repo update

```

To deploy the application, execute this helm command

```shell
$ helm install astronomy-shop open-telemetry/opentelemetry-demo -n astronomy --create-namespace \
  --set default.envOverrides[0].name=OTEL_COLLECTOR_NAME,default.envOverrides[0].value='logzio-monitoring-otel-collector.monitoring.svc.cluster.local' \
  --set grafana.enabled=false \
  --set jaeger.enabled=false \
  --set prometheus.enabled=false \
  --set opentelemetry-collector.enabled=false

```

If you see something like this, it means the application was deployed successfully

```
NAME: astronomy-shop
LAST DEPLOYED: Wed Jan 31 12:14:46 2024
NAMESPACE: astronomy
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
=======================================================================================


 ██████╗ ████████╗███████╗██╗         ██████╗ ███████╗███╗   ███╗ ██████╗
██╔═══██╗╚══██╔══╝██╔════╝██║         ██╔══██╗██╔════╝████╗ ████║██╔═══██╗
██║   ██║   ██║   █████╗  ██║         ██║  ██║█████╗  ██╔████╔██║██║   ██║
██║   ██║   ██║   ██╔══╝  ██║         ██║  ██║██╔══╝  ██║╚██╔╝██║██║   ██║
╚██████╔╝   ██║   ███████╗███████╗    ██████╔╝███████╗██║ ╚═╝ ██║╚██████╔╝
 ╚═════╝    ╚═╝   ╚══════╝╚══════╝    ╚═════╝ ╚══════╝╚═╝     ╚═╝ ╚═════╝


- All services are available via the Frontend proxy: http://localhost:8080
  by running these commands:
     kubectl --namespace astronomy-shop port-forward svc/astronomy-shop-frontendproxy 8080:8080

  The following services are available at these paths once the proxy is exposed:
  Webstore             http://localhost:8080/
  Grafana              http://localhost:8080/grafana/
  Feature Flags UI     http://localhost:8080/feature/
  Load Generator UI    http://localhost:8080/loadgen/
  Jaeger UI            http://localhost:8080/jaeger/ui/
```

Let's ensure all of the components are running. We can do it either from the console to make sure everything is in **Running** state:
```shell
$ kubectl get pods -n astronomy

```

...or using K8s360 dashboards. Let's filter for the `astronomy` namespace and switch the view to **Pod**
![Astronomy app pods](/images/application/logzio-k8s360-pods.png)

Now let's make our frontend visible in a browser, so we are ready for the next section. Run this command:

```shell
$ nohup kubectl port-forward service/astronomy-shop-frontendproxy -n astronomy 8080:8080 &

```

Open the application page: in Cloud9 console click **Preview** / **Preview Running Application**
![Preview app](/images/application/cloud9-preview.png)

In the preview window click **Pop Out Into New Window**
![Pop out](/images/application/cloud9-pop-out.png)

**Keep this tab open**

We are ready for the next section!