if grep -q "# Kubernetes Aliases" ~/.bashrc; then
    echo "Kubernetes Aliases already exist in the ~/.bashrc"
else
    echo "Adding Kubernetes Aliases to the ~/.bashrc..."
    cat <<EOF >> ~/.bashrc

# ────────────────────────────────────────────────────────────────
# Kubernetes Aliases
# ────────────────────────────────────────────────────────────────

alias k='kubectl'
alias kg='kubectl get'
alias kgp='kubectl get pods -o wide'
alias kgn='kubectl get nodes -o wide'
alias kgs='kubectl get svc -o wide'
alias kgd='kubectl get deploy -o wide'
alias kgcm='kubectl get configmap'
alias kging='kubectl get ingress -A'
alias kgns='kubectl get namespaces'
alias kgsts='kubectl get statefulsets'
alias kgds='kubectl get daemonsets'
alias kgrs='kubectl get replicasets'
alias kgcj='kubectl get cronjobs'
alias kgjob='kubectl get jobs'

alias kd='kubectl describe'
alias kdp='kubectl describe pod'
alias kdn='kubectl describe node'
alias kds='kubectl describe svc'
alias kdd='kubectl describe deploy'

alias kl='kubectl logs'
alias klf='kubectl logs -f'
alias ke='kubectl exec -it'

alias ka='kubectl apply -f'
alias kdelf='kubectl delete -f'
alias kdelp='kubectl delete pod'
alias kdeln='kubectl delete node'
alias kdels='kubectl delete svc'
alias kdeld='kubectl delete deploy'

alias kctx='kubectl config use-context'
alias kns='kubectl config set-context --current --namespace'

# Custom Output Formats
alias kgwide='kubectl get -o wide'
alias kgyaml='kubectl get -o yaml'
alias kgjson='kubectl get -o json'

# Kubernetes System Info
alias ksys='kubectl cluster-info'
alias ksysdump='kubectl cluster-info dump'
alias kver='kubectl version --short'
alias kapi='kubectl api-resources'

# Helm Aliases
alias h='helm'
alias hs='helm search repo'
alias hi='helm install'
alias hu='helm upgrade --install'
alias hl='helm list'
alias hr='helm rollback'
alias hdel='helm uninstall'

# ArgoCD Aliases
alias acd='argocd'
alias acdl='argocd login'
alias acdapp='argocd app'
alias acdappg='argocd app get'
alias acdapps='argocd app list'
alias acdappsync='argocd app sync'
alias acdappdel='argocd app delete'
alias acdappset='argocd app set'
alias acdappup='argocd app update'
alias acdapphist='argocd app history'
alias acdapprollback='argocd app rollback'
alias acdproj='argocd proj'
alias acdprojs='argocd proj list'
alias acdprojget='argocd proj get'
alias acdprojdel='argocd proj delete'
alias acdprojset='argocd proj set'

# Argo Rollouts Aliases
alias ar='kubectl argo rollouts'
alias arlogs='kubectl argo rollouts logs'
alias arget='kubectl argo rollouts get rollout'
alias argetana='kubectl argo rollouts get analysisrun'
alias argetexp='kubectl argo rollouts get experiment'
alias arhist='kubectl argo rollouts history'
alias arpause='kubectl argo rollouts pause'
alias arrun='kubectl argo rollouts run'
alias arrestart='kubectl argo rollouts restart'
alias arpromote='kubectl argo rollouts promote'
alias arabort='kubectl argo rollouts abort'
alias arrescue='kubectl argo rollouts retry'

# ────────────────────────────────────────────────────────────────

EOF
    echo "Kubernetes Aliases added successfully!"
fi

# Reload bashrc to apply aliases
source ~/.bashrc
