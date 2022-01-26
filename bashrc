###############################################################################
# Aliases
###############################################################################



###############################################################################
# Kubernetes Aliases
###############################################################################
alias k=kubectl
# Get
alias kg='kubectl get'
alias kgy='kgy_f() { kubectl get -o yaml "$@" | cy; }; kgy_f'
alias kgyy='kubectl get -o yaml'
alias kga='kubectl get all'
alias kgp='kubectl get pod'
alias kgpy='kgpy_f() { kubectl get pod -o yaml "$@" | cy; }; kgpy_f'
alias kgpyy='kubectl get pod -o yaml'
alias kgs='kubectl get svc'
alias kgsy='kgsy_f() { kubectl get svc -o yaml "$@" | cy; }; kgsy_f'
alias kgsyy='kubectl get svc -o yaml'
alias kgd='kubectl get deployment'
alias kgdy='kgdy_f() { kubectl get deployment -o yaml "$@" | cy; }; kgdy_f'
alias kgdyy='kubectl get deployment -o yaml'
alias kgn='kubectl get node'
alias kgny='kgny_f() { kubectl get node -o yaml "$@" | cy; }; kgny_f'
alias kgnyy='kubectl get node -o yaml'
alias kgns='kubectl get ns'
alias kgnsy='kgnsy_f() { kubectl get ns -o yaml "$@" | cy; }; kgnsy_f'
alias kgnsyy='kubectl get ns -o yaml'
alias kgi='kubectl get ingress'
alias kgiy='kgiy_f() { kubectl get ingress -o yaml "$@" | cy; }; kgiy_f'
alias kgiyy='kubectl get ingress -o yaml'
alias kgsec='kubectl get secret'
alias kgsecy='kgsecy_f() { kubectl get secret -o yaml "$@" | cy; }; kgsecy_f'
alias kgsecyy='kubectl get secret -o yaml'
alias kgpv='kubectl get pv'
alias kgpvc='kubectl get pvc'
alias kgpsc='kubectl get sc'
# Describe
alias kd='kubectl describe'
alias kdp='kubectl describe pod'
alias kdd='kubectl describe deployment'
alias kds='kubectl describe svc'
alias kdn='kubectl describe node'
alias kdi='kubectl describe ingress'
alias kdsec='kubectl describe secret'
alias kdpv='kubectl describe pv'
alias kdpvc='kubectl describe pvc'
alias kdpsc='kubectl describe sc'
# Edit
alias ke='kubectl edit'
alias kes='kubectl edit service'
alias kep='kubectl edit pod'
alias ked='kubectl edit deployment'
alias kei='kubectl edit ingress'
alias kesec='kubectl edit secret'

# Other
alias kar='kubectl api-resources --sort-by name'
alias ktn='kubectl top node'
alias ktp='kubectl top pod'
alias kex='kubectl expose'
alias kexpl='kubectl explain'
alias kexplr='kubectl explain --recursive'
alias kc='kubectl create'
alias kcd='kubectl create --dry-run=client -o yaml'
alias kx='kubectl exec'
alias kl='kubectl logs'
alias ka='kubectl apply'
alias kaf='kubectl apply -f'
alias krun='kubectl run'
alias krund='kubectl run --dry-run=client -o yaml'
alias kshell='kubectl shell'
alias kctx='kubectl config use-context'
alias knsf='kubectl config set-context --current --namespace'
alias kns='fn(){ kubectl get ns --field-selector "metadata.name=$1" --ignore-not-found --no-headers | egrep "^.+$" 1>/dev/null && kubectl config set-context --current --namespace $1 || echo "No namespace \"$1\" found." && return 1;  unset -f fn; }; fn'


###############################################################################
# Functions
###############################################################################
function vaml() {
  vim -R -c 'set syntax=yaml' -;
}

source <(kubectl completion bash)
complete -F __start_kubectl k