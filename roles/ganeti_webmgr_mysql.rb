name "ganeti_webmgr_mysql"
description "gwm core requirements plus mysql"
run_list(
    "recipe[ganeti_webmgr::mysql]"
)
# override_attributes "ganeti_webmgr" => {
#   "database" => {
#     "engine" => "mysql"
#   }
# }
