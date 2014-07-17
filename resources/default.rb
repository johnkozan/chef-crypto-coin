actions :install
default_action :install

attribute :name,            :kind_of => String, :name_attribute => true, :required => true
attribute :user,            :kind_of => String
attribute :group,           :kind_of => String
attribute :home,            :kind_of => String
attribute :executable,      :kind_of => String
attribute :clone_path,      :kind_of => String
attribute :data_dir,        :kind_of => String
attribute :conf,            :kind_of => Hash, :default => {}

attribute :autostart,       :kind_of => [TrueClass, FalseClass], :default => true
attribute :respawn_times,   :kind_of => String, :default => '10'
attribute :respawn_seconds, :kind_of => String, :default => '60'

attribute :repository,      :kind_of => String, :required => true
attribute :revision,        :kind_of => String, :default => 'master'

attribute :server,          :kind_of => Integer, :default => 0
attribute :rpcuser,         :kind_of => String, :required => true
attribute :rpcpassword,     :kind_of => String, :required => true
attribute :rpcallowip,      :kind_of => Array,  :required => false

attribute :testnet,         :kind_of => Integer, :default => 0
attribute :txindex,         :kind_of => Integer, :default => 0
attribute :irc,             :kind_of => Integer, :default => 0

attr_accessor :exists
