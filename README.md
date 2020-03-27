# http://onlinestopwatch/

Simple Stopwatch made with [Svelte](https://svelte.dev/) as an example [Handshake](https://handshake.org) website.

*Note*: To access the above website your dns resolver must support [Handshake](https://handshake.org) domains. 

## Install a Handshake Resolver

1. Install [NextDns](https://nextdns.io)
2. Go to https://my.nextdns.io/configuration
3. Click `Settings`
4. Scroll down to Handshake and select `Resolve Handshake Domains`

You should now be able to access http://onlinestopwatch/

## Development

Install the dependencies...

```bash
yarn
```

...then start [Rollup](https://rollupjs.org):

```bash
yarn dev
```

Navigate to [localhost:5000](http://localhost:5000). You should see your app running. Edit a component file in `src`, save it, and reload the page to see your changes.

By default, the server will only respond to requests from localhost. To allow connections from other computers, edit the `sirv` commands in package.json to include the option `--host 0.0.0.0`.


## Building and running in production mode

To create an optimised version of the app:

```bash
yarn build
```

You can run the newly built app with `npm run start`. This uses [sirv](https://github.com/lukeed/sirv), which is included in your package.json's `dependencies` so that the app will work when you deploy to platforms like [Heroku](https://heroku.com).
