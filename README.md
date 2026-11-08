# Cameek.W3CssJs.PrismJs

![NuGet](https://img.shields.io/nuget/v/Cameek.W3CssJs.PrismJs?label=NuGet&logo=nuget)
![.NET](https://img.shields.io/badge/.NET-8.0-blue?logo=dotnet)

**Cameek.W3CssJs.PrismJs** is a Razor Class Library (RCL) that contains static assets (CSS and JavaScript) for the [PrismJS](https://prismjs.com/) syntax highlighting engine. It is intended to be referenced from other Blazor or Razor ASP.NET Core projects to enable easy syntax highlighting integration.

This library supports both Blazor WebAssembly and Blazor Server applications.

Bundled upstream version: **PrismJS 1.30.0**, verified on 2026-11-08 as the [latest stable release](https://github.com/PrismJS/prism/releases/latest). The NuGet wrapper has its own version, currently **1.30.6**.

---

## ✨ Features

- Includes PrismJS core + several languages (C#, XML, JSON, JavaScript, Shell, Java)
- Includes PrismJS plugin for **line numbers**
- Packages static assets for use by your own Razor components; no UI components are included
- Ideal for code display, tutorials, or documentation in Blazor apps
- Hosted under `_content/Cameek.W3CssJs.PrismJs` for use via static asset references

---

## 📦 Installation

Install from NuGet:

```bash
dotnet add package Cameek.W3CssJs.PrismJs --version 1.30.6
```

Or reference it in your `.csproj`:

```xml
<PackageReference Include="Cameek.W3CssJs.PrismJs" Version="1.30.6" />
```

---

## 🛠 Usage

1. In your `index.html` (Blazor WebAssembly) or `_Host.cshtml` (Blazor Server), include:

```html
<link href="_content/Cameek.W3CssJs.PrismJs/css/prism.min.css" rel="stylesheet" />
<link href="_content/Cameek.W3CssJs.PrismJs/css/prism-line-numbers.min.css" rel="stylesheet" />

<script src="_content/Cameek.W3CssJs.PrismJs/js/prism.min.js"></script>
<script src="_content/Cameek.W3CssJs.PrismJs/js/prism-line-numbers.min.js"></script>
<script src="_content/Cameek.W3CssJs.PrismJs/js/prism-bash.min.js"></script>
<script src="_content/Cameek.W3CssJs.PrismJs/js/prism-batch.min.js"></script>
<script src="_content/Cameek.W3CssJs.PrismJs/js/prism-c.min.js"></script>
<script src="_content/Cameek.W3CssJs.PrismJs/js/prism-cpp.min.js"></script>
<script src="_content/Cameek.W3CssJs.PrismJs/js/prism-csharp.min.js"></script>
<script src="_content/Cameek.W3CssJs.PrismJs/js/prism-css.min.js"></script>
<script src="_content/Cameek.W3CssJs.PrismJs/js/prism-java.min.js"></script>
<script src="_content/Cameek.W3CssJs.PrismJs/js/prism-javascript.min.js"></script>
<script src="_content/Cameek.W3CssJs.PrismJs/js/prism-json.min.js"></script>
<script src="_content/Cameek.W3CssJs.PrismJs/js/prism-kotlin.min.js"></script>
<script src="_content/Cameek.W3CssJs.PrismJs/js/prism-markup-templating.min.js"></script>
<script src="_content/Cameek.W3CssJs.PrismJs/js/prism-php.min.js"></script>
<script src="_content/Cameek.W3CssJs.PrismJs/js/prism-powershell.min.js"></script>
<script src="_content/Cameek.W3CssJs.PrismJs/js/prism-properties.min.js"></script>
<script src="_content/Cameek.W3CssJs.PrismJs/js/prism-python.min.js"></script>
<script src="_content/Cameek.W3CssJs.PrismJs/js/prism-ruby.min.js"></script>
<script src="_content/Cameek.W3CssJs.PrismJs/js/prism-shell-session.min.js"></script>
<script src="_content/Cameek.W3CssJs.PrismJs/js/prism-sql.min.js"></script>
<script src="_content/Cameek.W3CssJs.PrismJs/js/prism-xml-doc.min.js"></script>
<script src="_content/Cameek.W3CssJs.PrismJs/js/prism-yaml.min.js"></script>
```

Load `prism.min.js` first; it includes the markup, CSS, C-like, and JavaScript grammars. Load C before C++, Bash before shell-session, and markup-templating before PHP. XML/HTML highlighting uses the built-in markup grammar; xml-doc adds .NET XML documentation highlighting.

2. Use PrismJS-friendly markup:

```html
<pre class="line-numbers">
  <code class="language-csharp">
    public class HelloWorld
    {
        public void Greet() => Console.WriteLine("Hello PrismJS");
    }
  </code>
</pre>
```

You may need to call `Prism.highlightAll()` using JS interop when loading dynamic content.

---

## 💡 Tip: Use with Custom Blazor Component

Consider wrapping this with your own Razor component:

```razor
<CodeBlockSyntax Language="csharp">
@("public void Run() { Console.WriteLine(\"OK\"); }")
</CodeBlockSyntax>
```

Where the component applies the `language-*` class and triggers JS highlighting automatically.

---

## Refreshing the bundled assets

The CSS, JavaScript, and upstream license are checked into `wwwroot` and included in the NuGet package. Consumers do not need a CDN connection.

To download the pinned PrismJS 1.30.0 assets again, run:

```bash
bash .scripts/download-prismjs.sh
```

On Windows, run `.scripts\download-prismjs.bat`. Both scripts use the versioned [jsDelivr npm distribution](https://cdn.jsdelivr.net/npm/prismjs@1.30.0/) and the license from the matching [upstream tag](https://github.com/PrismJS/prism/tree/v1.30.0). They download the core bundle, language components and dependencies, eight themes, the line-numbers plugin, and the license.

Build the asset wrapper locally with:

```bash
dotnet pack Cameek.W3CssJs.PrismJs.csproj --configuration Release -p:GeneratePackageOnBuild=false
```

---

## 📄 License

Licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

PrismJS is also MIT-licensed; its bundled license is [wwwroot/LICENSE-prismjs.txt](wwwroot/LICENSE-prismjs.txt).

---

## 👤 Author

Created and maintained by [CameekOrg](https://github.com/cameekorg). This project is intended for use across internal Cameek solutions.

---

## 📬 Related Projects

- [Cameek.W3CssJs.Bootstrap](https://www.nuget.org/packages/Cameek.W3CssJs.Bootstrap) – Bootstrap 5 packaged for Blazor apps
- [PrismJS](https://prismjs.com/) – Lightweight, extensible syntax highlighter

