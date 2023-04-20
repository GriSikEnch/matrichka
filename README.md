# Matrichka ![forthebadge ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white)

![GitHub lastcommit](https://img.shields.io/github/last-commit/GriSikEnch/matrichka) 
![GitHub size](https://img.shields.io/github/languages/code-size/GriSikEnch/matrichka)
![GitHub languages](https://img.shields.io/github/languages/top/GriSikEnch/matrichka)

#
## Простая реализация класса Матрицы с базовыми операциями  <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Smilies/Alien%20Monster.png" alt="Alien Monster" width="25" height="25" />


#

## Installation <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Symbols/Down%20Arrow.png" alt="Down Arrow" width="25" height="25" />

Склонируйте репозиторий 
```bash
$ git clone https://github.com/GriSikEnch/matrichka.git
```

В корневой директории проекта зарустите bundler и rake
```bash
$ bundle install
$ rake install
```

#
## Usage <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Animals/Lizard.png" alt="Lizard" width="25" height="25" />

### Создание матрицы
```ruby
M = Matr.new([[1,2],[4,5]])
```

### Обращение к матрице по индексу
```ruby
M = Matr.new([[-1,10],[4,77],[-5,-9]])
M[1][0] # => 4
```

### Сложение матриц
```ruby
M = Matr.new([[1, 3], [-2, 3]])
N = Matr.new([[0, 3], [0, 7]])
M + N # => [[1, 6], [-2, 10]]
```

### Умножение матрицы на число
```ruby
M = Matr.new([[1, 3], [-2, 5]])
a = 5
M * a # => [[5, 15], [-10, 25]]
```

### Умножение матриц
```ruby
M = Matr.new([[1, 3], [-2, 3]])
N = Matr.new([[0, 3], [0, 7]])
M * N # => [[0, 24], [0, 15]]
```

### Вычитание строк
```ruby
N = Matr.new([[0, 3], [0, 7]])
N.sub(2, 2, 1) # => [[0, 3], [0, -4]]
```
#
## Tests <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Smilies/Alien.png" alt="Alien" width="25" height="25" />
Запустить тесты можно, находясь в корневом каталоге, командой:
```bash
ruby tests/matrichka_test.rb 
```
#
## Contributing <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Hand%20gestures/Folded%20Hands%20Light%20Skin%20Tone.png" alt="Folded Hands Light Skin Tone" width="25" height="25" />

Bug reports and pull requests are welcome on GitHub at https://github.com/GriSikEnch/matrichka. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/GriSikEnch/matrichka/blob/master/CODE_OF_CONDUCT.md).

#
## Code of Conduct <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Hand%20gestures/Crossed%20Fingers%20Light%20Skin%20Tone.png" alt="Crossed Fingers Light Skin Tone" width="25" height="25" />

Everyone interacting in the Matrichka project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/GriSikEnch/matrichka/blob/master/CODE_OF_CONDUCT.md).
#