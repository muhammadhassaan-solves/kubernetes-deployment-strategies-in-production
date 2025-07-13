<h1>Kubernetes Deployment Strategies in Production</h1>

<h2>Description</h2>
This project showcases real-world Kubernetes deployment strategies including Blue/Green and Canary deployments. It demonstrates how to achieve zero-downtime rollouts, safely shift traffic using traffic splitting, and perform automated rollback procedures.

<h2>Tools & Technologies</h2>


- Kubernetes (Minikube)  
- Deployment Strategies: Blue/Green & Canary
- Nginx, ConfigMaps, NodePort Services
- YAML, kubectl, Bash scripting
- Traffic Monitoring & Port Forwarding
- Deployment Rollback & Health Check Scripts

<h2>Project Walk-through</h2>

<p align="center">
1. Deploy version "v1" of the app and expose with nodeport <br />
<img src="https://i.postimg.cc/m2L09HTp/1.jpg" />
<br />
<br />
2. Launch v2 (Green) alongside v1 (Blue) <br/>
<img src="https://i.postimg.cc/1zBFf2Bj/2.jpg" />
<br />
<br />
3. Switch traffic to v2 (green) <br/>
<img src="https://i.postimg.cc/3x7FLPLt/3.jpg" />
<br />
<br />
4. Rollback to v1(blue) <br/>
<img src="https://i.postimg.cc/NjpmdL20/4.jpg"/>
<br />
<br />
5. Implement Canary rollout with traffic splitting <br/>
<img src="https://i.postimg.cc/rFprKMPX/5.jpg" />
<br />
<br />
6. Perform complete rollout and rollback using bash scripts <br/>
<img src="https://i.postimg.cc/hjkKg86t/6.jpg" />
<br />
<br />

</p>

