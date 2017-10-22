## fluent-plugin-formatter_pretty_json

[![Build Status](https://travis-ci.org/mia-0032/fluent-plugin-formatter_pretty_json.svg)](https://travis-ci.org/mia-0032/fluent-plugin-formatter_pretty_json)

[Fluentd](http://www.fluentd.org/) formatter plugin for formatting record to pretty json.

## Requirements

| fluent-plugin-formatter_pretty_json | fluentd | ruby |
|------------------------|---------|------|
| >= 1.0.0 | >= v0.14.0 | >= 2.1 |
|  < 1.0.0 | >= v0.12.0 | >= 1.9 |

### Installation

Install by gem:

```shell
$ gem install fluent-plugin-formatter_pretty_json
```

Or if you use td-agent:

```shell
$ flunet-gem install fluent-plugin-formatter_pretty_json
```

### Usage

You simply specify `pretty_json` at `format` config param in formatter available plugins.

Like below:

```
<match test.**>
  type   file
  path   /path/to/file
  format pretty_json
</match>
```

Output is like below:

```
{
  "foo": "bar",
  "test": "hoge"
}
{
  "foo": "bar",
  "test": "hoge"
}
```

Also you can use `include_time_key`, `time_key`, `time_format`,
`include_tag_key`, `tag_key`, `localtime`, `timezone` parameters.

If you use these parameters, you see http://docs.fluentd.org/articles/out_file#format .

### Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
