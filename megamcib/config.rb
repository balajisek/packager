module MegamPkg
  class Ger
    attr_accessor :halwa, :build_halwa
    CONFIG =  { os: %w(trusty precise jessie centos7), branch: 'master', name: 'megamcib', name_node: 'megamcibn', :git => "https://github.com/megamsys/cloudinabox.git"}

    def os_ok!(build_os)
      raise "--- You have two horns. \nUnsupported os: #{build_os}" unless CONFIG[:os].include? build_os
    end
  end
end