# BrainRuby

Welcome to BrainRuby, the esoteric programming language which is basically just Ruby.

Using BrainRuby, you can write any Ruby program using just 10 non-alphanumeric characters:

```
$#<>{}/+`"
```

See the `examples` directory for Hello World and Fizzbuzz programs written in BrainRuby.

You shouldn't try to write BrainRuby yourself.  The compiler will do the hard work for you, turning your Ruby code into BrainRuby code.  To compile, run the generator with 2 arguments:

1. The name of the file to compile
2. The name of the output file

For example:

``` sh
ruby generator.rb /path/to/some/file.rb /path/to/output/file.rb
```

You can then run the output file as usual:

``` sh
ruby /path/to/output/file.rb
```

That's it!  Have fun!
