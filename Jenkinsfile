sh -c 'tail -n +0 -f /opt/aem/author/crx-quickstart/logs/stdout.log | { sed "/Startup completed/ q" && kill $$ ;}'
list = []
def process = "git -C /var/lib/jenkins/workspace/Git_Tag/Jenkins/ tag -l".execute()
process.text.eachLine {list.add it}
return list
