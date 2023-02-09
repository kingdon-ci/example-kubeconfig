# Example Kubeconfig for int128/kubelogin

This is a Kubeconfig that you can use if you are in the weave-gitops group.

You may contact KingdonB, the admin of the Kingdon-CI group, if you are not in
the group.

Weave GitOps adds a developer-friendly layer to any Kubernetes cluster, making
easier to deploy and manage apps. We need Kubernetes for Flux and Weave GitOps.

#### (Solution in Golang)

tl;dr: Skip straight to [the solution][tldr] (if you're up for compiling some Golang.)

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
        certificate-authority-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUJkekNDQVIyZ0F3SUJBZ0lCQURBS0JnZ3Foa2pPUFFRREFqQWpNU0V3SHdZRFZRUUREQmhyTTNNdGMyVnkKZG1WeUxXTmhRREUyTnpVMk9UUXhPREl3SGhjTk1qTXdNakEyTVRRek5qSXlXaGNOTXpNd01qQXpNVFF6TmpJeQpXakFqTVNFd0h3WURWUVFEREJock0zTXRjMlZ5ZG1WeUxXTmhRREUyTnpVMk9UUXhPREl3V1RBVEJnY3Foa2pPClBRSUJCZ2dxaGtqT1BRTUJCd05DQUFTejhMZlpWY0lnZ2VWeEo3RE4vUm4xRzFDc1RPRFQyazJvYzBvcHQwSmoKcUJoRVZHTG1hMVB2eEN1dU5HMDZTaVZHbHdnWnJuRlVReTBFbkdTVE5XVUxvMEl3UURBT0JnTlZIUThCQWY4RQpCQU1DQXFRd0R3WURWUjBUQVFIL0JBVXdBd0VCL3pBZEJnTlZIUTRFRmdRVTdOcDdKOUZzQWdwbjYxd1BOeUZmCm5iTlpBS0l3Q2dZSUtvWkl6ajBFQXdJRFNBQXdSUUlnVUJGK3c0T1JzNVlFWU83Q2VkakdmcDZRVmRjazUyZEsKTUU0cSs1QkhkVzRDSVFEK0NkT29ETVkrQ2RnN21OcnFQbU05SDZVTkdKWnh1cVZteEV4bml6Vkp6dz09Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K
        server: https://newexample.howard.moomboo.space
    name: newexample
  - cluster:
        certificate-authority-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUJkekNDQVIyZ0F3SUJBZ0lCQURBS0JnZ3Foa2pPUFFRREFqQWpNU0V3SHdZRFZRUUREQmhyTTNNdGMyVnkKZG1WeUxXTmhRREUyTnpVeE16TTNPRFV3SGhjTk1qTXdNVE14TURJMU5qSTFXaGNOTXpNd01USTRNREkxTmpJMQpXakFqTVNFd0h3WURWUVFEREJock0zTXRjMlZ5ZG1WeUxXTmhRREUyTnpVeE16TTNPRFV3V1RBVEJnY3Foa2pPClBRSUJCZ2dxaGtqT1BRTUJCd05DQUFUdUI3VTNxaHB4a3FjN0puMXArWVhIT01wcmZFK01oTFdCekcwamUyUEQKN2loc2hrRm5DeldLMXRMRUxsUVFrL3o1U1E0T09QNDN6eklmVGdlWVdzbEpvMEl3UURBT0JnTlZIUThCQWY4RQpCQU1DQXFRd0R3WURWUjBUQVFIL0JBVXdBd0VCL3pBZEJnTlZIUTRFRmdRVTVPaXZoRldyUU9DQ2duQTBKZThGCktYZThSeHN3Q2dZSUtvWkl6ajBFQXdJRFNBQXdSUUloQUlZUnBvdUJZb29PalNzdnNROXFBZkZqclpteVkyZ24KeUZkSlMxYjBjalZyQWlBQTdQNlhZQUNyVS9KN3hMUHU5aWJLYVZDalJnOTZ6dm9sZk9UTjhiNzVZdz09Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K
        server: https://howard.moomboo.space
    name: howard-space
contexts:
  - context:
        cluster: howard-space
        user: kubelogin
    name: howard-space
  - context:
        cluster: newexample
        user: kubelogin
    name: newexample
kind: Config
preferences: {}
current-context: howard-space
users:
  - name: kubelogin
    user:
      exec:
        apiVersion: client.authentication.k8s.io/v1beta1
        args:
        - oidc-login
        - get-token
        - --oidc-issuer-url=https://dex.howard.moomboo.space
        - --oidc-client-id=weave-gitops
        - --oidc-client-secret=AiAImuXKhoI5ApvKWF988txjZ+6rG3S7o6X5En
        - --oidc-extra-scope=groups
        - --oidc-extra-scope=offline_access
        command: kubectl
        env: null
        provideClusterInfo: false
```

In the example kubeconfig above, some of the details are significant.

* `oidc-login` is the name of the `kubectl` or `krew` plugin for `kubelogin`.

* The `client-id` and `client-secret` are significant as is `issuer-url`
  You may likely change these values (if you are not the Weave GitOps team.)

#### Refresh Tokens

* Requesting the `offline_access` scope

This will result in Dex generating a refresh token, which will only be expired
according to Dex's own [expiration and rotation settings](https://dexidp.io/docs/id-tokens/#expiration-and-rotation-settings).

Refresh tokens are usually much longer lived than id tokens, and in fact can
be configured so that they never expire. Take care with this configuration!

#### GitHub Groups

The `extra-scopes: groups` is also significant, in that GitHub as a baseline
provides only unstable identifiers: `email` and `username`, and this makes
GitHub generally unusable for managing authn for RBAC on a set of individuals.

We can still use GitHub though, since we have adopted **groups** as our source
of authority in the example org; there are no surprises for us as there is no
individual in our RBAC config, only groups in the format: `kingdon-ci:group`.

#### Self-Service Cluster Management

* Each cluster gets a `certificate-authority-data` that must authenticate the
  cluster's Kubernetes API service's own (usually self-signed) cert data.

This `certificate-authority-data` would not usually change very often, except
at certificate renewal time, or for clusters that are likely to come and go.

Since Weave GitOps is a self-service cluster management tool for devs, we will
absolutely need to cope with clusters coming and going! Perhaps all the time.

How exactly to refresh the CA data when it has gone stale, is left as an
exercise for the reader. (Edit: this has been [solved in Golang][solution].)

### tl;dr: Run `kubelogin`

The Kubeconfig can also be set up for what the `kubelogin` documentation calls
[**Standalone Mode**](https://github.com/int128/kubelogin/blob/master/docs/standalone-mode.md).

The old tl;dr was based on Standalone Mode: just run `kubelogin` to authorize `kubectl`.

With the exec mode configuration above, you don't need to run `kubelogin` anymore.
But you might try `kubelogin --setup` to learn how to configure this from scratch!

#### Risks and mitigation

This method uses the exec plugin at runtime, whereas in standalone mode the
`id-token` gets embedded directly in your `kubeconfig`; with this method it is
still stored on disk, as is the refresh token, but you can still freely copy
the kubeconfig and share it without compromising your identity.

One can harvest an `id-token` or a `refresh-token`, which is a security concern
that might warrant further mitigation.

Take care that your home directory is not shared access; this is generally
standard operating procedure. A home directory should be `chmod -rwx` for all
entities other than the owner.

The id token should be stored on a local disk, never on any shared filesystem.

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
run `make`. Just copy the super-tl;dr blob below, (or click the links and read
what you're doing)

There is a list of clusters in [main.go][] which the user may edit. The heavy
lifting is handled through a package!

It is my first Go code in a while (so please be gentle!)

#### Code

The package `kubeconfigcafetch`:

[link](https://github.com/kingdon-ci/kubeconfig-ca-fetch/blob/main/kubeconfig.go)

Clone that repo and take a look at the code to see the business logic I used to
derive CA data from a connection to the clusters. This is totally unsafe for you,
(but probably OK for me, since near all of these links are on my local network!)

Assuming `make clean && make all kube.config` is fine, you'll find the clusters
ready in `kube.config`.

or run
```bash
make tldr
```

and simply watch what happens.

#### Errors in `turkey.local`

Some clusters in the `turkey.local` domain will be unreachable by default, unless you have Tailscale.
Like I said, this is my local network. If you are reading this, welcome to literally inside my home.

NB: Do remember to `chmod go-r` as below, an `id-token` is your identity and it must not be divulged.

`kubelogin` in standalone mode writes the secret `id-token` directly into `kube.config`. So take care!

Please don't let any bad hackers in (but also, hello friendly neighborhood hackers!)

#### Errors with M1 Mac and Rancher Desktop

If you get this error in a loop when you first try Kubelogin, and you've installed Rancher Desktop:

```
...transport.go:243] Unable to cancel request for *exec.roundTripper...
...transport.go:243] Unable to cancel request for *exec.roundTripper...
...transport.go:243] Unable to cancel request for *exec.roundTripper...
```

You may be experiencing [this issue](https://github.com/int128/kubelogin/issues/831) which can be solved
by avoiding the use of `~/.rd/bin/kubectl` with the `kubelogin` plugin. Rancher Desktop is great, but I
have no idea why it distributes an apparently broken version of kubectl that doesn't work with `kubelogin`,
so just don't use that and this problem goes away.

Remove `~/.rd/bin` from your `PATH` and install `kubectl` from homebrew.

##### super-tl;dr

```bash
git clone https://github.com/kingdon-ci/kubeconfig-ca-fetch && cd kubeconfig-ca-fetch
make build kube.config
chmod 600 kube.config
export KUBECONFIG=`pwd`/kube.config
kubelogin
kubectl get nodes
```

You can also put that in `~/.kube/config` for a more permanent setting.

(WARNING: the next version **will overwrite** your Kubeconfig<br/>
but you have 3 seconds to press Ctrl+C and cancel if it's a mistake.)

If you run
```bash
make supertldr
```

then it **will overwrite** the `~/.kube/config` with one generated by
`kubeconfig-ca-fetch`, instead of simply generating the `kube.config` in the
current working directory, which is `make tldr`.

#### Read more

Read about `kubeconfig-ca-fetch`, and understand: it's really not safe to do
this, but at the same time if aware of the risks, it can be plenty safe yet.

I tried to convert this to Wasm and it literally wasn't possible to do what
I've done in this code, because this is a technically unsafe operation. We're
reaching out to the wire and asking it who the authority is. This is asking to
be MITM'ed if you used it every day, without any mitigation for those attacks.

If you are in the habit of making your `KUBECONFIG` in this way, then you must
take care not to over-YOLO. Be sure you have a way to verify the certificates
out-of-band, (like comparing them against the ones you see on this web site!)

### Source for this web page

So it is important that we can publish a web site in order to close the loop,

* [here (kingdon-ci/example-kubeconfig)][example] is just exactly how we did that!

Surely, now that you can visit the web page here and confirm the CA data that
was downloaded matches what's on this web page, we can strengthen the trust in
the found CA data's actual verity by some measure.

Find the GitHub sources for [the current page][page] at the link above.

[solution]: #kubeconfig-ca-fetch
[tldr]: #code
[main.go]: https://github.com/kingdon-ci/kubeconfig-ca-fetch/blob/09d293a3152b9d50d149c4c45237aa4ad9a3a1c3/cmd/kubeconfig-ca-fetch/main.go#L31-L43
[example]: https://github.com/kingdon-ci/example-kubeconfig
[page]: https://howto.howard.moomboo.space
