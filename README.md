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
api_v1_chat_sessions GET    /api/v1/chat_sessions(.:format)     api/v1/chat_sessions#index
                     POST   /api/v1/chat_sessions(.:format)     api/v1/chat_sessions#create
 api_v1_chat_session GET    /api/v1/chat_sessions/:id(.:format) api/v1/chat_sessions#show
                     DELETE /api/v1/chat_sessions/:id(.:format) api/v1/chat_sessions#destroy
        api_v1_users GET    /api/v1/users(.:format)             api/v1/users#index
                     POST   /api/v1/users(.:format)             api/v1/users#create
  api_v1_transcripts POST   /api/v1/transcripts(.:format)       api/v1/transcripts#create
```

## Licensing
[MIT](https://oss.ninja/mit?organization=Sebastian%20Royer) 
Copyright 2018 [Sebastian Royer](https://github.com/walkingalchemy)


## Thanks to:
<a href="https://icons8.com">Icon pack by Icons8</a>
