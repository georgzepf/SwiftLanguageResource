# Swift Language Resource

WIP

### Some Background on Swift as a Language

The tone of the time was that the original iPhone was successful because of Objective-C and doing a new language was not obvious. Being an extension of C, Objective-C is not memory safe and difficult to learn as a language with many sharp edges. Memory safety was one of the big problems, but dealing with that would mean changing the reliance on pointers. Simply put, it wouldn't be Objective-C anymore. Chris Lattner started work on Swift in July of 2010. A few other folks started contributing in earnest late in 2011, and it became a major focus for the Apple Developer Tools group in July 2013.

### Notes on Design Decisions

Swift is not just a statically compiled language, but can also be dynamically compiled or interpreted. The layering of Swift makes this possible. Furthermore, on the UI side of things, Swift has this concept of "progressive disclosure of complexity" or "factoring of complexity" which also was a key point in its design and is not very typical for compiled languages.

### Notes on Compatibility Across Future Swift Versions

> Some of these concepts may not be fully implemented yet. Have a look at the [Swift Evolution](https://github.com/apple/swift-evolution) repository for more information.

#### ABI Stability

Enables binary compatibility between applications and libraries compiled with different Swift versions at run time. This allows OS vendors to embed a Swift standard library and runtime that is compatible with applications built with older or newer versions of Swift. As an example, an app built with Swift 5.0 will run on systems that have a Swift 5 standard library installed, as well as those with Swift 5.1 or Swift 6.

ABI Stability removes the need for apps to distribute their own copy of these libraries on those platforms. It also allows for better decoupling of tools and better integration into the OS.

As Swift is very different from C, it has its own per-platform ABI.

#### Module Stability

Enables compatibility between libraries and compilers with different versions of Swift. As an example, you could build a framework using Swift 6, and that framework’s interface would be readable by both a Swift 6 and a Swift 7 compiler.

#### Library Evolution ("Resilience")

Enables compatibility between applications and different versions of libraries. Take, for example, an app that is built against the original version of a framework, version A. With support for library evolution, it will run on systems that have version A available, but also the newer, improved version B.

### Resources Used in the Making of This Repository

[Swift Language Guide](https://docs.swift.org/swift-book/LanguageGuide/)

[Swift Programming Tutorial – Full Course for Beginners | freeCodeCamp.org](https://www.youtube.com/watch?v=8Xg7E9shq0U)

[Chris Lattner: Compilers, LLVM, Swift, TPU, and ML Accelerators | Lex Fridman Podcast #21](https://www.youtube.com/watch?v=yCd3CzGSte8)

[Chris Lattner's Homepage](https://nondot.org/sabre/)

[Swift ABI Stability Manifesto](https://github.com/apple/swift/blob/main/docs/ABIStabilityManifesto.md)

[ABI Stability and More | Swift Blog](https://www.swift.org/blog/abi-stability-and-more/)
