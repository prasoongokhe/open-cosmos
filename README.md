# Cloud Infrastructure Challenge Project

To complete the project, you will need access to a cloud provider or a Kubernetes cluster. If you do not have access to free credit with a public cloud provider, we suggest using a tool like minikube, k3s, or Docker Desktop to set up a local Kubernetes cluster.

The project must be accomplished using an "Infrastructure as Code" (IaC) tool like Terraform, Ansible, paid tools such as Pulumi, AWS CloudFormation, Azure ARM Templates, or Google Deployment Manager are not acceptable.

We encourage you to work in a similar way as you would in a professional environment to produce what you consider to be a production-ready project.

We expect you to spend around 4 to 10 hours on this project. Don't worry if you don't finish it, just be prepared to explain what you would have done with more time.

## Deliverables

You must provide the code, configuration, and instructions required to run the project. Assume that the reader has fundamental knowledge of software development and infrastructure but may not have prior experience with the tools you choose to use.

Additionally, you should include screenshots or a video screen capture that displays the final outcome in a cloud's provider UI, Kubernetes UI, or printed output from a CLI tool.

Finally, you are required to submit a brief document or a set of slides that explains your interpretation of the project, the decisions you made, and the reasoning behind them. You should also outline the next steps you would take if you had more time to work on the project.

## Project description

Enclosed with this description is a binary file that launches two HTTP servers on different ports. One of these servers is intended to be publicly accessible to users, while the other exposes metrics that can be collected by an internal system. The metrics are presented in the Prometheus format and can be accessed via the `/metrics` endpoint.


The objectives of the project are to:
- Package the binary file into a Docker image.
- Deploy the Docker image either on Kubernetes pod or a Cloud Provider's virtual machine.
- Set up a metrics service that is compatible with the OpenMetrics format and configure it to collect data from the service.
- Deploy Grafana or any other visualisation tool compatible with the metrics service you deployed. Configure it to display data from said service.
- Design a dashboard within your chosen visualisation tool to display a histogram of the service response times.

## Evaluation

We will be evaluating the following:
- That the solution presented works as described.
- The code or configuration itself. How clear, readable, and maintainable it is.
- If the deployed infrastructure follows best practices in terms of setup and security.
- The reasoning provided for each decision taken, including tool selection.

Remember that this is an exercise for you to shine and show your best skills:
- Any additional contribution or idea that you wish to implement will be positively valued.
- You can use any tool(s) of choice for any of these additional contributions that you would like to make.

## Included binary

The included binary is provided for different architectures and operating systems. Since this project requires the candidate to package it into a Docker image, consider the platform where docker runs when choosing the version.

For the binary to work as expected, it must have a configuration file in a folder named `config` in the working directory. The configuration file must be named `configuration.yaml`. An example file is provided which configures the HTTP servers to run on ports 8080 and 8081. As an example, if my current working directory is  `/home/opencosmos` and the binary is at `/home/opencosmos/demo-service`, the configuration file must be at `/home/opencosmos/config/configuration.yaml` .

The binary follows a command approach, to run it is necessary to provide the command to run after the binary name. For this challenge project, candidates should use the  ports-and-adapters  command. An example of the full command to run this from the CLI would be  ./demo-service port-and-adapters .

When testing, to generate metrics, users can use the `GET` endpoint  `/next-times-at-angle` with `satellite`  (integer) and  angle  (float) query parameters. The following CURL example can be used when running on localhost with the default ports:
 curl `http://localhost:8080/next-times-at-angle?satellite=3&angle=128.4` .

Finally, by default, the metrics server is exposed on port 8081 and makes the `GET` endpoint `/metrics`  accessible. After generating some requests, users should see metrics using the following CURL example when running on localhost with the default ports:
 `curl http://localhost:8081/metrics`# open-cosmos
# open-cosmos
# open-cosmos
# open-cosmos
