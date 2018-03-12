<p align="center"> <img src="https://png.icons8.com/nolan/96/000000/phone.png"> </p>

# Dial-A-Script
> A tool for creating, dialing and sharing call scripts

Dial-A-Script is a web based tool for writing, calling and sharing call scripts.  This is the repository for the Ruby on Rails based JSON API.  The frontend client repository resides at: [Dial-A-Script-Frontend](https://github.com/walkingalchemy/Dial-A-Script-Frontend)

## Installing / Getting started

This project uses [Rails 5.1.4](http://weblog.rubyonrails.org/2017/8/24/Rails-5-1-4-rc1-and-5-0-6-rc1-released/).  It also uses the [Postgres](https://www.postgresql.org/) database. Go check them out if you don't have them locally installed. 

Fork and/or clone the repository down then from within the top level directory run:

```shell
rails db:create
rails db:migrate
```
to get the server database spun up locally.
Then
```shell
rails s
```
to get it serving to your local host.

The frontend client is set by default to point to a backend running on localhost:3000 which is the Rails server default if nothing else is running.

If you need to run the Rails server on another port you can instead use

```shell
  rails s -p <your port>
```
and then change the API_ROOT to reflect that in /src/constants of the frontend client.

In either case, from there you should install the [Dial-A-Script-Frontend](https://github.com/walkingalchemy/Dial-A-Script-Frontend) repository to see the full application from your browser.

## Api V1 Reference

```
                api_v1_user GET    /api/v1/users/:id(.:format)                                  api/v1/users#show
                            PATCH  /api/v1/users/:id(.:format)                                  api/v1/users#update
                            PUT    /api/v1/users/:id(.:format)                                  api/v1/users#update
              api_v1_signup POST   /api/v1/signup(.:format)                                     api/v1/users#create
               api_v1_login POST   /api/v1/login(.:format)                                      api/v1/auth#create
               api_v1_calls GET    /api/v1/calls(.:format)                                      api/v1/calls#index
                            POST   /api/v1/calls(.:format)                                      api/v1/calls#create
                api_v1_call GET    /api/v1/calls/:id(.:format)                                  api/v1/calls#show
             api_v1_scripts GET    /api/v1/scripts(.:format)                                    api/v1/scripts#index
                            POST   /api/v1/scripts(.:format)                                    api/v1/scripts#create
              api_v1_script GET    /api/v1/scripts/:id(.:format)                                api/v1/scripts#show
                            PATCH  /api/v1/scripts/:id(.:format)                                api/v1/scripts#update
                            PUT    /api/v1/scripts/:id(.:format)                                api/v1/scripts#update
                            DELETE /api/v1/scripts/:id(.:format)                                api/v1/scripts#destroy
              api_v1_phones GET    /api/v1/phones(.:format)                                     api/v1/phones#index
                            POST   /api/v1/phones(.:format)                                     api/v1/phones#create
               api_v1_phone GET    /api/v1/phones/:id(.:format)                                 api/v1/phones#show
                            PATCH  /api/v1/phones/:id(.:format)                                 api/v1/phones#update
                            PUT    /api/v1/phones/:id(.:format)                                 api/v1/phones#update
       api_v1_organizations GET    /api/v1/organizations(.:format)                              api/v1/organizations#index
                            POST   /api/v1/organizations(.:format)                              api/v1/organizations#create
        api_v1_organization GET    /api/v1/organizations/:id(.:format)                          api/v1/organizations#show
                            PATCH  /api/v1/organizations/:id(.:format)                          api/v1/organizations#update
                            PUT    /api/v1/organizations/:id(.:format)                          api/v1/organizations#update
api_v1_organization_offices GET    /api/v1/organizations/:organization_id/offices(.:format)     api/v1/offices#index
                            POST   /api/v1/organizations/:organization_id/offices(.:format)     api/v1/offices#create
 api_v1_organization_office GET    /api/v1/organizations/:organization_id/offices/:id(.:format) api/v1/offices#show
                            PATCH  /api/v1/organizations/:organization_id/offices/:id(.:format) api/v1/offices#update
                            PUT    /api/v1/organizations/:organization_id/offices/:id(.:format) api/v1/offices#update
                            GET    /api/v1/organizations(.:format)                              api/v1/organizations#index
                            POST   /api/v1/organizations(.:format)                              api/v1/organizations#create
                            GET    /api/v1/organizations/:id(.:format)                          api/v1/organizations#show
                            PATCH  /api/v1/organizations/:id(.:format)                          api/v1/organizations#update
                            PUT    /api/v1/organizations/:id(.:format)                          api/v1/organizations#update
                            DELETE /api/v1/organizations/:id(.:format)                          api/v1/organizations#destroy
```

## Licensing
[MIT](https://oss.ninja/mit?organization=Sebastian%20Royer) 
Copyright 2018 [Sebastian Royer](https://github.com/walkingalchemy)


## Thanks to:
<a href="https://icons8.com">Icon pack by Icons8</a>
