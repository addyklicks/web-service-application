```mermaid
graph TB
    %% Networking Layer
    VPC[VPC - Virtual Private Cloud] 
    
    %% Subnets
    PublicSubnet1[Public Subnet 1]
    PublicSubnet2[Public Subnet 2]
    PrivateSubnet1[Private Subnet 1]
    PrivateSubnet2[Private Subnet 2]
    
    %% Internet Gateway
    IGW[Internet Gateway]
    
    %% Security Layer
    SecurityGroup[Security Groups]
    IAMRoles[IAM Roles]
    
    %% Compute Layer
    ECSCluster[ECS Cluster]
    AutoScalingGroup[Auto Scaling Group]
    LoadBalancer[Application Load Balancer]
    
    %% Data Layer
    RDSInstance[RDS MySQL Database]
    ElastiCache[ElastiCache Redis]
    S3Bucket[S3 Bucket - Data Storage]
    
    %% Monitoring Layer
    CloudWatch[CloudWatch Monitoring]
    CloudTrail[CloudTrail Logging]
    
    %% Connections and Relationships
    VPC --> PublicSubnet1
    VPC --> PublicSubnet2
    VPC --> PrivateSubnet1
    VPC --> PrivateSubnet2
    
    IGW --> PublicSubnet1
    IGW --> PublicSubnet2
    
    PublicSubnet1 --> LoadBalancer
    LoadBalancer --> AutoScalingGroup
    AutoScalingGroup --> ECSCluster
    
    ECSCluster --> RDSInstance
    ECSCluster --> ElastiCache
    ECSCluster --> S3Bucket
    
    %% Security Connections
    SecurityGroup --> ECSCluster
    IAMRoles --> ECSCluster
    
    %% Monitoring Connections
    CloudWatch --> ECSCluster
    CloudWatch --> RDSInstance
    CloudTrail --> VPC
    
    %% Annotations
    classDef security fill:#FFD700,stroke:#333,stroke-width:2px;
    classDef compute fill:#87CEFA,stroke:#333,stroke-width:2px;
    classDef data fill:#98FB98,stroke:#333,stroke-width:2px;
    classDef monitoring fill:#DDA0DD,stroke:#333,stroke-width:2px;
    
    class SecurityGroup,IAMRoles security;
    class ECSCluster,AutoScalingGroup,LoadBalancer compute;
    class RDSInstance,ElastiCache,S3Bucket data;
    class CloudWatch,CloudTrail monitoring;
