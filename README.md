# Matrichka

Простая реализация класса Матрицы с базовыми операциями

## Installation

Склонируйте репозиторий
```bash
$ git clone https://github.com/GriSikEnch/matrichka.git
```

В корневой директории проекта зарустите bundler и rake
```bash
$ bundle install
$ rake install
```
TODO: Replace `UPDATE_WITH_YOUR_GEM_NAME_PRIOR_TO_RELEASE_TO_RUBYGEMS_ORG` with your gem name right after releasing it to RubyGems.org. Please do not do it earlier due to security reasons. Alternatively, replace this section with instructions to install your gem from git if you don't plan to release to RubyGems.org.

Install the gem and add to the application's Gemfile by executing:

    $ bundle add UPDATE_WITH_YOUR_GEM_NAME_PRIOR_TO_RELEASE_TO_RUBYGEMS_ORG

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install UPDATE_WITH_YOUR_GEM_NAME_PRIOR_TO_RELEASE_TO_RUBYGEMS_ORG

## Usage

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
### Нахождение максимально элемента в строке

```ruby
M = Matr.new([[1, 3], [-2, 3]])
M.max_element(1) # => 3
```

### Перестановка строк
```ruby
N = Matr.new([[0, 3], [0, 7]])
N.swap(2, 2) # = >  [[0, 7], [0, 3]]
```

### Вычитание строк
```ruby
N = Matr.new([[0, 3], [0, 7]])
N.sub(2, 2, 1) # = > [[0, 3], [0, -4]]
```

### Приведение к треугольной матрице
```ruby
N = Matr.new([[1, 2], [3, 5]])
N.triangle # = > [[0, 1], [3, 5]]
```

### Метод Гаусса
```ruby
N = Matr.new([[0, 3], [0, 7]])
N.gauss # = > x = -3, y = -7
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/GriSikEnch/matrichka. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/GriSikEnch/matrichka/blob/master/CODE_OF_CONDUCT.md).

## Code of Conduct

Everyone interacting in the Matrichka project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/GriSikEnch/matrichka/blob/master/CODE_OF_CONDUCT.md).
