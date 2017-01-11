# Fizzbuzzer

Write a Fizzbuzz class that should support the following interface:

```
f = Fizzbuzzer.new 4
f.run 14
```

should print

```
1
2
3
Fizz
5
6
7
Fizz
9
10
11
Fizz
13
14
```

## Harder Mode

```
f = Fizzbuzzer.new
f.replace(3, 'Fizz')
f.replace(3, 'Buzz')

puts 'Starting run'
f.run 16
```

should print

```
Starting run
1
2
Fizz
4
Buzz
Fizz
7
8
Fizz
Buzz
11
Fizz
13
14
FizzBuzz
16
```