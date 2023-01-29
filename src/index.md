# Example Kubeconfig for int128/kubelogin

This is a Kubeconfig that you can use if you are in the weave-gitops group.

You may contact KingdonB, the admin of the Kingdon-CI group, if you are not in
the group.

Weave GitOps adds a developer-friendly layer to any Kubernetes cluster, making
easier to deploy and manage apps. We need Kubernetes for Flux and Weave GitOps.

#### Solved in Golang

There is a [super-tl;dr now][solution] if you're up for compiling some Golang.

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

Visit [int128/kubelogin](https://github.com/int128/kubelogin#setup) for more information.
You need `kubelogin` so you can login to Kube. (No duh!)

## Kubeconfig

The Kubeconfig:

```yaml
apiVersion: v1
clusters:
  - cluster:
        certificate-authority-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNJakNDQWNpZ0F3SUJBZ0lJR0g5b202NjFSdFF3Q2dZSUtvWkl6ajBFQXdJd0l6RWhNQjhHQTFVRUF3d1kKYXpOekxYTmxjblpsY2kxallVQXhOamMwTnpZek1EUTNNQjRYRFRJek1ERXlOakU1TlRjeU4xb1hEVEkwTURFeQpPREl6TXpNMU5Wb3dHVEVYTUJVR0ExVUVBeE1PYTNWaVpTMWhjR2x6WlhKMlpYSXdXVEFUQmdjcWhrak9QUUlCCkJnZ3Foa2pPUFFNQkJ3TkNBQVJCVlo2S3ZFY2ZFMTNnUkVSWHY0WVNSSkdYaEp6bVhNTzZkOUY5OE9namZpN3QKMjdUVXJ0eXhRYjkvTHVhUHNoNnFKdnVVcEJrdDN6M0ZTdDVrY0xRcm80SHZNSUhzTUE0R0ExVWREd0VCL3dRRQpBd0lGb0RBVEJnTlZIU1VFRERBS0JnZ3JCZ0VGQlFjREFUQWZCZ05WSFNNRUdEQVdnQlJRRjJGTkVSSGtKK0RBCmN0VFFmM3U3RWlRT2JUQ0Jvd1lEVlIwUkJJR2JNSUdZZ2lScmRXSmxjbTVsZEdWekxtUmxabUYxYkhRdWMzWmoKTG1Oc2RYTjBaWEl1Ykc5allXeUNGbXQxWW1WeWJtVjBaWE11WkdWbVlYVnNkQzV6ZG1PQ0VtdDFZbVZ5Ym1WMApaWE11WkdWbVlYVnNkSUlLYTNWaVpYSnVaWFJsYzRJSmJHOWpZV3hvYjNOMGdoVjJZMngxYzNSbGNpNTBkWEpyClpYa3ViRzlqWVd5SEJIOEFBQUdIQkFwcjM1NkhCQXB0bngySEJBb25nQUV3Q2dZSUtvWkl6ajBFQXdJRFNBQXcKUlFJaEFKY2VFRUF2cFN6bm05Mm1JRm4rQlVKTXBEVGNTajRLazRtRllDZVNxVnMzQWlBc3kvS3lodnk3dGE4cgpkbGd1V0MrZE5BbjBlaThtRDY1NlFrTDV1bVl3c0E9PQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==
        server: https://vcluster.turkey.local
    name: vcluster
  - cluster:
        certificate-authority-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNJakNDQWNpZ0F3SUJBZ0lJU293S1pWQWxFUGt3Q2dZSUtvWkl6ajBFQXdJd0l6RWhNQjhHQTFVRUF3d1kKYXpOekxYTmxjblpsY2kxallVQXhOamMwTnpZek1EUTJNQjRYRFRJek1ERXlOakU1TlRjeU5sb1hEVEkwTURFeQpPREl6TkRJeE9Gb3dHVEVYTUJVR0ExVUVBeE1PYTNWaVpTMWhjR2x6WlhKMlpYSXdXVEFUQmdjcWhrak9QUUlCCkJnZ3Foa2pPUFFNQkJ3TkNBQVFPU3VpYnZBQTg5RlZoWkVveWxVUU1LcnZLamkyMmowSjRYR25xZ3A4RG1jcHcKY0g0amVVYmxENWpXS3Awc0VqQ3o5dXROVFdPKzBVQ1V5VzhVU0J1cW80SHZNSUhzTUE0R0ExVWREd0VCL3dRRQpBd0lGb0RBVEJnTlZIU1VFRERBS0JnZ3JCZ0VGQlFjREFUQWZCZ05WSFNNRUdEQVdnQlRPekFPSkxqSDBhdmdHCnBkNHdJVHZmVUtXUHFUQ0Jvd1lEVlIwUkJJR2JNSUdZZ2lScmRXSmxjbTVsZEdWekxtUmxabUYxYkhRdWMzWmoKTG1Oc2RYTjBaWEl1Ykc5allXeUNGbXQxWW1WeWJtVjBaWE11WkdWbVlYVnNkQzV6ZG1PQ0VtdDFZbVZ5Ym1WMApaWE11WkdWbVlYVnNkSUlLYTNWaVpYSnVaWFJsYzRJSmJHOWpZV3hvYjNOMGdoVnpiMjEwYjJOb2FTNTBkWEpyClpYa3ViRzlqWVd5SEJIOEFBQUdIQkFwa0JvcUhCQXBuWm9tSEJBb29BQVl3Q2dZSUtvWkl6ajBFQXdJRFNBQXcKUlFJZ0QvZ3pmNVc4QVhYZjc4WTB1VWJCMDM1MjlMMUR5NzUvK2JhUk9oekdrQWtDSVFEZFlzRng2QXFuYmtsbgpkcnJXV2xlb3FRazlUL1dvMzNUTGhUZVE0Ujk2aXc9PQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==
        server: https://somtochi.turkey.local
    name: somtochi
  - cluster:
        certificate-authority-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUZJVENDQXdtZ0F3SUJBZ0lIQVNscVhGWFVMREFOQmdrcWhraUc5dzBCQVFzRkFEQVBNUTB3Q3dZRFZRUUsKRXdSc2IyWjBNQjRYRFRJeU1UQXlNekUxTXpFd09Wb1hEVE15TVRBeU16RTFNekV3T1Zvd0R6RU5NQXNHQTFVRQpDaE1FYkc5bWREQ0NBaUl3RFFZSktvWklodmNOQVFFQkJRQURnZ0lQQURDQ0Fnb0NnZ0lCQU01T0tZcFoyL3EzCngvZkhyK2V6ekRnUk00ODhOMkVXeTB3QzNPcDBmbmlJZ2krVVdkSTBRM2ZZUTc3NEgvcmRIUEpHbnZKYXVoby8KcEgvWS9oV1NHWUhFQVdxbDdoV3Z5QmwzSlF6ZmZzWjJyNk5PNGZ1dWtYYXNxQVRqWEN3aGZrUEYvUE9GTXg4UwpwSks4QXRjaStza0VyWFFkdEtGNDRzZ2srb1Y1a3UzeE1zWkFRamtRank4djUyME1tenY1WTlkb0d2eFBBQ1grCmxUOGRyT3Y2VHVySnNFdU1kSFpKRFpwTjREM2ltY0RSSGs4dHpyblkwa3lrMmlzZVhJTGxZQUpFMms2Nm5xWTUKeWhyYU95cko0ZVJUM0hySkZ5VGxFVi9IQjBBcUdHWUZwdm9iYzl6SEZBZ3ZFYi93Qno0UHFnczhPYm55SU9YRwpqT0M4YUZrZzhZRWN5VWd1bGQrbzQySjZjYk9HRnBXSnZWRXBzUDh2M0x2bnBYQVNESUc4VGlydzk2azlCTVgxCjZhQTYyU2FVWW5KL2RNRVRGV0UxVUpEaEpwK01zNDVRa29BVXlJSHJPQnJaY1pqMmdtb0FiUWNBempYUWlpUk8KRVg4c3phdjJHditCU1hpTWh4anN1SFFDczJpUU43LzI3U1VZVFpHcldUSmtxdXlRUFVTQ1Zid2pWMkpKV25VMgpjem1IUXpSL3hENlBncUtXeWxFSzY0R0grcCtUZXVJRzROUzUyRC8vT1VVZEs0K0VPNmljbmlEdll3OTlEOEQvCmtGUjVkWjl0eUUzNjRQMGJBank3ZWd6eXZOeVcrMllScEtuVk94ZkpkVUpZRExsazJGQmZDV1I3OGIvSlVxSXoKTlJMSEtJY1h1MkhjRytCMHpMVWo1bDJ3cFFXUURRZW5BZ01CQUFHamdZRXdmekFPQmdOVkhROEJBZjhFQkFNQwpCNEF3SFFZRFZSMGxCQll3RkFZSUt3WUJCUVVIQXdJR0NDc0dBUVVGQndNQk1Bd0dBMVVkRXdFQi93UUNNQUF3ClFBWURWUjBSQkRrd040SUpiRzlqWVd4b2IzTjBnZzFzYjJaMExteHZablF1YzNaamdodHNiMlowTG14dlpuUXUKYzNaakxtTnNkWE4wWlhJdWJHOWpZV3d3RFFZSktvWklodmNOQVFFTEJRQURnZ0lCQUV0WjNleUVGUWtvWG5sMwpIcitjaHplWk9NRlJtc3BwQzQ4bm1DUnNWWklRQnpBbFlKclNzdXdYRkg2aitkZjUrcmNZbmp6ZDU4M2NqbmMyCmd6YmVXaUQ3MU1iM1ZKNVE5MkVMcnFuWSs3T1BFZHRnOEozSUg0eGJJcXMzaFpSV0pIb3dZeW5QYVFOVW1yb2UKbmhuMVN3eUV0dUlWaWxidFUwZzl3M3pNN1ZDcitHUUVJM3BmRmRtbFNmektSa3B1Z01ZZi9iYy9aU0M2dEloVgpkeUE4U2Rwa1Q3K3g4dktMcDcxRHJ1ZWd1NnBkS3FPTGVIRThzS0FhTXNPWlZxY1NYcUIyOFgyREFoWkl2dnpMClovYlgvd3M4MGZQS2F3cU1GaGFsYVhWSi9BUW55N1BsS0QycjRsUTJtRU1JQXJPZmdDVlJJdXJUZmVxcmE3Sy8KUVVqMjN4QkQ5TWczL0VBRHJHZnJTd0dvYUwyN2tYdkpOS0VSQjJMUkFvWHRsdWpETXVwSlE1WVhvekEwWlF1NApMaSszS3JQV2MxaWxONzhHa1RacndRQXVyTXlIZkpseHFJcmRGU2NCZmVIUUdVOVBjY3FGNVNQZGJzR09BWE96CkJJWG9xRVBYSTVpVXpKOTBLaldpTVlmK0Q0VFdaTDJ4c3ByTVl3TjdFWXFZeEtTbEhCLzJHQjA2ejBJVDEwajcKMzVIRjZKaDZiSUdVMENkM0lyVU8zbkpFWlQ5WCtvb29SOEp6aGxXdk91TmFuWnJjQVpsNENnLzdXalBLOUVhKwpMeityZXdvUVVUVEY1VTJBWmw3WmRqNmk0Uk5zeTJYZDdMa1FjRXcxRDRTUzc5c3FpUkxRLzM5OG5Mc3dLWHBmCmFaZDhzcWYybVVXczlLN3Q5djdESWxyUG1nS1oKLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo=
        server: https://loft.loft.svc.cluster.local
    name: management
  - cluster:
        certificate-authority-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNJakNDQWNtZ0F3SUJBZ0lJS01pR0xXRW5CZVV3Q2dZSUtvWkl6ajBFQXdJd0l6RWhNQjhHQTFVRUF3d1kKYXpOekxYTmxjblpsY2kxallVQXhOamMwTlRjeU5UUXhNQjRYRFRJek1ERXlOREUxTURJeU1Wb1hEVEkwTURFeQpPREl6TkRFd01Gb3dHVEVYTUJVR0ExVUVBeE1PYTNWaVpTMWhjR2x6WlhKMlpYSXdXVEFUQmdjcWhrak9QUUlCCkJnZ3Foa2pPUFFNQkJ3TkNBQVNuKy93SzFTbFQrTTRLQ25Qbk1QNUVjK0hFUzhKaXBWdmpxaUwrbTJRM1RGUmcKSTlJR3JydjVFbmNHcWpGNStobDJWQWYzcnlTNUMxcGZ6MklQMENsNW80SHdNSUh0TUE0R0ExVWREd0VCL3dRRQpBd0lGb0RBVEJnTlZIU1VFRERBS0JnZ3JCZ0VGQlFjREFUQWZCZ05WSFNNRUdEQVdnQlJjTVR5UGoyNURGVUl4CkhFbGVjT3Boa2VMVFZEQ0JwQVlEVlIwUkJJR2NNSUdaZ2lScmRXSmxjbTVsZEdWekxtUmxabUYxYkhRdWMzWmoKTG1Oc2RYTjBaWEl1Ykc5allXeUNGbXQxWW1WeWJtVjBaWE11WkdWbVlYVnNkQzV6ZG1PQ0VtdDFZbVZ5Ym1WMApaWE11WkdWbVlYVnNkSUlLYTNWaVpYSnVaWFJsYzRJSmJHOWpZV3hvYjNOMGdoWm9aWEJvZVMxemRHY3VkSFZ5CmEyVjVMbXh2WTJGc2h3Ui9BQUFCaHdRS2FZQkxod1FLSUFBSWh3UUtZcXZpTUFvR0NDcUdTTTQ5QkFNQ0EwY0EKTUVRQ0lIdUxWbTlDa0dnRnRKc0FWSys3M1FOa0tXMEo1WEpHa0I2OFcrSE50YjJjQWlBZWYyUW9yQ09tRFZUNwpGUVV2T3ZUYVo2aTNoSHQ3aVpXQjRGYURNb2w2Wnc9PQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==
        server: https://hephy-stg.turkey.local
    name: hephy-stg
  - cluster:
        certificate-authority-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNOVENDQWRxZ0F3SUJBZ0lJVko3azZyNENaUTB3Q2dZSUtvWkl6ajBFQXdJd0l6RWhNQjhHQTFVRUF3d1kKYXpOekxYTmxjblpsY2kxallVQXhOamMwTnpZeE5qYzNNQjRYRFRJek1ERXlOakU1TXpRek4xb1hEVEkwTURFeQpPREl6TkRFd05sb3dHVEVYTUJVR0ExVUVBeE1PYTNWaVpTMWhjR2x6WlhKMlpYSXdXVEFUQmdjcWhrak9QUUlCCkJnZ3Foa2pPUFFNQkJ3TkNBQVJwbzAxQjdvaUNnaFlrOWlkNStRQ1hBckxmd1Z1SkhzVWJ3UDNuNXByR2g1V2QKV3h6Z0ZQQUt5S2I0QzVxWHhsTEFER2VsNyswU0JOczY5bmhhb1R2RW80SUJBRENCL1RBT0JnTlZIUThCQWY4RQpCQU1DQmFBd0V3WURWUjBsQkF3d0NnWUlLd1lCQlFVSEF3RXdId1lEVlIwakJCZ3dGb0FVaSsvV0xUaVVUUHI2CmxkT2E0U2VJNGFaSVh0NHdnYlFHQTFVZEVRU0JyRENCcVlJa2EzVmlaWEp1WlhSbGN5NWtaV1poZFd4MExuTjIKWXk1amJIVnpkR1Z5TG14dlkyRnNnaFpyZFdKbGNtNWxkR1Z6TG1SbFptRjFiSFF1YzNaamdoSnJkV0psY201bApkR1Z6TG1SbFptRjFiSFNDQ210MVltVnlibVYwWlhPQ0NXeHZZMkZzYUc5emRJSVVhRzkzWVhKa0xtMXZiMjFpCmIyOHVjM0JoWTJXSEJIOEFBQUdIQkFwbEU3K0hCQXBuazBHSEJBcG40QjJIQkFvZ0FBNkhCQXBoUGZTSEJBcGkKWXZZd0NnWUlLb1pJemowRUF3SURTUUF3UmdJaEFPR2QzcTlzUWVsbGd5a253YlMwamhiVmU0cWREZ0wzMGYraAoyUjlEeFBwMEFpRUExWGI1aFBWNHZraHJCNkM3Mmk4dER1eFIvVE82dzVNcnhmcThTZWZLcU4wPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==
        server: https://howard.moomboo.space
    name: howard-space
  - cluster:
        certificate-authority-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNKekNDQWN5Z0F3SUJBZ0lJSXpxblEyT1JSR2N3Q2dZSUtvWkl6ajBFQXdJd0l6RWhNQjhHQTFVRUF3d1kKYXpOekxYTmxjblpsY2kxallVQXhOamMwTnpZek1ETTVNQjRYRFRJek1ERXlOakU1TlRjeE9Wb1hEVEkwTURFeQpPREl6TkRZeU5Gb3dHVEVYTUJVR0ExVUVBeE1PYTNWaVpTMWhjR2x6WlhKMlpYSXdXVEFUQmdjcWhrak9QUUlCCkJnZ3Foa2pPUFFNQkJ3TkNBQVR3RXhjWEJzR2tMRVhCZ0FIYnJoR2tja3pwelNZY0V4QitMRjNaL3o1c3cwVVMKRHpJNXRsSXZzOWgvV1AzR1gzK1laTjlYdE54ZEp5Nm40QXJQYm96Wm80SHpNSUh3TUE0R0ExVWREd0VCL3dRRQpBd0lGb0RBVEJnTlZIU1VFRERBS0JnZ3JCZ0VGQlFjREFUQWZCZ05WSFNNRUdEQVdnQlM2NS8rU0FqL0NzRVlTCi81UUFFMENoZGVoQk96Q0Jwd1lEVlIwUkJJR2ZNSUdjZ2lScmRXSmxjbTVsZEdWekxtUmxabUYxYkhRdWMzWmoKTG1Oc2RYTjBaWEl1Ykc5allXeUNGbXQxWW1WeWJtVjBaWE11WkdWbVlYVnNkQzV6ZG1PQ0VtdDFZbVZ5Ym1WMApaWE11WkdWbVlYVnNkSUlLYTNWaVpYSnVaWFJsYzRJSmJHOWpZV3hvYjNOMGdobGhibTkwYUdWeUxYUmxjM1F1CmRIVnlhMlY1TG14dlkyRnNod1IvQUFBQmh3UUtabWFqaHdRS1pxU1pod1FLSmdBQk1Bb0dDQ3FHU000OUJBTUMKQTBrQU1FWUNJUUNMOVRmYks4ekFSUkg1VGZDNEVXa1lXcEsyMHhOaXpTZVIxdktwZ3ErdnlnSWhBUHpUNzlCUgpTdWswQStGRlI0bElCZE1FWmRDOUhVaDhkRnNWbDh1ZEhJTTkKLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo=
        server: https://another-test.turkey.local
    name: another-test
  - cluster:
        certificate-authority-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNNVENDQWRlZ0F3SUJBZ0lJQkVzMEJSMzNhUHN3Q2dZSUtvWkl6ajBFQXdJd0l6RWhNQjhHQTFVRUF3d1kKYXpOekxYTmxjblpsY2kxallVQXhOalk0TVRjNE5EazVNQjRYRFRJeU1URXhNVEUwTlRRMU9Wb1hEVEkwTURFeQpPREl6TkRZeU5sb3dHVEVYTUJVR0ExVUVBeE1PYTNWaVpTMWhjR2x6WlhKMlpYSXdXVEFUQmdjcWhrak9QUUlCCkJnZ3Foa2pPUFFNQkJ3TkNBQVRLb0VZZGFDdHNJVGdOZ20xNk5sMnR4Mis3VXAyYW1wYXVGczlDSk5uT2dUM1IKeFRBNURZeVJiZEhhV040amhjMGhVaHNmUDRYallIaURQWDk0QW9QeW80SCtNSUg3TUE0R0ExVWREd0VCL3dRRQpBd0lGb0RBVEJnTlZIU1VFRERBS0JnZ3JCZ0VGQlFjREFUQWZCZ05WSFNNRUdEQVdnQlNnMVlmR3YyV2F1ME9ECmh3Q2pIcWJEZ25XQnd6Q0JzZ1lEVlIwUkJJR3FNSUduZ2lScmRXSmxjbTVsZEdWekxtUmxabUYxYkhRdWMzWmoKTG1Oc2RYTjBaWEl1Ykc5allXeUNGbXQxWW1WeWJtVjBaWE11WkdWbVlYVnNkQzV6ZG1PQ0VtdDFZbVZ5Ym1WMApaWE11WkdWbVlYVnNkSUlLYTNWaVpYSnVaWFJsYzRJSmJHOWpZV3hvYjNOMGdoaHRiMjh0WTJ4MWMzUmxjaTUwCmRYSnJaWGt1Ykc5allXeUhCSDhBQUFHSEJBcGxiek9IQkFwbDhNZUhCQXBtdlkySEJBcHA4Sk9IQkFvbUFBSXcKQ2dZSUtvWkl6ajBFQXdJRFNBQXdSUUloQU1UMEJrcnJqY0NrTUNJdVVzdU15SGdOYWgxTEUrUStFeUk3NkU2dgpDUTJCQWlCWFhISDdkMlJiRXIwdGpXNTNUa3kyUlNTRkpBUWVscDZyeWx5enljbEJyQT09Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K
        server: https://moo-cluster.turkey.local
    name: moo
  - cluster:
        certificate-authority-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNKRENDQWNxZ0F3SUJBZ0lJVkxQMEZBa0Q1amt3Q2dZSUtvWkl6ajBFQXdJd0l6RWhNQjhHQTFVRUF3d1kKYXpOekxYTmxjblpsY2kxallVQXhOamMwTnpZek1ETTBNQjRYRFRJek1ERXlOakU1TlRjeE5Gb1hEVEkwTURFeQpPREl6TXpjek1sb3dHVEVYTUJVR0ExVUVBeE1PYTNWaVpTMWhjR2x6WlhKMlpYSXdXVEFUQmdjcWhrak9QUUlCCkJnZ3Foa2pPUFFNQkJ3TkNBQVNTUE5HbkRaY0pWSHJka1gyenRIR0JHWExQTnU0L0VGbTZNK0VIeTc1UGFqK1EKTEFITnBoVUMzRWx0a3hpQjZHQ1QvdUNIMmFrZWR3aXJIeWppSDhtOG80SHhNSUh1TUE0R0ExVWREd0VCL3dRRQpBd0lGb0RBVEJnTlZIU1VFRERBS0JnZ3JCZ0VGQlFjREFUQWZCZ05WSFNNRUdEQVdnQlFqSUZ6ajc3UENTZlA1ClY5Sm9KRG92MktESS9EQ0JwUVlEVlIwUkJJR2RNSUdhZ2lScmRXSmxjbTVsZEdWekxtUmxabUYxYkhRdWMzWmoKTG1Oc2RYTjBaWEl1Ykc5allXeUNGbXQxWW1WeWJtVjBaWE11WkdWbVlYVnNkQzV6ZG1PQ0VtdDFZbVZ5Ym1WMApaWE11WkdWbVlYVnNkSUlLYTNWaVpYSnVaWFJsYzRJSmJHOWpZV3hvYjNOMGdoZGpiSFZ6ZEdWeUxUQXhMblIxCmNtdGxlUzVzYjJOaGJJY0Vmd0FBQVljRUNtZUJKSWNFQ21nTjJZY0VDaWdBQnpBS0JnZ3Foa2pPUFFRREFnTkkKQURCRkFpQjF1ZUVlTGRaNktROFhVd0JyYlJ4NGE4Y2NtWEpIL3o1V3Y2dHlVQjlVdUFJaEFQcjUvOXlRTUtnbApiSnlub2FKMVdYN0tORWZEZmIwa1JMSFgwWWRONjExbgotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==
        server: https://cluster-01.turkey.local
    name: cluster-01
  - cluster:
        certificate-authority-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNJRENDQWNlZ0F3SUJBZ0lJYktXYVJDbXRLVVV3Q2dZSUtvWkl6ajBFQXdJd0l6RWhNQjhHQTFVRUF3d1kKYXpOekxYTmxjblpsY2kxallVQXhOamMwTWpReU1EZ3dNQjRYRFRJek1ERXlNREU1TVRRME1Gb1hEVEkwTURFeQpPREl6TXpjeE5Wb3dHVEVYTUJVR0ExVUVBeE1PYTNWaVpTMWhjR2x6WlhKMlpYSXdXVEFUQmdjcWhrak9QUUlCCkJnZ3Foa2pPUFFNQkJ3TkNBQVN2cjdGSVMvMzVZOEtZSVpTRTdFS1UyL0ExSnhURnRGZ0ZqME9LNkVoUkRTSUYKKzhXNWlJdVR1N1NNeDA5bzlYZHQ2bVJuTkcrc2N2UGIraUJOY0hUbm80SHVNSUhyTUE0R0ExVWREd0VCL3dRRQpBd0lGb0RBVEJnTlZIU1VFRERBS0JnZ3JCZ0VGQlFjREFUQWZCZ05WSFNNRUdEQVdnQlFHcUxPMC9mek1obzY5CmM0UzdKZ0NsVWJPVjZqQ0JvZ1lEVlIwUkJJR2FNSUdYZ2lScmRXSmxjbTVsZEdWekxtUmxabUYxYkhRdWMzWmoKTG1Oc2RYTjBaWEl1Ykc5allXeUNGbXQxWW1WeWJtVjBaWE11WkdWbVlYVnNkQzV6ZG1PQ0VtdDFZbVZ5Ym1WMApaWE11WkdWbVlYVnNkSUlLYTNWaVpYSnVaWFJsYzRJSmJHOWpZV3hvYjNOMGdoUm9iM2RoY21RdWJXOXZiV0p2CmJ5NXpkR0ZuWlljRWZ3QUFBWWNFQ21kNnpJY0VDbTZrVVljRUNpZUFBakFLQmdncWhrak9QUVFEQWdOSEFEQkUKQWlBdnN3MThxN09nclVkTmxrTkFxWTBDQUI0cXliS1ZpSVZoTTNhL3QydW5iQUlnYSs0VWpVWWZORlF0c0ZoWApucVVpNVNuV3A5S0VlcHRNYUF3dzI3N2FOa2c9Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K
        server: https://howard.moomboo.stage
    name: howard-stage
contexts:
  - context:
        cluster: management
        user: kubelogin
    name: management
  - context:
        cluster: hephy-stg
        user: kubelogin
    name: hephy-stg
  - context:
        cluster: howard-space
        user: kubelogin
    name: howard-space
  - context:
        cluster: another-test
        user: kubelogin
    name: another-test
  - context:
        cluster: moo
        user: kubelogin
    name: moo
  - context:
        cluster: vcluster
        user: kubelogin
    name: vcluster
  - context:
        cluster: somtochi
        user: kubelogin
    name: somtochi
  - context:
        cluster: cluster-01
        user: kubelogin
    name: cluster-01
  - context:
        cluster: howard-stage
        user: kubelogin
    name: howard-stage
kind: Config
preferences: {}
current-context: howard-space
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

In the example kubeconfig above, some of the details are significant.

* The `auth-provider` string `name: oidc` is significant for kubelogin here;
  `kubelogin` is not, and so that user name can be changed or left as-is.
  Every cluster here is sharing a single `id-token` when one gets issued.

* The `client-id` and `client-secret` are significant as is `idp-issuer-url`
  however your personal user name/identity need not be named in this file.
  You may likely change these values (if you are not the Weave GitOps team.)

* Each cluster gets a `certificate-authority-data` that also must match the
  cluster's Kubernetes API service's own self-signed or cert authority data.
  This data is not private (but our clusters are hosted on private networks.)

This `certificate-authority-data` would not usually change very often, except
at certificate renewal time, or for clusters that are likely to come and go.

Since Weave GitOps is a self-service cluster management tool for devs, we will
absolutely need to cope with clusters coming and going! Perhaps all the time.

How exactly to refresh the CA data when it has gone stale, is left as an
exercise for the reader. (Edit: this has been [solved in Golang][solution].)

#### GitHub Groups

The `extra-scopes: groups` is also significant, in that GitHub as a baseline
provides only unstable identifiers: `email` and `username`, and this makes
GitHub generally unusable for managing authn for RBAC on a set of individuals.

We can still use GitHub though, since we have adopted **groups** as our source
of authority in the example org; there are no surprises for us as there is no
individual in our RBAC config, only groups in the format: `kingdon-ci:group`.

### tl;dr: Run `kubelogin`

The Kubeconfig is set up for what's called in the `kubelogin` documentation as
[**Standalone Mode**](https://github.com/int128/kubelogin/blob/master/docs/standalone-mode.md).

The tl;dr is: just run `kubelogin` to authorize `kubectl`.

An OIDC token valid for 24 hours is stored directly in your `$KUBECONFIG` file.
When your token expires, you will see an error: `Unauthorized` or similar.
Just run `kubelogin` again. There is no refresh token with this configuration.

#### Risks and mitigation

This method avoids using any exec plugin at runtime, as the `id-token` gets
embedded directly in your `kubeconfig`. You can also harvest the `id-token`
from there, which is a security concern that might warrant further mitigation.

Take care therefore that your Kubeconfig file is not shared access, this is
risky handling. The file should be `chmod -r` for all other than the file
owner and it should be stored on a local disk, never on any shared filesystem.

A different configuration is likely possible with refresh tokens, but this
author struggled to make `kubelogin` work at all, until he tried the Standalone
Mode configuration, so that is the one configuration he can recommend here.

#### Kubernetes RBAC

When you have configured [Dex][] and [RBAC][], according to the [Weave GitOps Docs][]:

> the users on cluster clients should not be configured for the same groups as
> Weave GitOps.

[Dex]: https://docs.gitops.weave.works/docs/guides/setting-up-dex/
[RBAC]: https://docs.gitops.weave.works/docs/configuration/recommended-rbac-configuration/
[Weave GitOps Docs]: https://docs.gitops.weave.works/

For the purposes of our Developer clusters, where authenticated users are all
authorized as `cluster-admin`, we do not care about this kind of finer point.

We can prepare RBAC roles and an OIDC-enabled kubeconfig, to avoid a need to
copy any permissioned access tokens around.

We should not usually need to break the glass!

The RBAC permissions are handled with Kustomize bases in a management cluster.

([Here](https://github.com/kingdonb/bootstrap-repo/tree/main/clusters/bases/rbac)
is the `rbac` Kustomize base module that creates this specific RBAC binding!)

This configuration uses your GitHub OIDC through a Dex issuer that has been set
up for Weave GitOps. You can use it to break the glass and get direct access to
a Kubernetes cluster, or you may shut direct access and use only Weave GitOps.

## Kconf

I found this great tool to help manage multiple kubeconfigs easily, called `kconf`:

* [particledelay/kconf](https://github.com/particledecay/kconf)

Our kubeconfig may get some stale `certificate-authority-data` or need tuning up.

ISA there will be a way to easily get fresh kubeconfig with all clusters that
you have access to, based on your OIDC. In the mean time, use `kconf` and your
text editor to make this kubeconfig your own.

You can find a permalink to this example kubeconfig for `kubelogin` here:

* [example-kube-config](https://github.com/kingdon-ci/example-kubeconfig/blob/main/example-kube-config)
* [raw: example-kube-config](https://github.com/kingdon-ci/example-kubeconfig/raw/main/example-kube-config)

## Kubeconfig-ca-fetch

I built a partial solution to some of the issues described above. This helps
when the certificate-authority-data has gone stale, though it may be insecure.

Try cloning [this repo](https://github.com/kingdon-ci/kubeconfig-ca-fetch) and
run `make`.

There is a list of clusters in [main.go][] which you may edit. The heavy
lifting is handled through a package!

It is my first Go code in a while (so please be gentle!)

#### Code

The package `kubeconfigcafetch`:

[link](https://github.com/kingdon-ci/kubeconfig-ca-fetch/blob/main/kubeconfig.go)

Assuming `make` is fine, you'll find the clusters ready in `kube.config`.
Some clusters will be unreachable by default, unless you have Tailscale.

NB: Do remember to `chmod go-r` as below, an `id-token` will go there!

```bash
chmod 600 kube.config
export KUBECONFIG=`pwd`/kube.config
kubelogin
kubectl get nodes
```

You can also put that in `~/.kube/config` for a more permanent setting.

[solution]: #kubeconfig-ca-fetch
[main.go]: https://github.com/kingdon-ci/kubeconfig-ca-fetch/blob/15f7bae619e8fb628c5c4b5d0fd6d1a327aa02b1/cmd/kubeconfig-ca-fetch/main.go#L30-L43
