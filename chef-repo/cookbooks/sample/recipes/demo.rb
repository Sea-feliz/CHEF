puts 'this is test'
package 'install-gcc' do
   package_name 'gcc'
   action :install
end

package 'remoave pacakge' do
   package_name  'gcc'
   action :remove
end

