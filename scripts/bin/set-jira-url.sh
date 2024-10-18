export URL_TEMPLATE_PREFIX=jira.attrasian.com/browse
export TICKET_PREFIX=HELP
export ORG=GithubORG
export REPOS=('infra-live' 'infra-modules' 'infra-docker' 'infra-helm' 'infra-argocd')


for repo in "${REPOS[@]}"
do
gh api \
  --method POST \
  -H "Accept: application/vnd.github+json" /repos/$ORG/$repo/autolinks \
  -f key_prefix="$TICKET_PREFIX-" \
  -f url_template="https://$URL_TEMPLATE_PREFIX/$TICKET_PREFIX-<num>"
done