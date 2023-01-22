# Example Kubeconfig for int128/kubelogin

This is a Kubeconfig that you can use if you are in the weave-gitops group.

You may contact KingdonB, the admin of the Kingdon-CI group, if you are not in
the group.

Weave GitOps adds a developer-friendly layer to any Kubernetes cluster, making
it easy to deploy and manage apps. We need Kubernetes to take advantage of it.

## Getting Started

Copy the Kubeconfig below to `~/.kube/config` and install `kubelogin` to login.

## Prerequisites

You need `flux`, `kubectl`, and `kubelogin`.

With Homebrew, Krew, or Chocolatey:

```bash
# Homebrew (macOS and Linux)
brew install int128/kubelogin/kubelogin

# Krew (macOS, Linux, Windows and ARM)
kubectl krew install oidc-login

# Chocolatey (Windows)
choco install kubelogin
```

Visit [int128/kubelogin](https://github.com/int128/kubelogin#setup) for more information. You need `kubelogin` so you can login to Kube.

## Kubeconfig

The Kubeconfig:

```yaml
apiVersion: v1
clusters:
  - cluster:
        certificate-authority-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUJkakNDQVIyZ0F3SUJBZ0lCQURBS0JnZ3Foa2pPUFFRREFqQWpNU0V3SHdZRFZRUUREQmhyTTNNdGMyVnkKZG1WeUxXTmhRREUyTnpRd09ESTBNalF3SGhjTk1qTXdNVEU0TWpJMU16UTBXaGNOTXpNd01URTFNakkxTXpRMApXakFqTVNFd0h3WURWUVFEREJock0zTXRjMlZ5ZG1WeUxXTmhRREUyTnpRd09ESTBNalF3V1RBVEJnY3Foa2pPClBRSUJCZ2dxaGtqT1BRTUJCd05DQUFSSFBKWTk1dHMzVGhNbFNDUHBvNjhyK0dwcjE4QnN4RG1LUEdFVXRtZDYKQU5UU1NROXM4ZTltQ0hMVFJKKy9FVngvVVV2aHQ5b3NBZklGS0FlMHR4QkpvMEl3UURBT0JnTlZIUThCQWY4RQpCQU1DQXFRd0R3WURWUjBUQVFIL0JBVXdBd0VCL3pBZEJnTlZIUTRFRmdRVVhXcFFpVkJQWTVVWXM4bkgyd0U2ClFRKzd2RlV3Q2dZSUtvWkl6ajBFQXdJRFJ3QXdSQUlnVVVDbHg2Z2ZsWGwwZlV6QmJ1U1pBc3ZiNWlsalpMZU4KRmpraU1WM3JPaElDSUZqclZQNUFMdDdoc0E1by85akFCMW5hVEZTc2lGQmlvbUdVcnFjdXk0N0kKLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo=
        server: https://another-test.turkey.local
    name: vcluster_another-test_vcluster_howard-space
  - cluster:
        certificate-authority-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUJlRENDQVIyZ0F3SUJBZ0lCQURBS0JnZ3Foa2pPUFFRREFqQWpNU0V3SHdZRFZRUUREQmhyTTNNdGMyVnkKZG1WeUxXTmhRREUyTmpneE9ERTNNelV3SGhjTk1qSXhNVEV4TVRVME9EVTFXaGNOTXpJeE1UQTRNVFUwT0RVMQpXakFqTVNFd0h3WURWUVFEREJock0zTXRjMlZ5ZG1WeUxXTmhRREUyTmpneE9ERTNNelV3V1RBVEJnY3Foa2pPClBRSUJCZ2dxaGtqT1BRTUJCd05DQUFSOEgrVjJrcy9MREVjM2xGa3VndDhDU01yZFJDYTFxWXM4alRXUWtmOGkKRjBZRHNoaFlhbzZhc2haYi81R3ZiNGVHOXllSzM5aTJScjJmekFFYVV2dGdvMEl3UURBT0JnTlZIUThCQWY4RQpCQU1DQXFRd0R3WURWUjBUQVFIL0JBVXdBd0VCL3pBZEJnTlZIUTRFRmdRVVpQSkJ0cmYrRGRvdHF4akcxbnhsCkJyczdMcDh3Q2dZSUtvWkl6ajBFQXdJRFNRQXdSZ0loQUlBOHM4U1k0QUVENUFkMzRPejl2YkNhTDFuWUhxQmYKUVJaWjBrQ3VmYk8rQWlFQWtWYWMvcG5VSlpmMjhDTDFZUGNCRFhxYktUc1UzeGwydnlCNmZjUnpISXM9Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K
        server: https://hephy-stg.turkey.local
    name: vcluster_hephy-stg_vcluster-hephy-stg-turkey-local_loft_loft-cluster
  - cluster:
        certificate-authority-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUJkekNDQVIyZ0F3SUJBZ0lCQURBS0JnZ3Foa2pPUFFRREFqQWpNU0V3SHdZRFZRUUREQmhyTTNNdGMyVnkKZG1WeUxXTmhRREUyTnpReE5ESTNPRGt3SGhjTk1qTXdNVEU1TVRVek9UUTVXaGNOTXpNd01URTJNVFV6T1RRNQpXakFqTVNFd0h3WURWUVFEREJock0zTXRjMlZ5ZG1WeUxXTmhRREUyTnpReE5ESTNPRGt3V1RBVEJnY3Foa2pPClBRSUJCZ2dxaGtqT1BRTUJCd05DQUFRbEhUeTFJTXRRV2VqZ2F2NUlCWXJ0UFZZZG0wVHVKWTFmNkphdHU2WGcKQnpSSzZGRXdvWkxUbEhKOStvTFQ4UzVKc01hZy9DY1pMTGIrTnliZlpVcytvMEl3UURBT0JnTlZIUThCQWY4RQpCQU1DQXFRd0R3WURWUjBUQVFIL0JBVXdBd0VCL3pBZEJnTlZIUTRFRmdRVTBwSitGVDVXRXBRQjl4ZU9rTVdiClRJSW42ckF3Q2dZSUtvWkl6ajBFQXdJRFNBQXdSUUlnQ0JRK2o1c2g3eDJxb0tnNzgwNDlKZ3Zyd1l2Y0dTNlEKNGl3dno1NkluRndDSVFEMDZheXl4Q01jMGtwSTFjc3NxT3cvYjY0bW0rOXJ1eHJPZDRCcEtFa1pKdz09Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K
        server: https://howard.moomboo.space
    name: vcluster_howard-moomboo-cluster_vcluster-howard-moomboo-space_loft_loft-cluster
  - cluster:
        certificate-authority-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUJkakNDQVIyZ0F3SUJBZ0lCQURBS0JnZ3Foa2pPUFFRREFqQWpNU0V3SHdZRFZRUUREQmhyTTNNdGMyVnkKZG1WeUxXTmhRREUyTnpReU5ESXdPREF3SGhjTk1qTXdNVEl3TVRreE5EUXdXaGNOTXpNd01URTNNVGt4TkRRdwpXakFqTVNFd0h3WURWUVFEREJock0zTXRjMlZ5ZG1WeUxXTmhRREUyTnpReU5ESXdPREF3V1RBVEJnY3Foa2pPClBRSUJCZ2dxaGtqT1BRTUJCd05DQUFSTVhYaThmM1c4enpWSkdOUWk2eUlRZUROZFhKYnA1eTBnVUhNOTJlRHcKNUxRM2xmQzk1cTA5VlRGOVF5TTI2ZkY0NnhkU0cyZi9WUnArMHhnMDRPOWhvMEl3UURBT0JnTlZIUThCQWY4RQpCQU1DQXFRd0R3WURWUjBUQVFIL0JBVXdBd0VCL3pBZEJnTlZIUTRFRmdRVUJxaXp0UDM4eklhT3ZYT0V1eVlBCnBWR3psZW93Q2dZSUtvWkl6ajBFQXdJRFJ3QXdSQUlnWklKcEpqRE5xN0FDdFdvSHNadndOUW1yNlFhYkZpQy8KdWJqLzM1cTVLME1DSUE5ODVwWjhsM0t1cWRZcnl6QVBFdXcvbjd3V3NDR2xIcFFpNEtCTWdUaDMKLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo=
        server: https://howard.moomboo.stage
    name: vcluster_howard-moomboo-staging_vcluster-howard-moomboo-stage_loft_loft-cluster
  - cluster:
        certificate-authority-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUJkakNDQVIyZ0F3SUJBZ0lCQURBS0JnZ3Foa2pPUFFRREFqQWpNU0V3SHdZRFZRUUREQmhyTTNNdGMyVnkKZG1WeUxXTmhRREUyTnpReU5EYzVOREV3SGhjTk1qTXdNVEl3TWpBMU1qSXhXaGNOTXpNd01URTNNakExTWpJeApXakFqTVNFd0h3WURWUVFEREJock0zTXRjMlZ5ZG1WeUxXTmhRREUyTnpReU5EYzVOREV3V1RBVEJnY3Foa2pPClBRSUJCZ2dxaGtqT1BRTUJCd05DQUFTdkNFb1pPdzBWWmIrUmpRaFo3ZEJadFk3ZklVTFJETHBaaFprQWFVdisKTUdUTmU4d2JvTEViemxYR3A4dVZSYjNraURaV1pkemJIU0s0U2FBNnp1QVFvMEl3UURBT0JnTlZIUThCQWY4RQpCQU1DQXFRd0R3WURWUjBUQVFIL0JBVXdBd0VCL3pBZEJnTlZIUTRFRmdRVVlkajc2SWVZVDAzWElaSnRpODAyCmU1TUhYdjh3Q2dZSUtvWkl6ajBFQXdJRFJ3QXdSQUlnYmVjMXYzQWRZM3dnc1liaDFRd0F2UmpSZ09nRjd1TlYKRS9oRWVqZ2w4Z0lDSUJmUWhHQmErQ0wzTGdNaWdEd0Y2cGhJMzFKMGpwdW9oU09uL1FuL0FNWjgKLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo=
        server: https://limnocentral.turkey.local
    name: vcluster_limnocentral_test_howard-space
  - cluster:
        certificate-authority-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUJkekNDQVIyZ0F3SUJBZ0lCQURBS0JnZ3Foa2pPUFFRREFqQWpNU0V3SHdZRFZRUUREQmhyTTNNdGMyVnkKZG1WeUxXTmhRREUyTmpneE56ZzBPVGt3SGhjTk1qSXhNVEV4TVRRMU5EVTVXaGNOTXpJeE1UQTRNVFExTkRVNQpXakFqTVNFd0h3WURWUVFEREJock0zTXRjMlZ5ZG1WeUxXTmhRREUyTmpneE56ZzBPVGt3V1RBVEJnY3Foa2pPClBRSUJCZ2dxaGtqT1BRTUJCd05DQUFTOEJjcStFWHlLMWhwSk1GRXd0VWs4cGZ6NDZ0VzhJS1d0UUZicWMzeXcKOEdmdEhGM2ZzL055OHU2a0NFWFd0QTJ5YnNzRzZGSHBJa2IyTUxkb1JTazRvMEl3UURBT0JnTlZIUThCQWY4RQpCQU1DQXFRd0R3WURWUjBUQVFIL0JBVXdBd0VCL3pBZEJnTlZIUTRFRmdRVW9OV0h4cjlsbXJ0RGc0Y0FveDZtCnc0SjFnY013Q2dZSUtvWkl6ajBFQXdJRFNBQXdSUUlnUkYvS0dhNHo4NlFGMlNBYUVLRmdra2xqZDlWWDFWSEIKTEZ3OHpReVd0bHdDSVFDNStUK2Vtd1RYUlp2STBDc0lYaWY2NlR5RmFmTnB1YysrT3pjRnhtSUw2dz09Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K
        server: https://moo-cluster.turkey.local
    name: vcluster_moo-cluster_vcluster-moo-cluster-mgorr_loft_loft-cluster
  - cluster:
        certificate-authority-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUJkekNDQVIyZ0F3SUJBZ0lCQURBS0JnZ3Foa2pPUFFRREFqQWpNU0V3SHdZRFZRUUREQmhyTTNNdGMyVnkKZG1WeUxXTmhRREUyTnpReE5USXhNVGd3SGhjTk1qTXdNVEU1TVRneE5URTRXaGNOTXpNd01URTJNVGd4TlRFNApXakFqTVNFd0h3WURWUVFEREJock0zTXRjMlZ5ZG1WeUxXTmhRREUyTnpReE5USXhNVGd3V1RBVEJnY3Foa2pPClBRSUJCZ2dxaGtqT1BRTUJCd05DQUFTaHg1elg2WHJHK2lVdkNhZFk0S1dIVDNmaUpmaFJSVDRDcGtPZituMkwKVGpTWGNQTUtsZDBSTlpETEV3Q0RDcmhBK0lMRnV0QjA1YmpvRFpkQXhTeUtvMEl3UURBT0JnTlZIUThCQWY4RQpCQU1DQXFRd0R3WURWUjBUQVFIL0JBVXdBd0VCL3pBZEJnTlZIUTRFRmdRVTc5YUo1RXdERDcwdnBkRzhTN3pkCnVpNnYwQlF3Q2dZSUtvWkl6ajBFQXdJRFNBQXdSUUloQVBWSXVQbDFzWFVwK1FjeU96TUJYK24zRnlqMDhaZ2gKbXpiQ3BrelZRSkw2QWlCbEhURjNwQVFkb0dBc0poYkg1cXo3SDZaNEllc1h0V3pXcXZDbXQvbURTUT09Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K
        server: https://somtochi.turkey.local
    name: vcluster_somtochi_default_howard-space
  - cluster:
        certificate-authority-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUJkekNDQVIyZ0F3SUJBZ0lCQURBS0JnZ3Foa2pPUFFRREFqQWpNU0V3SHdZRFZRUUREQmhyTTNNdGMyVnkKZG1WeUxXTmhRREUyTnpRd09ERXdNemt3SGhjTk1qTXdNVEU0TWpJek1ETTVXaGNOTXpNd01URTFNakl6TURNNQpXakFqTVNFd0h3WURWUVFEREJock0zTXRjMlZ5ZG1WeUxXTmhRREUyTnpRd09ERXdNemt3V1RBVEJnY3Foa2pPClBRSUJCZ2dxaGtqT1BRTUJCd05DQUFSSjN6d0YyOFoySkI4OEFZR3pCeGxpclFRZy9KUGZXQnRvMmF5Z2NMU2gKTUFoSE0zRWFEUnlTVUVXVmFPa3NsakNtQ0JwNy9ZTFRmWXdBd21GTmVCajJvMEl3UURBT0JnTlZIUThCQWY4RQpCQU1DQXFRd0R3WURWUjBUQVFIL0JBVXdBd0VCL3pBZEJnTlZIUTRFRmdRVTdxbWlyS01NWFpwSkRJM2MrUEljCkQwWDYrdEF3Q2dZSUtvWkl6ajBFQXdJRFNBQXdSUUlnUlVieThHNEtQQmdlV2V0V3dOYjdHRklQaXUySlAzejcKeG9HdTI4M0VuWXNDSVFEU2FUMGdxUjZpaDBLbjJxTWxWUlBGdjBFbCtVemFYcE1OcGkyeHdEaWdZdz09Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K
        server: https://vcluster.turkey.local
    name: vcluster_vcluster_vcluster_howard-space
contexts:
  - context:
        cluster: vcluster_hephy-stg_vcluster-hephy-stg-turkey-local_loft_loft-cluster
        namespace: default
        user: kubelogin
    name: hephy-stg
  - context:
        cluster: vcluster_howard-moomboo-cluster_vcluster-howard-moomboo-space_loft_loft-cluster
        namespace: botkube
        user: kubelogin
    name: howard-space
  - context:
        cluster: vcluster_howard-moomboo-staging_vcluster-howard-moomboo-stage_loft_loft-cluster
        namespace: flux-system
        user: kubelogin
    name: howard-stage
  - context:
        cluster: vcluster_limnocentral_test_howard-space
        namespace: default
        user: kubelogin
    name: limnocentral
  - context:
        cluster: vcluster_moo-cluster_vcluster-moo-cluster-mgorr_loft_loft-cluster
        namespace: traefik-staging
        user: kubelogin
    name: moo-cluster
  - context:
        cluster: vcluster_vcluster_vcluster_howard-space
        user: kubelogin
    name: vcluster
  - context:
        cluster: vcluster_another-test_vcluster_howard-space
        user: kubelogin
    name: vcluster_another-test_vcluster_howard-space
  - context:
        cluster: vcluster_somtochi_default_howard-space
        user: kubelogin
    name: vcluster_somtochi_default_howard-space
  - context:
        cluster: vcluster_vcluster_vcluster_howard-space
        user: kubelogin
    name: vcluster_vcluster_vcluster_howard-space
current-context: howard-space
kind: Config
preferences: {}
users:
  - name: kubelogin
    user:
        auth-provider:
            config:
                client-id: weave-gitops
                client-secret: AiAImuXKhoI5ApvKWF988txjZ+6rG3S7o6X5En
                extra-scopes: groups
                idp-issuer-url: https://dex.howard.moomboo.space
            name: oidc
```

In the kubeconfig above, several details are significant. The name `oidc` is
significant but the name `kubelogin` is not, and can be changed to whatever you
want. The `client-id` and `client-secret` are also significant as with the
`idp-issuer-url`, and each cluster gets a `certificate-authority-data` that
also must match the cluster.

We can prepare this kubeconfig in advance, to avoid the need to give any
permissioned access to any user for direct access to the CAPI kubeconfig.

(This one has some stale `certificate-authority-data` and might need refresh.)

This configuration uses your GitHub OIDC through a Dex issuer that has been set
up for Weave GitOps Enterprise or Open Source. You can use it to break the
glass and get direct access to the Kubernetes cluster.

## Kconf

I found this great tool to help manage multiple kubeconfigs easily, called `kconf`:

* [particledelay/kconf](https://github.com/particledecay/kconf)

ISA there will be a way to easily get fresh kubeconfig with all clusters that
you have access to, based on your OIDC. In the mean time, use `kconf` and your
text editor to make this kubeconfig your own.

You can find a direct-downloadable copy of this kubeconfig on GitHub here:

* [example-kube-config](https://github.com/kingdon-ci/example-kubeconfig/blob/main/example-kube-config)
* [raw: example-kube-config](https://github.com/kingdon-ci/example-kubeconfig/raw/main/example-kube-config)

You can do it! We can do it 😁
