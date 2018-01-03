# Aws Clean Tool

This tool cleans up AWS resources.  It does aggresively confirms with "are you sure?" prompts before deleting each resource.

If you want want to bypass the all the prompts you can use the `--sure` flag. Be careful using the `--sure` flag!

## Usage

```sh
aws-clean sg # cleans up unused security groups
aws-clean keypair # cleans up unused keypairs
```

## Install

Add to Gemfile:

```sh
gem "aws-clean"
```

And then run:

```sh
bundle
```

Or install it with the gem command:

```sh
gem install aws-clean
```

## Development

To develop on the bleeding edge:

```sh
git clone https://github.com/tongueroo/aws-clean
git submodule init
git submodule update
```

This tool uses the [aws-inventory](https://github.com/tongueroo/aws-inventory) which is vendorized under vendor/aws-inventory.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am "Add some feature"`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
