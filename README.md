The purpose of this one is to deploy a LAB on Azure to create an AKS cluster using Terraform and protecting this cluster with Check Point CloudGuard CNAPPP, specifically using CWPP (Container Workload Protection Plataform).

As a requirement you must have the CNAPPP API Credentials 
In order to create one.
  Go to Infinity Portal (https://portal.checkpoint.com/) or (https://secure.dome9.com/v2/) , Settings > Credentials
![image](https://github.com/alissontibes/aks_cwpp_cp/assets/3854332/58dc9773-4ea4-4951-8d1f-1ea1838c9a95)

here is the information about the files.
  azure-ask-main 
    is related to AKS creation with just two nodes inside a nodepool 
 
  cwpp-main 
    used to create the Cluster inside CWPP over Check Point Infinity Portal, this cluster will have a name and an ID 
    also, it will enable the features related to CWPP, like image assurance, runtime protection and admission control
  providers
    contains all the providers used to deploy it on Azure

  helm-main
    get the Helm chart from Check Point's repository and then create a namespace and install the CWPP features inside the Kubernets cluster that has been created before
    
  azure-ask-variables
    contains all the variables configs 
