# spcms

[![Join the chat at https://gitter.im/paralleltree/spcms](https://badges.gitter.im/paralleltree/spcms.svg)](https://gitter.im/paralleltree/spcms?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Simple Programming Contest Management System

## Description

spcms is simple web application that makes holding small programming contest easy.

It only supports judging whether submitted answer is correct.

You can use this web app just by putting input/output files.

## Usage

### Installation

Execute the following commands:

    $ git clone https://github.com/paralleltree/spcms.git
    $ cd spcms
    $ bundle install --path vendor/bundle

### Configuration

Now, put text files for your problems under `problems/n/` directory.

There has to be input and correct output file for `small` and `large` set.

So you have to make four text files whose name is like `(small|large).(in|out)` for each problem.

After putting files, under your `problems` directory will be like below.

```
spcms/
  problems/
    1/
      small.in
      small.out
      large.in
      large.out
```

Having finished the configration, you can execute:

    $ bundle exec ruby app.rb -o production

By default, contestants can access submission page on `http://localhost:4567/submission`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/paralleltree/spcms.

## License

The project is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
