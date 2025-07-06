### Description

A forked version of the [ParKissat-RS SAT solver](https://github.com/shaowei-cai-group/ParKissat-RS) modified for compatibility with **macOS**. 

---

### Highlights

- Fixed function declaration errors by including the appropriate header
- Modified makefile for macOS

---

### Usage

- Make sure you have installed **gcc-15** and **libomp**:

```bash
brew install gcc libomp
```

- Clone the repository

```bash
git clone https://github.com/shahuiz/ParKissat-RS-macOS
cd ParKissat-RS-macOS
```

- Compile

```bash
make clean
make CXX_COMPILE=g++-15 CXX_LINK=g++-15
```
