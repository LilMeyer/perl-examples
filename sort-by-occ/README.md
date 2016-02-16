

# Script to sort words by occurence

```
echo "foo bar baz foo" | ./script.pl
```

Should return 
```
2 foo
1 bar
1 baz
```


```
cat /etc/services | ./script.pl | head -10
```

