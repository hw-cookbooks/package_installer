Package Installer
=============

Simple cookbook for managing package versions on a node.

Usage
=====

Attributes
----------

Define packages (and optionally version restrictions and action type) within the role:


```ruby
  override_attributes(
    :package_installer => {
      :packages => {
        'vim' => nil,
        'mailutils' => {
          :version => '2.2'
        },
        'emacs' => {
          :action => :upgrade
        }
      }
    }
  )
```

By default the :upgrade action is used. If you want to keep the package
pegged, simply specify a version or use the :install action.

Issues/Bugs/Feature Requests
----------------------------

Create a github issue or fork, fix and send me a pull request

