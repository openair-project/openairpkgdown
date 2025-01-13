
<div align="center">

## **openairpkgdown**
### pkgdown theme for the openair project

</div>

This is a package containing the `{pkgdown}` theme for the **openair** toolkit of R packages.

> [!IMPORTANT]  
> Please do not use this template if you are not contributing to the openair project.

<hr>

## ℹ️ Usage

Please refer to <https://pkgdown.r-lib.org/articles/customise.html#template-packages> for more information. To use this template, a package needs the following line in its `DESCRIPTION`.

```yaml
Config/Needs/website: openair-project/openairpkgdown
```

And this line in its `_pkgdown.yml`.

```yaml
template:
  package: openairpkgdown
```

GitHub actions will then apply this theme. For local compilation you will need to install this package.

```r
pak::pak("openair-project/openairpkgdown")
```

<hr>

🏛️ **openairpkgdown** is primarily maintained by [Jack Davison](https://github.com/jack-davison).

📃 **openairpkgdown** is licensed under the [MIT License](LICENSE.md).

