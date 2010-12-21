maintainer        "Opscode, Inc."
maintainer_email  "cookbooks@opscode.com"
license           "Apache 2.0"
description       "support cookbok for dbapp java web application"
version           "0.1"

recipe "dbapp::db_bootstrap", "Bootstrap the dbapp database, used with application cookbook (destructive)"

%w{ ubuntu debian }.each do |os|
  supports os
end
