# Hall Of Fame

This is an experiment to run [HTTP 103 (Early Hints)](https://datatracker.ietf.org/doc/draft-ietf-httpbis-early-hints/) with [Hanami](http://hanamirb.org).

## History

On November 2015, during my [keynote at Ruby Day](https://www.youtube.com/watch?v=XCgsXUKLsOc&feature=youtu.be&t=31m4s), I announced experimental support for HTTP/2 Push Promise with Lotus (the former name of Hanami).
For the sake of the demo, I created this app: [https://github.com/jodosha/instants](https://github.com/jodosha/instants).

During that summer, I started to experiment with HTTP/2 and Ruby: Rack and all the web servers weren't ready for it.
So I had to write my own HTTP/2 Rack web server: [https://github.com/jodosha/panther](https://github.com/jodosha/panther).

Fast forwarding to today: HTTP/2 is still not supported by Ruby ecosystem, but in the meantime IETF standardized `HTTP 103 (Early Hints)` as of October 2017.
At the same time, [Puma](http://puma.io) started to support it.

**The next Hanami release (`v1.2.0`), will include support for `HTTP 103 (Early Hints)`.**

## Prerequisites

  * Git
  * Ruby 2.3+ (with OpenSSL)
  * [h2o](https://h2o.examp1e.net/) (`brew install h2o`)

## Installation

```shell
% git clone https://github.com/jodosha/hall_of_fame.git
% cd hall_of_fame
```

## Setup

```shell
% bin/setup
```

## Run

Start the project with one of the following methods, then visit [https://localhost:9090/](https://localhost:9090/).

:warning: The SSL certificate is self-signed, you can safely ignore the warnings of your browser.:warning:

### Foreman

If you use [foreman](https://github.com/ddollar/foreman) (or an alternative) run:

```shell
% foreman start
```

### Manually

Open two terminal windows:

```shell
% bundle exec hanami server
```

```shell
% h2o -c config/h2o.conf
```

## Copyright

&copy; 2017 - Luca Guidi https://lucaguidi.com
