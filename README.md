
<div align="center">
  <h2>ft_printf - 42 project</h2>
  <img src="./img/ft_printf.png"  />
  <br>
</div>

![Language](https://img.shields.io/badge/language-C-blue)
![Norminette](https://img.shields.io/badge/norminette-passed-brightgreen)
![42](https://img.shields.io/badge/school-42-black)
![Status](https://img.shields.io/badge/status-completed-brightgreen)

> A custom implementation of the C `printf` function, developed as part of the **École 42** curriculum.  
> The goal is to handle formatted output with various conversions while respecting performance and modularity.

---

## 📖 Table of Contents
- [Description](#-description)
- [Features](#-features)
- [Installation](#-installation)
- [Usage](#-usage)
- [Project Structure](#-project-structure)
- [Examples](#-examples)
- [Roadmap](#-roadmap)
- [Credits](#-credits)
- [License](#-license)

---

## 📝 Description
`ft_printf` is a reimplementation of the standard C `printf` function.  
It handles formatted printing with multiple conversions, including characters, strings, numbers, and hexadecimal values.

This project is key to understanding **variadic functions**, string parsing, and formatted output.

---

## ✨ Features
- ✅ Variadic arguments handling (`stdarg.h`)
- ✅ Supported conversions:
  - `%c` → character
  - `%s` → string
  - `%p` → pointer (hexadecimal)
  - `%d` / `%i` → signed integers
  - `%u` → unsigned integers
  - `%x` / `%X` → hexadecimal (lowercase/uppercase)
  - `%%` → literal `%`
- ✅ Modular design
- ✅ Compatible with `libft`

---

## ⚙️ Installation
Requirements:  
- OS: Linux or macOS  
- C compiler (gcc, clang)  
- `make`

```bash
git clone https://github.com/LogUmi/ft_printf.git
cd libft
make
```
This will generate a `libftprintf.a` file.

---

## 🖥 Usage
To use `ft_printf` in your own project, compile it and link it:

```bash
gcc main.c -L. -lft -o my_program
```
or
```bash
gcc main.c libftprintf.a -o my_program
```

In your source files, include the header:

```c
#include "ft_printf.h"
```

---

## 📂 Project Structure

```
.
├── img/                # Content for README
├── includes/           # Header files (.h)
├── srcs/               # Source code (.c)
├── en.subject.pdf	    # Project 42 subject
├── Makefile
└── README.md
```

---

## 🔎 Examples

```c
#include "ft_printf.h"

int	main(void)
{
	int		i = 0;
	char 	*text = "Hello this is ft_printf typing.";

	i = ft_printf("%s\n", text);
	ft_printf("%i characters printed.\n", i);
	return (0);
}
```
then compile & run:
```bash
gcc main.c libftprintf.a -o my_program
./my_program
```
Example output:
```
Hello this is ft_printf typing.
32 characters printed.
```

---

## 🚀 Roadmap
This project is the original version that was evaluated at 42 and will remain in this state.  

---

## 👤 Credits
Project developed by **Loïc Gérard** – 📧 Contact: lgerard@studend.42perpignan.fr - [École 42 Perpignan](https://42perpignan.fr).

---

## 📜 License
This project is licensed under the MIT License. You are free to use, modify, and distribute it.

> ⚠️ **Note for students**  
> If you are a student at 42 (or elsewhere), it is strongly recommended **not to copy/paste** this code.  
> Instead, try to **write your own solution** — it’s the only way to really learn and succeed.
