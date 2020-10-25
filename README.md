# rdf-mongo :: MongoDB storage adapter for RDF.rb

This is an [RDF.rb][] storage adapter for MongoDB.

[![Gem Version](https://badge.fury.io/rb/rdf-mongo.png)](https://badge.fury.io/rb/rdf-mongo)
[![Build Status](https://travis-ci.org/ruby-rdf/rdf-mongo.png?branch=master)](https://travis-ci.org/ruby-rdf/rdf-mongo)

## Versioning and backwards compatibility

Moving forward, the versioning will reflect the [RDF.rb][] version number for which all rdf-specs are passing.

It should also be noted that prior to 1.0, there are no guarantees of backwards compatibility for data stored using previous versions of the gem.  This is to make optimizing the schema for MongoDB easy.

## Requirements

You'll need the 'mongo', 'rdf', 'rdf-spec', and 'rspec' libraries.  The easiest way to install these is via RubyGems.

    $ sudo gem install mongo rdf rdf-spec rspec rdf-mongo

## Implementation Notes

RDF Statements are stored as individual documents within MONGO using the following BSON:

    {
      "s":  RDF::Value
      "st": one of :u or :n
      "p":  RDF::URI
      "pt": must be :n
      "o"   RDF::Value
      "ot"  one of :u, :n, :l, :ll, or :lt
      "ol"  Language symbol or RDF::URI
      "c"   RDF::Value or false
      "ct": one of :u, :n, :l, :ll, :lt or :default
    }

An alternative that may be examined at a later point would be to use a representation based on RDF/JSON,
or JSON-LD. This would save documents based on a common subject with 
one more more predicates having one or more types.

### Support

Please post questions or feedback to the [W3C-ruby-rdf mailing list][].

### Authors
 * [Pius Uzamere][] | <https://github.com/pius> | <https://pius.me>
 * [Gregg Kellogg][] | <https://github.com/gkellogg> | <https://greggkellogg.net>

### Thank you

* Ben Lavender (author of the adapter skeleton) | <blavender@gmail.com> | <https://github.com/bhuga> | <https://bhuga.net>

### Contributing

This repository uses [Git Flow](https://github.com/nvie/gitflow) to mange development and release activity. All submissions _must_ be on a feature branch based on the _develop_ branch to ease staging and integration.

* Do your best to adhere to the existing coding conventions and idioms.
* Don't use hard tabs, and don't leave trailing whitespace on any line.
* Do document every method you add using [YARD][] annotations. Read the
  [tutorial][YARD-GS] or just look at the existing code for examples.
* Don't touch the `.gemspec`, `VERSION` or `AUTHORS` files. If you need to
  change them, do so on your private branch only.
* Do feel free to add yourself to the `CREDITS` file and the corresponding
  list in the the `README`. Alphabetical order applies.
* Do note that in order for us to merge any non-trivial changes (as a rule
  of thumb, additions larger than about 15 lines of code), we need an
  explicit [public domain dedication][PDD] on record from you,
  which you will be asked to agree to on the first commit to a repo within the organization.
  Note that the agreement applies to all repos in the [Ruby RDF](https://github.com/ruby-rdf/) organization.

### License

MIT License

[W3C-ruby-rdf mailing list]:        https://lists.w3.org/Archives/Public/public-rdf-ruby/
[Pius Uzamere]:     https://pius.me
[Gregg Kellogg]:    https://greggkellogg.net/me
[RDF.rb]:           https://ruby-rdf.github.com/
[YARD]:             https://yardoc.org/
[YARD-GS]:          https://rubydoc.info/docs/yard/file/docs/GettingStarted.md
[PDD]:              https://unlicense.org/#unlicensing-contributions
