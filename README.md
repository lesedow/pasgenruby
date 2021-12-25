# Password Generator in Ruby
A secure password generator made in ruby
## How to generate a password?
1. Firstly, you have to clone this repository using this command in your terminal / powershell / command-prompt

```
git clone https://www.github.com/lesedow/pasgenruby
```

2. After that you have to change your current directory into the folder:
```
cd pasgenruby/
```
3. Then you can run the code using this command:
```
ruby password_generator.rb
```

- Optionally, you can specify the size of your password:
```
ruby password_generator.rb size 10
```

- Or you can exclude special characters (example: []{}?-*#):
```
ruby password_generator.rb size 10 --no-special-chars
```